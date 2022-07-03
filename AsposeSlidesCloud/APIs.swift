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
import FoundationNetworking

open class AsposeSlidesCloudAPI {
    public static var basePath = "https://api.aspose.cloud"
    public static var version = "v3.0"
    public static var authBasePath = "https://api.aspose.cloud"
    public static var appSid = ""
    public static var appKey = ""
    public static var debug = false
    public static var authToken: String? = nil
    public static var credential: URLCredential?
    public static var timeout = 0
    public static var customHeaders: [String:String] = [:]
    public static var requestBuilderFactory: RequestBuilderFactory = AlamofireRequestBuilderFactory()
    
    public static func getBaseUrl() -> String {
        return "\(basePath)/\(version)"
    }
}

open class RequestBuilder<T> {
    var credential: URLCredential?
    var headers: [String:String]
    public let parameters: [String:Any]?
    public let files: [Data]
    public let isBody: Bool
    public let method: String
    public let URLString: String

    /// Optional block to obtain a reference to the request's progress instance when available.
    public var onProgressReady: ((Progress) -> ())?

    required public init(method: String, URLString: String, parameters: [String:Any]?, isBody: Bool, files: [Data] = [Data](), headers: [String:String] = [:]) {
        self.method = method
        self.URLString = URLString
        self.parameters = parameters
        self.isBody = isBody
        self.files = files
        self.headers = headers
    }
    
    open func authenticate(completion: @escaping((_ error: Error?) -> Void)) {
        if AsposeSlidesCloudAPI.appSid != "" && AsposeSlidesCloudAPI.authToken == nil {
            var request = URLRequest(url: URL(string: "\(AsposeSlidesCloudAPI.authBasePath)/connect/token")!)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            let postString = "grant_type=client_credentials&client_id=\(AsposeSlidesCloudAPI.appSid)&client_secret=\(AsposeSlidesCloudAPI.appKey)";
            request.httpBody = postString.data(using: String.Encoding.utf8);

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if error != nil {
                    completion(ErrorResponse.error(401, data, AlamofireDecodableRequestBuilderError.httpError))
                }
                else if (200 ... 299) ~= (response as? HTTPURLResponse)!.statusCode && data != nil {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String : Any]
                        if json != nil {
                            AsposeSlidesCloudAPI.authToken = json!["access_token"] as? String
                        }
                    } catch {
                    }
                    completion(nil)
                } else {
                    completion(ErrorResponse.error(401, data, AlamofireDecodableRequestBuilderError.httpError))
                }
            }
            task.resume()
        }
        else {
            completion(nil)
        }
    }
    
    open func executeAuthorized(_ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) {
        let wasToken = AsposeSlidesCloudAPI.authToken != nil
        var needRepeat = false
        authenticate() { (error) -> Void in
            if (error != nil) {
                completion(nil, error)
            }
            else {
                if AsposeSlidesCloudAPI.authToken != nil {
                    self.headers["Authorization"] = "Bearer " + AsposeSlidesCloudAPI.authToken!
                }
                self.headers["x-aspose-client"] = "swift sdk"
                self.headers["x-aspose-version"] = Configuration.apiVersion
                if AsposeSlidesCloudAPI.timeout > 0 {
                    self.headers["x-aspose-timeout"] = String(AsposeSlidesCloudAPI.timeout)
                }
                for (header, value) in AsposeSlidesCloudAPI.customHeaders {
                    self.headers[header] = value
                }
                self.execute() {
                    (response, error) in
                    if (wasToken && error != nil) {
                        switch (error!) {
                        case ErrorResponse.error(let actualCode, _, _):
                            if (actualCode == 401) {
                                needRepeat = true
                                AsposeSlidesCloudAPI.authToken = nil
                            }
                        default:
                            break;
                        }
                    }
                    if (needRepeat) {
                        self.executeAuthorized(completion)
                    } else {
                        completion(response, error)
                    }
                }
            }
        }
    }
    
    open func execute(_ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) { }

    public func addHeader(name: String, value: String) -> Self {
        if !value.isEmpty {
            headers[name] = value
        }
        return self
    }

    open func addCredential() -> Self {
        self.credential = AsposeSlidesCloudAPI.credential
        return self
    }
}

public protocol RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type
    func getBuilder<T:Decodable>() -> RequestBuilder<T>.Type
}
