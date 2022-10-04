/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------------------------------------------
 */

import Foundation
#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif

class AlamofireRequestBuilderFactory: RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type {
        return AlamofireRequestBuilder<T>.self
    }

    func getBuilder<T:Decodable>() -> RequestBuilder<T>.Type {
        return AlamofireDecodableRequestBuilder<T>.self
    }
}

open class AlamofireRequestBuilder<T>: RequestBuilder<T> {
    required public init(method: String, URLString: String, parameters: [String : Any]?, isBody: Bool, files: [Data] = [Data](), headers: [String : String] = [:]) {
        super.init(method: method, URLString: URLString, parameters: parameters, isBody: isBody, files: files, headers: headers)
    }

    /**
     May be overridden by a subclass if you want to control the Content-Type
     that is given to an uploaded form part.

     Return nil to use the default behavior (inferring the Content-Type from
     the file extension).  Return the desired Content-Type otherwise.
     */
    open func contentTypeForFormPart(fileURL: URL) -> String? {
        return nil
    }

    /**
     May be overridden by a subclass if you want to control the request
     configuration (e.g. to override the cache policy).
     */
    open func makeRequest(method: String, headers: [String:String]) -> URLRequest {
        return URLRequest(url: URL(string: URLString)!)
        //return manager.request(URLString, method: method, parameters: parameters, encoding: encoding, headers: headers)
    }

    override open func execute(_ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) {
        let dataKeys = parameters == nil ? [] : parameters!.filter { $1 is Data }.map { $0.0 }
        let dataCount = dataKeys.count + files.count
        if dataCount > 1 {
            var data = Data()
            let boundary = "7d70fb31-0eb9-4846-9ea8-933dfb69d8f1"
            headers["Content-Type"] = "multipart/form-data; boundary=\(boundary)"
            var fileIndex = 0
            for i in files.indices {
                fileIndex += 1
                putMultipart(&data, boundary, fileIndex, files[i])
            }
            for dataKey in dataKeys {
                var dataIndex = 0
                if dataKey == "data" {
                    fileIndex += 1
                    dataIndex = fileIndex
                }
                putMultipart(&data, boundary, dataIndex, parameters![dataKey] as! Data)
            }
            data.append(Data("\r\n--\(boundary)--\r\n".utf8))
            var request = URLRequest(url: URL(string: URLString)!)
            request.httpBody = data
            processRequest(request: request, completion)
        } else if dataCount == 1 {
            var data = Data()
            if dataKeys.count == 1 {
                let key = dataKeys[0]
                if (key == "data") {
                    headers["Content-Type"] = "application/octet-stream"
                } else {
                    headers["Content-Type"] = "text/json"
                }
                data.append(parameters![key] as! Data)
            } else {
                headers["Content-Type"] = "application/octet-stream"
                data.append(files[0])
            }
            var request = URLRequest(url: URL(string: URLString)!)
            request.httpBody = data
            processRequest(request: request, completion)
        } else {
            let request = makeRequest(method: method, headers: headers)
            processRequest(request: request, completion)
        }
    }
    
    fileprivate func putMultipart(_ data: inout Data, _ boundary: String, _ index: Int, _ part: Data) {
        data.append(Data("\r\n--\(boundary)\r\n".utf8))
        if index > 0 {
            data.append(Data("Content-Disposition: form-data; name=\"file\(index)\";filename=\"file\(index)\"\r\n".utf8))
            data.append(Data("Content-Type: application/octet-stream\r\n".utf8))
        } else {
          data.append(Data("Content-Disposition: form-data; name=\"data\";filename=\r\n".utf8))
          data.append(Data("Content-Type: text/json\r\n".utf8))
        }
        data.append(Data("Content-Length: \(part.count)\r\n".utf8))
        data.append(Data("\r\n".utf8))
        data.append(part)
    }

    fileprivate func processRequest(request: URLRequest, _ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) {
        var r = request
        r.httpMethod = method
        r.httpBody = request.httpBody
        for (key, value) in headers {
            r.setValue(value, forHTTPHeaderField: key)
        }
        if AsposeSlidesCloudAPI.debug {
            print(">>\(r.httpMethod!) \(r)")
            print(r.allHTTPHeaderFields!)
            if r.httpBody != nil {
                let bodyStr = String(data: r.httpBody!, encoding: .utf8)
                if bodyStr != nil {
                    print(bodyStr!)
                }
            }
        }
        let task = URLSession.shared.dataTask(with: r) { data, response, error in
            if AsposeSlidesCloudAPI.debug {
                print("<< \(response!)")
                if (data != nil) {
                    print(String(data: data!, encoding: .utf8)!)
                }
            }
            let dataResponse = response as? HTTPURLResponse
            if dataResponse == nil {
                completion(nil, ErrorResponse.error(500, data, AlamofireDecodableRequestBuilderError.httpError))
            } else {
                if !((200 ... 299) ~= dataResponse!.statusCode) {
                    completion(nil, ErrorResponse.error(dataResponse!.statusCode, data, AlamofireDecodableRequestBuilderError.httpError))
                } else {
                    switch T.self {
                    case is Data.Type:
                        completion(Response(response: dataResponse!, body: data as? T), error)
                    case is Void.Type:
                        completion(Response(response: dataResponse!, body: nil), nil)
                    default:
                        if data == nil {
                            completion(nil, ErrorResponse.error(-1, nil, AlamofireDecodableRequestBuilderError.emptyDataResponse))
                        } else {
                            completion(Response(response: dataResponse!, body: data as? T), nil)
                        }
                    }
                }
            }
        }
        task.resume()
    }

    open func buildHeaders() -> [String: String] {
        var httpHeaders : [String: String] = [:]
        for (key, value) in self.headers {
            httpHeaders[key] = value
        }
        return httpHeaders
    }

    fileprivate func getFileName(fromContentDisposition contentDisposition : String?) -> String? {

        guard let contentDisposition = contentDisposition else {
            return nil
        }

        let items = contentDisposition.components(separatedBy: ";")

        var filename : String? = nil

        for contentItem in items {

            let filenameKey = "filename="
            guard let range = contentItem.range(of: filenameKey) else {
                break
            }

            filename = contentItem
            return filename?
                .replacingCharacters(in: range, with:"")
                .replacingOccurrences(of: "\"", with: "")
                .trimmingCharacters(in: .whitespacesAndNewlines)
        }

        return filename

    }

    fileprivate func getPath(from url : URL) throws -> String {

        guard var path = URLComponents(url: url, resolvingAgainstBaseURL: true)?.path else {
            throw DownloadException.requestMissingPath
        }

        if path.hasPrefix("/") {
            path.remove(at: path.startIndex)
        }

        return path

    }

    fileprivate func getURL(from urlRequest : URLRequest) throws -> URL {

        guard let url = urlRequest.url else {
            throw DownloadException.requestMissingURL
        }

        return url
    }

}

fileprivate enum DownloadException : Error {
    case responseDataMissing
    case responseFailed
    case requestMissing
    case requestMissingPath
    case requestMissingURL
}

public enum AlamofireDecodableRequestBuilderError: Error {
    case emptyDataResponse
    case nilHTTPResponse
    case httpError
    case jsonDecoding(DecodingError)
    case generalError(Error)
}

open class AlamofireDecodableRequestBuilder<T:Decodable>: AlamofireRequestBuilder<T> {

    override fileprivate func processRequest(request: URLRequest, _ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) {
        var r = request
        r.httpMethod = method
        r.httpBody = request.httpBody
        for (key, value) in headers {
            r.setValue(value, forHTTPHeaderField: key)
        }
        if AsposeSlidesCloudAPI.debug {
            print(">>\(r.httpMethod!) \(r)")
            print(r.allHTTPHeaderFields!)
            if r.httpBody != nil {
                let s = String(data: r.httpBody!, encoding: .utf8)
                if s != nil {
                    print(s!)
                } else {
                    print(r.httpBody!)
                }
            }
        }
        let task = URLSession.shared.dataTask(with: r) { data, response, error in
            if AsposeSlidesCloudAPI.debug {
                print("<< \(response!)")
                if data != nil {
                    let s = String(data: data!, encoding: .utf8)
                    if s != nil {
                        print(s!)
                    } else {
                        print(data!)
                    }
                }
            }
            let dataResponse = response as! HTTPURLResponse
            if !((200 ... 299) ~= dataResponse.statusCode) {
                completion(nil, ErrorResponse.error(dataResponse.statusCode, data, AlamofireDecodableRequestBuilderError.httpError))
            } else {
                switch T.self {
                case is Data.Type:
                    completion(Response(response: dataResponse, body: data as? T), error)
                default:
                    if data == nil {
                        completion(nil, ErrorResponse.error(-1, nil, AlamofireDecodableRequestBuilderError.emptyDataResponse))
                    } else {
                        var responseObj: Response<T>? = nil
                        let decodeResult: (decodableObj: Decodable?, error: Error?) = ClassRegistry.getClassInstance(T.self, data!)
                        if decodeResult.error == nil {
                            responseObj = Response(response: dataResponse, body: decodeResult.decodableObj as? T)
                        }
                        completion(responseObj, decodeResult.error)
                    }
                }
            }
        }
        task.resume()
    }
}
