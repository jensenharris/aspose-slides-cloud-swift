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



open class SlidesAPI {
    /**
     Copy file
     - parameter srcPath: Source file path e.g. '/folder/file.ext'
     - parameter destPath: Destination file path
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to copy
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFile(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFileWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName, versionId).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy file
     - PUT /slides/storage/file/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Source file path e.g. '/folder/file.ext'
     - parameter destPath: Destination file path
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to copy
     - returns: RequestBuilder<Void> 
     */
    open class func copyFileWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/file/copy/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Copy file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFile(request: CopyFileRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy file
     - PUT /slides/storage/file/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func copyFileWithRequestBuilder(request: CopyFileRequest) -> RequestBuilder<Void> {
        return copyFileWithRequestBuilder(request.srcPath, request.destPath, request.srcStorageName, request.destStorageName, request.versionId)

    }

    /**
     Copy folder
     - parameter srcPath: Source folder path e.g. '/src'
     - parameter destPath: Destination folder path e.g. '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFolder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFolderWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy folder
     - PUT /slides/storage/folder/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Source folder path e.g. '/src'
     - parameter destPath: Destination folder path e.g. '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - returns: RequestBuilder<Void> 
     */
    open class func copyFolderWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/copy/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Copy folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFolder(request: CopyFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy folder
     - PUT /slides/storage/folder/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func copyFolderWithRequestBuilder(request: CopyFolderRequest) -> RequestBuilder<Void> {
        return copyFolderWithRequestBuilder(request.srcPath, request.destPath, request.srcStorageName, request.destStorageName)

    }

    /**
     Create the folder
     - parameter path: Folder path to create e.g. 'folder_1/folder_2/'
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createFolder(_ path: String, _ storageName: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        createFolderWithRequestBuilder(path, storageName).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Create the folder
     - PUT /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter path: Folder path to create e.g. 'folder_1/folder_2/'
     - parameter storageName: Storage name
     - returns: RequestBuilder<Void> 
     */
    open class func createFolderWithRequestBuilder(_ path: String, _ storageName: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create the folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createFolder(request: CreateFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        createFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Create the folder
     - PUT /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func createFolderWithRequestBuilder(request: CreateFolderRequest) -> RequestBuilder<Void> {
        return createFolderWithRequestBuilder(request.path, request.storageName)

    }

    /**
     Delete a category from a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartCategory(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartCategoryWithRequestBuilder(name, slideIndex, shapeIndex, categoryIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a category from a chart.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartCategoryWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "categoryIndex", categoryIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete a category from a chart.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartCategory(request: DeleteChartCategoryRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartCategoryWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a category from a chart.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartCategoryWithRequestBuilder(request: DeleteChartCategoryRequest) -> RequestBuilder<Chart> {
        return deleteChartCategoryWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.categoryIndex, request.password, request.folder, request.storage)

    }

    /**
     Delete a data point from a chart series.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartDataPoint(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartDataPointWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, pointIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a data point from a chart series.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartDataPointWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "pointIndex", pointIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete a data point from a chart series.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartDataPoint(request: DeleteChartDataPointRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartDataPointWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a data point from a chart series.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartDataPointWithRequestBuilder(request: DeleteChartDataPointRequest) -> RequestBuilder<Chart> {
        return deleteChartDataPointWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.seriesIndex, request.pointIndex, request.password, request.folder, request.storage)

    }

    /**
     Delete a series from a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartSeries(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartSeriesWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a series from a chart.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartSeriesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete a series from a chart.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartSeries(request: DeleteChartSeriesRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartSeriesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a series from a chart.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartSeriesWithRequestBuilder(request: DeleteChartSeriesRequest) -> RequestBuilder<Chart> {
        return deleteChartSeriesWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.seriesIndex, request.password, request.folder, request.storage)

    }

    /**
     Delete file
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to delete
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFile(_ path: String, _ storageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFileWithRequestBuilder(path, storageName, versionId).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete file
     - DELETE /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to delete
     - returns: RequestBuilder<Void> 
     */
    open class func deleteFileWithRequestBuilder(_ path: String, _ storageName: String = "", _ versionId: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/file/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFile(request: DeleteFileRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete file
     - DELETE /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFileWithRequestBuilder(request: DeleteFileRequest) -> RequestBuilder<Void> {
        return deleteFileWithRequestBuilder(request.path, request.storageName, request.versionId)

    }

    /**
     Delete folder
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - parameter recursive: Enable to delete folders, subfolders and files
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFolder(_ path: String, _ storageName: String = "", _ recursive: Bool? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFolderWithRequestBuilder(path, storageName, recursive).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete folder
     - DELETE /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - parameter recursive: Enable to delete folders, subfolders and files
     - returns: RequestBuilder<Void> 
     */
    open class func deleteFolderWithRequestBuilder(_ path: String, _ storageName: String = "", _ recursive: Bool? = nil) -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "recursive": recursive
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFolder(request: DeleteFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete folder
     - DELETE /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFolderWithRequestBuilder(request: DeleteFolderRequest) -> RequestBuilder<Void> {
        return deleteFolderWithRequestBuilder(request.path, request.storageName, request.recursive)

    }

    /**
     Remove notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        deleteNotesSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove notes slide.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slide> 
     */
    open class func deleteNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove notes slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlide(request: DeleteNotesSlideRequest, completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        deleteNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove notes slide.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slide> 
     */
    open class func deleteNotesSlideWithRequestBuilder(request: DeleteNotesSlideRequest) -> RequestBuilder<Slide> {
        return deleteNotesSlideWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteNotesSlideParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteNotesSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideParagraph(request: DeleteNotesSlideParagraphRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteNotesSlideParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteNotesSlideParagraphWithRequestBuilder(request: DeleteNotesSlideParagraphRequest) -> RequestBuilder<Paragraphs> {
        return deleteNotesSlideParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of paragraphs.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideParagraphs(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphs: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteNotesSlideParagraphsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphs, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteNotesSlideParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphs: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": paragraphs, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of paragraphs.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideParagraphs(request: DeleteNotesSlideParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteNotesSlideParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteNotesSlideParagraphsWithRequestBuilder(request: DeleteNotesSlideParagraphsRequest) -> RequestBuilder<Paragraphs> {
        return deleteNotesSlideParagraphsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphs, request.password, request.folder, request.storage)

    }

    /**
     Remove a portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlidePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteNotesSlidePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func deleteNotesSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlidePortion(request: DeleteNotesSlidePortionRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteNotesSlidePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deleteNotesSlidePortionWithRequestBuilder(request: DeleteNotesSlidePortionRequest) -> RequestBuilder<Portions> {
        return deleteNotesSlidePortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of portions.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlidePortions(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteNotesSlidePortionsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portions, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func deleteNotesSlidePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": portions, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of portions.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlidePortions(request: DeleteNotesSlidePortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteNotesSlidePortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deleteNotesSlidePortionsWithRequestBuilder(request: DeleteNotesSlidePortionsRequest) -> RequestBuilder<Portions> {
        return deleteNotesSlidePortionsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portions, request.password, request.folder, request.storage)

    }

    /**
     Remove a shape.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteNotesSlideShapeWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteNotesSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideShape(request: DeleteNotesSlideShapeRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteNotesSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteNotesSlideShapeWithRequestBuilder(request: DeleteNotesSlideShapeRequest) -> RequestBuilder<Shapes> {
        return deleteNotesSlideShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of shapes.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideShapes(_ name: String, _ slideIndex: Int, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteNotesSlideShapesWithRequestBuilder(name, slideIndex, shapes, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteNotesSlideShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of shapes.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideShapes(request: DeleteNotesSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteNotesSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteNotesSlideShapesWithRequestBuilder(request: DeleteNotesSlideShapesRequest) -> RequestBuilder<Shapes> {
        return deleteNotesSlideShapesWithRequestBuilder(request.name, request.slideIndex, request.shapes, request.password, request.folder, request.storage)

    }

    /**
     Remove a paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraph(request: DeleteParagraphRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphWithRequestBuilder(request: DeleteParagraphRequest) -> RequestBuilder<Paragraphs> {
        return deleteParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of paragraphs.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraphs(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphs: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphs, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphs: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": paragraphs, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of paragraphs.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraphs(request: DeleteParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphsWithRequestBuilder(request: DeleteParagraphsRequest) -> RequestBuilder<Paragraphs> {
        return deleteParagraphsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphs, request.password, request.folder, request.storage)

    }

    /**
     Remove a portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortion(request: DeletePortionRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionWithRequestBuilder(request: DeletePortionRequest) -> RequestBuilder<Portions> {
        return deletePortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of portions.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortions(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portions, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": portions, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of portions.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortions(request: DeletePortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionsWithRequestBuilder(request: DeletePortionsRequest) -> RequestBuilder<Portions> {
        return deletePortionsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portions, request.password, request.folder, request.storage)

    }

    /**
     Delete a presentation section.
     - parameter name: Document name.
     - parameter sectionIndex: Section index.
     - parameter withSlides: True to delete the slides related to the deleted section; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSection(_ name: String, _ sectionIndex: Int, _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        deleteSectionWithRequestBuilder(name, sectionIndex, withSlides, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a presentation section.
     - DELETE /slides/{name}/sections/{sectionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter sectionIndex: Section index.
     - parameter withSlides: True to delete the slides related to the deleted section; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func deleteSectionWithRequestBuilder(_ name: String, _ sectionIndex: Int, _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections/{sectionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "sectionIndex", sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withSlides": withSlides, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete a presentation section.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSection(request: DeleteSectionRequest, completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        deleteSectionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a presentation section.
     - DELETE /slides/{name}/sections/{sectionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Sections> 
     */
    open class func deleteSectionWithRequestBuilder(request: DeleteSectionRequest) -> RequestBuilder<Sections> {
        return deleteSectionWithRequestBuilder(request.name, request.sectionIndex, request.withSlides, request.password, request.folder, request.storage)

    }

    /**
     Delete presentation sections.
     - parameter name: Document name.
     - parameter sections: The indices of the sections to be deleted; delete all by default.
     - parameter withSlides: True to delete the slides related to the deleted sections; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSections(_ name: String, _ sections: [Int] = [Int](), _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        deleteSectionsWithRequestBuilder(name, sections, withSlides, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete presentation sections.
     - DELETE /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter sections: The indices of the sections to be deleted; delete all by default.
     - parameter withSlides: True to delete the slides related to the deleted sections; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func deleteSectionsWithRequestBuilder(_ name: String, _ sections: [Int] = [Int](), _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sections": sections, 
            "withSlides": withSlides, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete presentation sections.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSections(request: DeleteSectionsRequest, completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        deleteSectionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete presentation sections.
     - DELETE /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Sections> 
     */
    open class func deleteSectionsWithRequestBuilder(request: DeleteSectionsRequest) -> RequestBuilder<Sections> {
        return deleteSectionsWithRequestBuilder(request.name, request.sections, request.withSlides, request.password, request.folder, request.storage)

    }

    /**
     Remove animation from a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimation(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove animation from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove animation from a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimation(request: DeleteSlideAnimationRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove animation from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationWithRequestBuilder(request: DeleteSlideAnimationRequest) -> RequestBuilder<SlideAnimation> {
        return deleteAnimationWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove an effect from slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationEffect(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationEffectWithRequestBuilder(name, slideIndex, effectIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove an effect from slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationEffect(request: DeleteSlideAnimationEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationEffectWithRequestBuilder(request: DeleteSlideAnimationEffectRequest) -> RequestBuilder<SlideAnimation> {
        return deleteAnimationEffectWithRequestBuilder(request.name, request.slideIndex, request.effectIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove an interactive sequence from slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The index of an interactive sequence to be deleted.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationInteractiveSequence(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationInteractiveSequenceWithRequestBuilder(name, slideIndex, sequenceIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an interactive sequence from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The index of an interactive sequence to be deleted.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationInteractiveSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove an interactive sequence from slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationInteractiveSequence(request: DeleteSlideAnimationInteractiveSequenceRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationInteractiveSequenceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an interactive sequence from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationInteractiveSequenceWithRequestBuilder(request: DeleteSlideAnimationInteractiveSequenceRequest) -> RequestBuilder<SlideAnimation> {
        return deleteAnimationInteractiveSequenceWithRequestBuilder(request.name, request.slideIndex, request.sequenceIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove an effect from slide animation interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: Interactive sequence index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, sequenceIndex, effectIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation interactive sequence.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: Interactive sequence index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove an effect from slide animation interactive sequence.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationInteractiveSequenceEffect(request: DeleteSlideAnimationInteractiveSequenceEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation interactive sequence.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: DeleteSlideAnimationInteractiveSequenceEffectRequest) -> RequestBuilder<SlideAnimation> {
        return deleteAnimationInteractiveSequenceEffectWithRequestBuilder(request.name, request.slideIndex, request.sequenceIndex, request.effectIndex, request.password, request.folder, request.storage)

    }

    /**
     Clear all interactive sequences from slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationInteractiveSequences(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationInteractiveSequencesWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear all interactive sequences from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationInteractiveSequencesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Clear all interactive sequences from slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationInteractiveSequences(request: DeleteSlideAnimationInteractiveSequencesRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationInteractiveSequencesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear all interactive sequences from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationInteractiveSequencesWithRequestBuilder(request: DeleteSlideAnimationInteractiveSequencesRequest) -> RequestBuilder<SlideAnimation> {
        return deleteAnimationInteractiveSequencesWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Clear main sequence in slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationMainSequence(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationMainSequenceWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear main sequence in slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationMainSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Clear main sequence in slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationMainSequence(request: DeleteSlideAnimationMainSequenceRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationMainSequenceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear main sequence in slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationMainSequenceWithRequestBuilder(request: DeleteSlideAnimationMainSequenceRequest) -> RequestBuilder<SlideAnimation> {
        return deleteAnimationMainSequenceWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Delete a presentation slide by index.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a presentation slide by index.
     - DELETE /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete a presentation slide by index.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideByIndex(request: DeleteSlideByIndexRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlideByIndexWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a presentation slide by index.
     - DELETE /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlideByIndexWithRequestBuilder(request: DeleteSlideByIndexRequest) -> RequestBuilder<Slides> {
        return deleteSlideWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a shape.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteShapeWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideShape(request: DeleteSlideShapeRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSlideShapeWithRequestBuilder(request: DeleteSlideShapeRequest) -> RequestBuilder<Shapes> {
        return deleteShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of shapes.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShapes(_ name: String, _ slideIndex: Int, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteShapesWithRequestBuilder(name, slideIndex, shapes, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of shapes.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideShapes(request: DeleteSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSlideShapesWithRequestBuilder(request: DeleteSlideShapesRequest) -> RequestBuilder<Shapes> {
        return deleteShapesWithRequestBuilder(request.name, request.slideIndex, request.shapes, request.password, request.folder, request.storage)

    }

    /**
     Remove a shape (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshape(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSubshapeWithRequestBuilder(name, slideIndex, path, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSubshapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a shape (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideSubshape(request: DeleteSlideSubshapeRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSlideSubshapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSlideSubshapeWithRequestBuilder(request: DeleteSlideSubshapeRequest) -> RequestBuilder<Shapes> {
        return deleteSubshapeWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of shapes (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapes(_ name: String, _ slideIndex: Int, _ path: String, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSubshapesWithRequestBuilder(name, slideIndex, path, shapes, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSubshapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of shapes (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideSubshapes(request: DeleteSlideSubshapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSlideSubshapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSlideSubshapesWithRequestBuilder(request: DeleteSlideSubshapesRequest) -> RequestBuilder<Shapes> {
        return deleteSubshapesWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapes, request.password, request.folder, request.storage)

    }

    /**
     Delete presentation slides.
     - parameter name: Document name.
     - parameter slides: The indices of the slides to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlides(_ name: String, _ slides: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlidesWithRequestBuilder(name, slides, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete presentation slides.
     - DELETE /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slides: The indices of the slides to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlidesWithRequestBuilder(_ name: String, _ slides: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slides": slides, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete presentation slides.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesCleanSlidesList(request: DeleteSlidesCleanSlidesListRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlidesCleanSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete presentation slides.
     - DELETE /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlidesCleanSlidesListWithRequestBuilder(request: DeleteSlidesCleanSlidesListRequest) -> RequestBuilder<Slides> {
        return deleteSlidesWithRequestBuilder(request.name, request.slides, request.password, request.folder, request.storage)

    }

    /**
     Clean document properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteDocumentPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clean document properties.
     - DELETE /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteDocumentPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Clean document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesDocumentProperties(request: DeleteSlidesDocumentPropertiesRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteSlidesDocumentPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clean document properties.
     - DELETE /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteSlidesDocumentPropertiesWithRequestBuilder(request: DeleteSlidesDocumentPropertiesRequest) -> RequestBuilder<DocumentProperties> {
        return deleteDocumentPropertiesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Delete document property.
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentProperty(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteDocumentPropertyWithRequestBuilder(name, propertyName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete document property.
     - DELETE /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteDocumentPropertyWithRequestBuilder(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties/{propertyName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "propertyName", propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete document property.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesDocumentProperty(request: DeleteSlidesDocumentPropertyRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteSlidesDocumentPropertyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete document property.
     - DELETE /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteSlidesDocumentPropertyWithRequestBuilder(request: DeleteSlidesDocumentPropertyRequest) -> RequestBuilder<DocumentProperties> {
        return deleteDocumentPropertyWithRequestBuilder(request.name, request.propertyName, request.password, request.folder, request.storage)

    }

    /**
     Remove background from a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBackground(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        deleteBackgroundWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove background from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func deleteBackgroundWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/background"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove background from a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesSlideBackground(request: DeleteSlidesSlideBackgroundRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        deleteSlidesSlideBackgroundWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove background from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func deleteSlidesSlideBackgroundWithRequestBuilder(request: DeleteSlidesSlideBackgroundRequest) -> RequestBuilder<SlideBackground> {
        return deleteBackgroundWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a paragraph (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapeParagraph(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteSubshapeParagraphWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteSubshapeParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a paragraph (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapeParagraph(request: DeleteSubshapeParagraphRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteSubshapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteSubshapeParagraphWithRequestBuilder(request: DeleteSubshapeParagraphRequest) -> RequestBuilder<Paragraphs> {
        return deleteSubshapeParagraphWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of paragraphs (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapeParagraphs(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphs: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteSubshapeParagraphsWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphs, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteSubshapeParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphs: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": paragraphs, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of paragraphs (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapeParagraphs(request: DeleteSubshapeParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteSubshapeParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteSubshapeParagraphsWithRequestBuilder(request: DeleteSubshapeParagraphsRequest) -> RequestBuilder<Paragraphs> {
        return deleteSubshapeParagraphsWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphs, request.password, request.folder, request.storage)

    }

    /**
     Remove a portion (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapePortion(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteSubshapePortionWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func deleteSubshapePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a portion (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapePortion(request: DeleteSubshapePortionRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteSubshapePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deleteSubshapePortionWithRequestBuilder(request: DeleteSubshapePortionRequest) -> RequestBuilder<Portions> {
        return deleteSubshapePortionWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.password, request.folder, request.storage)

    }

    /**
     Remove a range of portions (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapePortions(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteSubshapePortionsWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, portions, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func deleteSubshapePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": portions, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Remove a range of portions (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubshapePortions(request: DeleteSubshapePortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteSubshapePortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions (for smart art and group shapes).
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deleteSubshapePortionsWithRequestBuilder(request: DeleteSubshapePortionsRequest) -> RequestBuilder<Portions> {
        return deleteSubshapePortionsWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.portions, request.password, request.folder, request.storage)

    }

    /**
     Download file
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to download
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadFile(_ path: String, _ storageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadFileWithRequestBuilder(path, storageName, versionId).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Download file
     - GET /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to download
     - returns: RequestBuilder<Data> 
     */
    open class func downloadFileWithRequestBuilder(_ path: String, _ storageName: String = "", _ versionId: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/storage/file/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadFile(request: DownloadFileRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Download file
     - GET /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func downloadFileWithRequestBuilder(request: DownloadFileRequest) -> RequestBuilder<Data> {
        return downloadFileWithRequestBuilder(request.path, request.storageName, request.versionId)

    }

    /**
     Get disc usage
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDiscUsage(_ storageName: String = "", completion: @escaping ((_ data: DiscUsage?,_ error: Error?) -> Void)) {
        getDiscUsageWithRequestBuilder(storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get disc usage
     - GET /slides/storage/disc
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "UsedSize" : 0,
  "TotalSize" : 6
}}]
     - parameter storageName: Storage name
     - returns: RequestBuilder<DiscUsage> 
     */
    open class func getDiscUsageWithRequestBuilder(_ storageName: String = "") -> RequestBuilder<DiscUsage> {
        let methodPath = "/slides/storage/disc"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<DiscUsage>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get disc usage
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDiscUsage(request: GetDiscUsageRequest, completion: @escaping ((_ data: DiscUsage?,_ error: Error?) -> Void)) {
        getDiscUsageWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get disc usage
     - GET /slides/storage/disc
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "UsedSize" : 0,
  "TotalSize" : 6
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DiscUsage> 
     */
    open class func getDiscUsageWithRequestBuilder(request: GetDiscUsageRequest) -> RequestBuilder<DiscUsage> {
        return getDiscUsageWithRequestBuilder(request.storageName)

    }

    /**
     Get file versions
     - parameter path: File path e.g. '/file.ext'
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileVersions(_ path: String, _ storageName: String = "", completion: @escaping ((_ data: FileVersions?,_ error: Error?) -> Void)) {
        getFileVersionsWithRequestBuilder(path, storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get file versions
     - GET /slides/storage/version/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ "", "" ]
}}]
     - parameter path: File path e.g. '/file.ext'
     - parameter storageName: Storage name
     - returns: RequestBuilder<FileVersions> 
     */
    open class func getFileVersionsWithRequestBuilder(_ path: String, _ storageName: String = "") -> RequestBuilder<FileVersions> {
        var methodPath = "/slides/storage/version/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<FileVersions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get file versions
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileVersions(request: GetFileVersionsRequest, completion: @escaping ((_ data: FileVersions?,_ error: Error?) -> Void)) {
        getFileVersionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get file versions
     - GET /slides/storage/version/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ "", "" ]
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FileVersions> 
     */
    open class func getFileVersionsWithRequestBuilder(request: GetFileVersionsRequest) -> RequestBuilder<FileVersions> {
        return getFileVersionsWithRequestBuilder(request.path, request.storageName)

    }

    /**
     Get all files and folders within a folder
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFilesList(_ path: String, _ storageName: String = "", completion: @escaping ((_ data: FilesList?,_ error: Error?) -> Void)) {
        getFilesListWithRequestBuilder(path, storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all files and folders within a folder
     - GET /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  }, {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  } ]
}}]
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - returns: RequestBuilder<FilesList> 
     */
    open class func getFilesListWithRequestBuilder(_ path: String, _ storageName: String = "") -> RequestBuilder<FilesList> {
        var methodPath = "/slides/storage/folder/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<FilesList>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all files and folders within a folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFilesList(request: GetFilesListRequest, completion: @escaping ((_ data: FilesList?,_ error: Error?) -> Void)) {
        getFilesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all files and folders within a folder
     - GET /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  }, {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  } ]
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FilesList> 
     */
    open class func getFilesListWithRequestBuilder(request: GetFilesListRequest) -> RequestBuilder<FilesList> {
        return getFilesListWithRequestBuilder(request.path, request.storageName)

    }

    /**
     Read presentation layoutSlide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        getLayoutSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlide info.
     - GET /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func getLayoutSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlide> {
        var methodPath = "/slides/{name}/layoutSlides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation layoutSlide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlide(request: GetLayoutSlideRequest, completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        getLayoutSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlide info.
     - GET /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func getLayoutSlideWithRequestBuilder(request: GetLayoutSlideRequest) -> RequestBuilder<LayoutSlide> {
        return getLayoutSlideWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read presentation layoutSlides info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlides(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlides?,_ error: Error?) -> Void)) {
        getLayoutSlidesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlides info.
     - GET /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlides> 
     */
    open class func getLayoutSlidesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlides> {
        var methodPath = "/slides/{name}/layoutSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation layoutSlides info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlidesList(request: GetLayoutSlidesListRequest, completion: @escaping ((_ data: LayoutSlides?,_ error: Error?) -> Void)) {
        getLayoutSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlides info.
     - GET /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlides> 
     */
    open class func getLayoutSlidesListWithRequestBuilder(request: GetLayoutSlidesListRequest) -> RequestBuilder<LayoutSlides> {
        return getLayoutSlidesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read presentation masterSlide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        getMasterSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlide info.
     - GET /slides/{name}/masterSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<MasterSlide> 
     */
    open class func getMasterSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<MasterSlide> {
        var methodPath = "/slides/{name}/masterSlides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation masterSlide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlide(request: GetMasterSlideRequest, completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        getMasterSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlide info.
     - GET /slides/{name}/masterSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<MasterSlide> 
     */
    open class func getMasterSlideWithRequestBuilder(request: GetMasterSlideRequest) -> RequestBuilder<MasterSlide> {
        return getMasterSlideWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read presentation masterSlides info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlides(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: MasterSlides?,_ error: Error?) -> Void)) {
        getMasterSlidesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlides info.
     - GET /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<MasterSlides> 
     */
    open class func getMasterSlidesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<MasterSlides> {
        var methodPath = "/slides/{name}/masterSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation masterSlides info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlidesList(request: GetMasterSlidesListRequest, completion: @escaping ((_ data: MasterSlides?,_ error: Error?) -> Void)) {
        getMasterSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlides info.
     - GET /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<MasterSlides> 
     */
    open class func getMasterSlidesListWithRequestBuilder(request: GetMasterSlidesListRequest) -> RequestBuilder<MasterSlides> {
        return getMasterSlidesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read notes slide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        getNotesSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read notes slide info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func getNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read notes slide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlide(request: GetNotesSlideRequest, completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        getNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read notes slide info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlide> 
     */
    open class func getNotesSlideWithRequestBuilder(request: GetNotesSlideRequest) -> RequestBuilder<NotesSlide> {
        return getNotesSlideWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Get info whether a notes slide exists.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func notesSlideExists(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: EntityExists?,_ error: Error?) -> Void)) {
        notesSlideExistsWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get info whether a notes slide exists.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<EntityExists> 
     */
    open class func notesSlideExistsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<EntityExists> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/exist"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EntityExists>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get info whether a notes slide exists.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideExists(request: GetNotesSlideExistsRequest, completion: @escaping ((_ data: EntityExists?,_ error: Error?) -> Void)) {
        getNotesSlideExistsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get info whether a notes slide exists.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<EntityExists> 
     */
    open class func getNotesSlideExistsWithRequestBuilder(request: GetNotesSlideExistsRequest) -> RequestBuilder<EntityExists> {
        return notesSlideExistsWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Get header/footer info for the notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlideHeaderFooter?,_ error: Error?) -> Void)) {
        getNotesSlideHeaderFooterWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get header/footer info for the notes slide.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlideHeaderFooter> 
     */
    open class func getNotesSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlideHeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlideHeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get header/footer info for the notes slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideHeaderFooter(request: GetNotesSlideHeaderFooterRequest, completion: @escaping ((_ data: NotesSlideHeaderFooter?,_ error: Error?) -> Void)) {
        getNotesSlideHeaderFooterWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get header/footer info for the notes slide.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlideHeaderFooter> 
     */
    open class func getNotesSlideHeaderFooterWithRequestBuilder(request: GetNotesSlideHeaderFooterRequest) -> RequestBuilder<NotesSlideHeaderFooter> {
        return getNotesSlideHeaderFooterWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide shape info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getNotesSlideShapeWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getNotesSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide shape info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShape(request: GetNotesSlideShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getNotesSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getNotesSlideShapeWithRequestBuilder(request: GetNotesSlideShapeRequest) -> RequestBuilder<ShapeBase> {
        return getNotesSlideShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Read shape paragraph info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getNotesSlideParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func getNotesSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read shape paragraph info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapeParagraph(request: GetNotesSlideShapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getNotesSlideShapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func getNotesSlideShapeParagraphWithRequestBuilder(request: GetNotesSlideShapeParagraphRequest) -> RequestBuilder<Paragraph> {
        return getNotesSlideParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Read shape paragraphs info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideParagraphs(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getNotesSlideParagraphsWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getNotesSlideParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read shape paragraphs info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapeParagraphs(request: GetNotesSlideShapeParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getNotesSlideShapeParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getNotesSlideShapeParagraphsWithRequestBuilder(request: GetNotesSlideShapeParagraphsRequest) -> RequestBuilder<Paragraphs> {
        return getNotesSlideParagraphsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Read paragraph portion info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlidePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getNotesSlidePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func getNotesSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read paragraph portion info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapePortion(request: GetNotesSlideShapePortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getNotesSlideShapePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func getNotesSlideShapePortionWithRequestBuilder(request: GetNotesSlideShapePortionRequest) -> RequestBuilder<Portion> {
        return getNotesSlidePortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.password, request.folder, request.storage)

    }

    /**
     Read paragraph portions info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlidePortions(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getNotesSlidePortionsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func getNotesSlidePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read paragraph portions info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapePortions(request: GetNotesSlideShapePortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getNotesSlideShapePortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func getNotesSlideShapePortionsWithRequestBuilder(request: GetNotesSlideShapePortionsRequest) -> RequestBuilder<Portions> {
        return getNotesSlidePortionsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide shapes info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapes(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getNotesSlideShapesWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func getNotesSlideShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide shapes info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapes(request: GetNotesSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getNotesSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func getNotesSlideShapesWithRequestBuilder(request: GetNotesSlideShapesRequest) -> RequestBuilder<Shapes> {
        return getNotesSlideShapesWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_getNotesSlideWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Convert notes slide to the specified image format.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: Output file width.
     - parameter height: Output file height.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadNotesSlide(_ name: String, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadNotesSlideWithRequestBuilder(name, slideIndex, format, width, height, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert notes slide to the specified image format.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: Output file width.
     - parameter height: Output file height.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Convert notes slide to the specified image format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideWithFormat(request: GetNotesSlideWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getNotesSlideWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert notes slide to the specified image format.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func getNotesSlideWithFormatWithRequestBuilder(request: GetNotesSlideWithFormatRequest) -> RequestBuilder<Data> {
        return downloadNotesSlideWithRequestBuilder(request.name, request.slideIndex, request.format, request.width, request.height, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Read paragraph portion info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getPortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func getPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read paragraph portion info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphPortion(request: GetParagraphPortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getParagraphPortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func getParagraphPortionWithRequestBuilder(request: GetParagraphPortionRequest) -> RequestBuilder<Portion> {
        return getPortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.password, request.folder, request.storage)

    }

    /**
     Read paragraph portions info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPortions(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getPortionsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func getPortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read paragraph portions info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphPortions(request: GetParagraphPortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getParagraphPortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func getParagraphPortionsWithRequestBuilder(request: GetParagraphPortionsRequest) -> RequestBuilder<Portions> {
        return getPortionsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Read presentation sections info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSections(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        getSectionsWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation sections info.
     - GET /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func getSectionsWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation sections info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSections(request: GetSectionsRequest, completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        getSectionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation sections info.
     - GET /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Sections> 
     */
    open class func getSectionsWithRequestBuilder(request: GetSectionsRequest) -> RequestBuilder<Sections> {
        return getSectionsWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read slide animation effects.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index. If specified, only effects related to that shape are returned.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAnimation(_ name: String, _ slideIndex: Int, _ shapeIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        getAnimationWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide animation effects.
     - GET /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index. If specified, only effects related to that shape are returned.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func getAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeIndex": shapeIndex?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide animation effects.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideAnimation(request: GetSlideAnimationRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        getSlideAnimationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide animation effects.
     - GET /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func getSlideAnimationWithRequestBuilder(request: GetSlideAnimationRequest) -> RequestBuilder<SlideAnimation> {
        return getAnimationWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Get footer info for the slide.
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: HeaderFooter?,_ error: Error?) -> Void)) {
        getSlideHeaderFooterWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get footer info for the slide.
     - GET /slides/{name}/slides/{slideIndex}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<HeaderFooter> 
     */
    open class func getSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<HeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<HeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get footer info for the slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideHeaderFooter(request: GetSlideHeaderFooterRequest, completion: @escaping ((_ data: HeaderFooter?,_ error: Error?) -> Void)) {
        getSlideHeaderFooterWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get footer info for the slide.
     - GET /slides/{name}/slides/{slideIndex}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<HeaderFooter> 
     */
    open class func getSlideHeaderFooterWithRequestBuilder(request: GetSlideHeaderFooterRequest) -> RequestBuilder<HeaderFooter> {
        return getSlideHeaderFooterWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide shape info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getShapeWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide shape info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShape(request: GetSlideShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getSlideShapeWithRequestBuilder(request: GetSlideShapeRequest) -> RequestBuilder<ShapeBase> {
        return getShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Read shape paragraph info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func getParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read shape paragraph info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShapeParagraph(request: GetSlideShapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getSlideShapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func getSlideShapeParagraphWithRequestBuilder(request: GetSlideShapeParagraphRequest) -> RequestBuilder<Paragraph> {
        return getParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Read shape paragraphs info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphs(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getParagraphsWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read shape paragraphs info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShapeParagraphs(request: GetSlideShapeParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getSlideShapeParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getSlideShapeParagraphsWithRequestBuilder(request: GetSlideShapeParagraphsRequest) -> RequestBuilder<Paragraphs> {
        return getParagraphsWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide shapes info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShapes(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getShapesWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func getShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide shapes info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShapes(request: GetSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func getSlideShapesWithRequestBuilder(request: GetSlideShapesRequest) -> RequestBuilder<Shapes> {
        return getShapesWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide shape info (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshape(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getSubshapeWithRequestBuilder(name, slideIndex, path, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getSubshapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide shape info (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideSubshape(request: GetSlideSubshapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getSlideSubshapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getSlideSubshapeWithRequestBuilder(request: GetSlideSubshapeRequest) -> RequestBuilder<ShapeBase> {
        return getSubshapeWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Read shape paragraph info (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshapeParagraph(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getSubshapeParagraphWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func getSubshapeParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read shape paragraph info (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideSubshapeParagraph(request: GetSlideSubshapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getSlideSubshapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func getSlideSubshapeParagraphWithRequestBuilder(request: GetSlideSubshapeParagraphRequest) -> RequestBuilder<Paragraph> {
        return getSubshapeParagraphWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Read shape paragraphs info (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshapeParagraphs(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getSubshapeParagraphsWithRequestBuilder(name, slideIndex, path, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getSubshapeParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read shape paragraphs info (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideSubshapeParagraphs(request: GetSlideSubshapeParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getSlideSubshapeParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getSlideSubshapeParagraphsWithRequestBuilder(request: GetSlideSubshapeParagraphsRequest) -> RequestBuilder<Paragraphs> {
        return getSubshapeParagraphsWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide shapes info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path (for smart art and group shapes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshapes(_ name: String, _ slideIndex: Int, _ path: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getSubshapesWithRequestBuilder(name, slideIndex, path, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path (for smart art and group shapes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func getSubshapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide shapes info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideSubshapes(request: GetSlideSubshapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getSlideSubshapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func getSlideSubshapesWithRequestBuilder(request: GetSlideSubshapesRequest) -> RequestBuilder<Shapes> {
        return getSubshapesWithRequestBuilder(request.name, request.slideIndex, request.path, request.password, request.folder, request.storage)

    }

    /**
     Get API info.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getApiInfo(completion: @escaping ((_ data: ApiInfo?,_ error: Error?) -> Void)) {
        getApiInfoWithRequestBuilder().executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get API info.
     - GET /slides/info
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Version" : "Version",
  "Name" : "Name"
}}]
     - returns: RequestBuilder<ApiInfo> 
     */
    open class func getApiInfoWithRequestBuilder() -> RequestBuilder<ApiInfo> {
        let methodPath = "/slides/info"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiInfo>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get API info.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesApiInfo(completion: @escaping ((_ data: ApiInfo?,_ error: Error?) -> Void)) {
        getSlidesApiInfoWithRequestBuilder().executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get API info.
     - GET /slides/info
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Version" : "Version",
  "Name" : "Name"
}}]

     - returns: RequestBuilder<ApiInfo> 
     */
    open class func getSlidesApiInfoWithRequestBuilder() -> RequestBuilder<ApiInfo> {
        return getApiInfoWithRequestBuilder()

    }

    /**
     Read presentation info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Documentstorage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPresentation(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        getPresentationWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation info.
     - GET /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Documentstorage.
     - returns: RequestBuilder<Document> 
     */
    open class func getPresentationWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesDocument(request: GetSlidesDocumentRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        getSlidesDocumentWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation info.
     - GET /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func getSlidesDocumentWithRequestBuilder(request: GetSlidesDocumentRequest) -> RequestBuilder<Document> {
        return getPresentationWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read presentation document properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        getDocumentPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document properties.
     - GET /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func getDocumentPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesDocumentProperties(request: GetSlidesDocumentPropertiesRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        getSlidesDocumentPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document properties.
     - GET /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func getSlidesDocumentPropertiesWithRequestBuilder(request: GetSlidesDocumentPropertiesRequest) -> RequestBuilder<DocumentProperties> {
        return getDocumentPropertiesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read presentation document property.
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentProperty(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        getDocumentPropertyWithRequestBuilder(name, propertyName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document property.
     - GET /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func getDocumentPropertyWithRequestBuilder(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperty> {
        var methodPath = "/slides/{name}/documentproperties/{propertyName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "propertyName", propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation document property.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesDocumentProperty(request: GetSlidesDocumentPropertyRequest, completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        getSlidesDocumentPropertyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document property.
     - GET /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func getSlidesDocumentPropertyWithRequestBuilder(request: GetSlidesDocumentPropertyRequest) -> RequestBuilder<DocumentProperty> {
        return getDocumentPropertyWithRequestBuilder(request.name, request.propertyName, request.password, request.folder, request.storage)

    }

    /**
     Get image binary data.
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImageDefaultFormat(_ name: String, _ index: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageDefaultFormatWithRequestBuilder(name, index, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image binary data.
     - GET /slides/{name}/images/{index}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageDefaultFormatWithRequestBuilder(_ name: String, _ index: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/{index}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get image binary data.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesImageWithDefaultFormat(request: GetSlidesImageWithDefaultFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getSlidesImageWithDefaultFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image binary data.
     - GET /slides/{name}/images/{index}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func getSlidesImageWithDefaultFormatWithRequestBuilder(request: GetSlidesImageWithDefaultFormatRequest) -> RequestBuilder<Data> {
        return downloadImageDefaultFormatWithRequestBuilder(request.name, request.index, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_getSlidesImageWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get image in specified format.
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImage(_ name: String, _ index: Int, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageWithRequestBuilder(name, index, format, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image in specified format.
     - GET /slides/{name}/images/{index}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageWithRequestBuilder(_ name: String, _ index: Int, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/{index}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get image in specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesImageWithFormat(request: GetSlidesImageWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getSlidesImageWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image in specified format.
     - GET /slides/{name}/images/{index}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func getSlidesImageWithFormatWithRequestBuilder(request: GetSlidesImageWithFormatRequest) -> RequestBuilder<Data> {
        return downloadImageWithRequestBuilder(request.name, request.index, request.format, request.password, request.folder, request.storage)

    }

    /**
     Read presentation images info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPresentationImages(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getPresentationImagesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation images info.
     - GET /slides/{name}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Images> 
     */
    open class func getPresentationImagesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Images> {
        var methodPath = "/slides/{name}/images"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation images info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesImages(request: GetSlidesImagesRequest, completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getSlidesImagesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation images info.
     - GET /slides/{name}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Images> 
     */
    open class func getSlidesImagesWithRequestBuilder(request: GetSlidesImagesRequest) -> RequestBuilder<Images> {
        return getPresentationImagesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read slide placeholder info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter placeholderIndex: Placeholder index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlaceholder(_ name: String, _ slideIndex: Int, _ placeholderIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Placeholder?,_ error: Error?) -> Void)) {
        getPlaceholderWithRequestBuilder(name, slideIndex, placeholderIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholder info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter placeholderIndex: Placeholder index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Placeholder> 
     */
    open class func getPlaceholderWithRequestBuilder(_ name: String, _ slideIndex: Int, _ placeholderIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Placeholder> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "placeholderIndex", placeholderIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Placeholder>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide placeholder info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesPlaceholder(request: GetSlidesPlaceholderRequest, completion: @escaping ((_ data: Placeholder?,_ error: Error?) -> Void)) {
        getSlidesPlaceholderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholder info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Placeholder> 
     */
    open class func getSlidesPlaceholderWithRequestBuilder(request: GetSlidesPlaceholderRequest) -> RequestBuilder<Placeholder> {
        return getPlaceholderWithRequestBuilder(request.name, request.slideIndex, request.placeholderIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide placeholders info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlaceholders(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Placeholders?,_ error: Error?) -> Void)) {
        getPlaceholdersWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholders info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Placeholders> 
     */
    open class func getPlaceholdersWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Placeholders> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/placeholders"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Placeholders>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide placeholders info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesPlaceholders(request: GetSlidesPlaceholdersRequest, completion: @escaping ((_ data: Placeholders?,_ error: Error?) -> Void)) {
        getSlidesPlaceholdersWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholders info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Placeholders> 
     */
    open class func getSlidesPlaceholdersWithRequestBuilder(request: GetSlidesPlaceholdersRequest) -> RequestBuilder<Placeholders> {
        return getPlaceholdersWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Extract presentation text items.
     - parameter name: Document name.
     - parameter withEmpty: True to incude empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPresentationTextItems(_ name: String, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getPresentationTextItemsWithRequestBuilder(name, withEmpty, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract presentation text items.
     - GET /slides/{name}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter withEmpty: True to incude empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TextItems> 
     */
    open class func getPresentationTextItemsWithRequestBuilder(_ name: String, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TextItems> {
        var methodPath = "/slides/{name}/textItems"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": withEmpty, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Extract presentation text items.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesPresentationTextItems(request: GetSlidesPresentationTextItemsRequest, completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getSlidesPresentationTextItemsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract presentation text items.
     - GET /slides/{name}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<TextItems> 
     */
    open class func getSlidesPresentationTextItemsWithRequestBuilder(request: GetSlidesPresentationTextItemsRequest) -> RequestBuilder<TextItems> {
        return getPresentationTextItemsWithRequestBuilder(request.name, request.withEmpty, request.password, request.folder, request.storage)

    }

    /**
     Read presentation protection properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProtectionProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ProtectionProperties?,_ error: Error?) -> Void)) {
        getProtectionPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation protection properties.
     - GET /slides/{name}/protectionProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ProtectionProperties> 
     */
    open class func getProtectionPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ProtectionProperties> {
        var methodPath = "/slides/{name}/protectionProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProtectionProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation protection properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesProtectionProperties(request: GetSlidesProtectionPropertiesRequest, completion: @escaping ((_ data: ProtectionProperties?,_ error: Error?) -> Void)) {
        getSlidesProtectionPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation protection properties.
     - GET /slides/{name}/protectionProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ProtectionProperties> 
     */
    open class func getSlidesProtectionPropertiesWithRequestBuilder(request: GetSlidesProtectionPropertiesRequest) -> RequestBuilder<ProtectionProperties> {
        return getProtectionPropertiesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read presentation slide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        getSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide info.
     - GET /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slide> 
     */
    open class func getSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation slide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlide(request: GetSlidesSlideRequest, completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        getSlidesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide info.
     - GET /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slide> 
     */
    open class func getSlidesSlideWithRequestBuilder(request: GetSlidesSlideRequest) -> RequestBuilder<Slide> {
        return getSlideWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide background info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBackground(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        getBackgroundWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide background info.
     - GET /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func getBackgroundWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/background"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide background info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideBackground(request: GetSlidesSlideBackgroundRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        getSlidesSlideBackgroundWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide background info.
     - GET /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func getSlidesSlideBackgroundWithRequestBuilder(request: GetSlidesSlideBackgroundRequest) -> RequestBuilder<SlideBackground> {
        return getBackgroundWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read presentation slide comments.
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getComments(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideComments?,_ error: Error?) -> Void)) {
        getCommentsWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide comments.
     - GET /slides/{name}/slides/{slideIndex}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideComments> 
     */
    open class func getCommentsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideComments> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/comments"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideComments>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation slide comments.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideComments(request: GetSlidesSlideCommentsRequest, completion: @escaping ((_ data: SlideComments?,_ error: Error?) -> Void)) {
        getSlidesSlideCommentsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide comments.
     - GET /slides/{name}/slides/{slideIndex}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideComments> 
     */
    open class func getSlidesSlideCommentsWithRequestBuilder(request: GetSlidesSlideCommentsRequest) -> RequestBuilder<SlideComments> {
        return getCommentsWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide images info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideImages(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getSlideImagesWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide images info.
     - GET /slides/{name}/slides/{slideIndex}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Images> 
     */
    open class func getSlideImagesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Images> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/images"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide images info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideImages(request: GetSlidesSlideImagesRequest, completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getSlidesSlideImagesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide images info.
     - GET /slides/{name}/slides/{slideIndex}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Images> 
     */
    open class func getSlidesSlideImagesWithRequestBuilder(request: GetSlidesSlideImagesRequest) -> RequestBuilder<Images> {
        return getSlideImagesWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read presentation slide properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideProperties?,_ error: Error?) -> Void)) {
        getSlidePropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide properties.
     - GET /slides/{name}/slideProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideProperties> 
     */
    open class func getSlidePropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideProperties> {
        var methodPath = "/slides/{name}/slideProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation slide properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideProperties(request: GetSlidesSlidePropertiesRequest, completion: @escaping ((_ data: SlideProperties?,_ error: Error?) -> Void)) {
        getSlidesSlidePropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide properties.
     - GET /slides/{name}/slideProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideProperties> 
     */
    open class func getSlidesSlidePropertiesWithRequestBuilder(request: GetSlidesSlidePropertiesRequest) -> RequestBuilder<SlideProperties> {
        return getSlidePropertiesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Extract slide text items.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter withEmpty: True to include empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideTextItems(_ name: String, _ slideIndex: Int, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getSlideTextItemsWithRequestBuilder(name, slideIndex, withEmpty, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract slide text items.
     - GET /slides/{name}/slides/{slideIndex}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter withEmpty: True to include empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TextItems> 
     */
    open class func getSlideTextItemsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TextItems> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/textItems"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": withEmpty, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Extract slide text items.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideTextItems(request: GetSlidesSlideTextItemsRequest, completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getSlidesSlideTextItemsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract slide text items.
     - GET /slides/{name}/slides/{slideIndex}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<TextItems> 
     */
    open class func getSlidesSlideTextItemsWithRequestBuilder(request: GetSlidesSlideTextItemsRequest) -> RequestBuilder<TextItems> {
        return getSlideTextItemsWithRequestBuilder(request.name, request.slideIndex, request.withEmpty, request.password, request.folder, request.storage)

    }

    /**
     Read presentation slides info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlides(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        getSlidesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slides info.
     - GET /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func getSlidesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation slides info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlidesList(request: GetSlidesSlidesListRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        getSlidesSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slides info.
     - GET /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func getSlidesSlidesListWithRequestBuilder(request: GetSlidesSlidesListRequest) -> RequestBuilder<Slides> {
        return getSlidesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read slide theme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Theme?,_ error: Error?) -> Void)) {
        getThemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme info.
     - GET /slides/{name}/slides/{slideIndex}/theme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Theme> 
     */
    open class func getThemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Theme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Theme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide theme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesTheme(request: GetSlidesThemeRequest, completion: @escaping ((_ data: Theme?,_ error: Error?) -> Void)) {
        getSlidesThemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme info.
     - GET /slides/{name}/slides/{slideIndex}/theme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Theme> 
     */
    open class func getSlidesThemeWithRequestBuilder(request: GetSlidesThemeRequest) -> RequestBuilder<Theme> {
        return getThemeWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide theme color scheme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getColorScheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ColorScheme?,_ error: Error?) -> Void)) {
        getColorSchemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme color scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/colorScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ColorScheme> 
     */
    open class func getColorSchemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ColorScheme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme/colorScheme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ColorScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide theme color scheme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesThemeColorScheme(request: GetSlidesThemeColorSchemeRequest, completion: @escaping ((_ data: ColorScheme?,_ error: Error?) -> Void)) {
        getSlidesThemeColorSchemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme color scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/colorScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ColorScheme> 
     */
    open class func getSlidesThemeColorSchemeWithRequestBuilder(request: GetSlidesThemeColorSchemeRequest) -> RequestBuilder<ColorScheme> {
        return getColorSchemeWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide theme font scheme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFontScheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: FontScheme?,_ error: Error?) -> Void)) {
        getFontSchemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme font scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/fontScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<FontScheme> 
     */
    open class func getFontSchemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<FontScheme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme/fontScheme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide theme font scheme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesThemeFontScheme(request: GetSlidesThemeFontSchemeRequest, completion: @escaping ((_ data: FontScheme?,_ error: Error?) -> Void)) {
        getSlidesThemeFontSchemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme font scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/fontScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FontScheme> 
     */
    open class func getSlidesThemeFontSchemeWithRequestBuilder(request: GetSlidesThemeFontSchemeRequest) -> RequestBuilder<FontScheme> {
        return getFontSchemeWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read slide theme format scheme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFormatScheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: FormatScheme?,_ error: Error?) -> Void)) {
        getFormatSchemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme format scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/formatScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<FormatScheme> 
     */
    open class func getFormatSchemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<FormatScheme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme/formatScheme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FormatScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read slide theme format scheme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesThemeFormatScheme(request: GetSlidesThemeFormatSchemeRequest, completion: @escaping ((_ data: FormatScheme?,_ error: Error?) -> Void)) {
        getSlidesThemeFormatSchemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme format scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/formatScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FormatScheme> 
     */
    open class func getSlidesThemeFormatSchemeWithRequestBuilder(request: GetSlidesThemeFormatSchemeRequest) -> RequestBuilder<FormatScheme> {
        return getFormatSchemeWithRequestBuilder(request.name, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Read presentation document properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getViewProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ViewProperties?,_ error: Error?) -> Void)) {
        getViewPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document properties.
     - GET /slides/{name}/viewProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ViewProperties> 
     */
    open class func getViewPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ViewProperties> {
        var methodPath = "/slides/{name}/viewProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ViewProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read presentation document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesViewProperties(request: GetSlidesViewPropertiesRequest, completion: @escaping ((_ data: ViewProperties?,_ error: Error?) -> Void)) {
        getSlidesViewPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document properties.
     - GET /slides/{name}/viewProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ViewProperties> 
     */
    open class func getSlidesViewPropertiesWithRequestBuilder(request: GetSlidesViewPropertiesRequest) -> RequestBuilder<ViewProperties> {
        return getViewPropertiesWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     Read paragraph portion info (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshapePortion(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getSubshapePortionWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func getSubshapePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read paragraph portion info (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshapeParagraphPortion(request: GetSubshapeParagraphPortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getSubshapeParagraphPortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func getSubshapeParagraphPortionWithRequestBuilder(request: GetSubshapeParagraphPortionRequest) -> RequestBuilder<Portion> {
        return getSubshapePortionWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.password, request.folder, request.storage)

    }

    /**
     Read paragraph portions info (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshapePortions(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getSubshapePortionsWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func getSubshapePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read paragraph portions info (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubshapeParagraphPortions(request: GetSubshapeParagraphPortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getSubshapeParagraphPortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info (for smart art and group shapes).
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func getSubshapeParagraphPortionsWithRequestBuilder(request: GetSubshapeParagraphPortionsRequest) -> RequestBuilder<Portions> {
        return getSubshapePortionsWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.password, request.folder, request.storage)

    }

    /**
     Move file
     - parameter srcPath: Source file path e.g. '/src.ext'
     - parameter destPath: Destination file path e.g. '/dest.ext'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to move
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFile(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFileWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName, versionId).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move file
     - PUT /slides/storage/file/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Source file path e.g. '/src.ext'
     - parameter destPath: Destination file path e.g. '/dest.ext'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to move
     - returns: RequestBuilder<Void> 
     */
    open class func moveFileWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/file/move/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Move file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFile(request: MoveFileRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move file
     - PUT /slides/storage/file/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func moveFileWithRequestBuilder(request: MoveFileRequest) -> RequestBuilder<Void> {
        return moveFileWithRequestBuilder(request.srcPath, request.destPath, request.srcStorageName, request.destStorageName, request.versionId)

    }

    /**
     Move folder
     - parameter srcPath: Folder path to move e.g. '/folder'
     - parameter destPath: Destination folder path to move to e.g '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFolder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFolderWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move folder
     - PUT /slides/storage/folder/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Folder path to move e.g. '/folder'
     - parameter destPath: Destination folder path to move to e.g '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - returns: RequestBuilder<Void> 
     */
    open class func moveFolderWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/move/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Move folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFolder(request: MoveFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move folder
     - PUT /slides/storage/folder/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func moveFolderWithRequestBuilder(request: MoveFolderRequest) -> RequestBuilder<Void> {
        return moveFolderWithRequestBuilder(request.srcPath, request.destPath, request.srcStorageName, request.destStorageName)

    }

    /**
     Check if file or folder exists
     - parameter path: File or folder path e.g. '/file.ext' or '/folder'
     - parameter storageName: Storage name
     - parameter versionId: File version ID
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func objectExists(_ path: String, _ storageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: ObjectExist?,_ error: Error?) -> Void)) {
        objectExistsWithRequestBuilder(path, storageName, versionId).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if file or folder exists
     - GET /slides/storage/exist/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true,
  "IsFolder" : true
}}]
     - parameter path: File or folder path e.g. '/file.ext' or '/folder'
     - parameter storageName: Storage name
     - parameter versionId: File version ID
     - returns: RequestBuilder<ObjectExist> 
     */
    open class func objectExistsWithRequestBuilder(_ path: String, _ storageName: String = "", _ versionId: String = "") -> RequestBuilder<ObjectExist> {
        var methodPath = "/slides/storage/exist/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<ObjectExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Check if file or folder exists
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func objectExists(request: ObjectExistsRequest, completion: @escaping ((_ data: ObjectExist?,_ error: Error?) -> Void)) {
        objectExistsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if file or folder exists
     - GET /slides/storage/exist/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true,
  "IsFolder" : true
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ObjectExist> 
     */
    open class func objectExistsWithRequestBuilder(request: ObjectExistsRequest) -> RequestBuilder<ObjectExist> {
        return objectExistsWithRequestBuilder(request.path, request.storageName, request.versionId)

    }

    /**
     Creates new paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        createParagraphWithRequestBuilder(name, slideIndex, shapeIndex, dto, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func createParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Creates new paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewParagraph(request: PostAddNewParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        postAddNewParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func postAddNewParagraphWithRequestBuilder(request: PostAddNewParagraphRequest) -> RequestBuilder<Paragraph> {
        return createParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.dto, request.position, request.password, request.folder, request.storage)

    }

    /**
     Creates new portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        createPortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, dto, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func createPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Creates new portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewPortion(request: PostAddNewPortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        postAddNewPortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func postAddNewPortionWithRequestBuilder(request: PostAddNewPortionRequest) -> RequestBuilder<Portion> {
        return createPortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.dto, request.position, request.password, request.folder, request.storage)

    }

    /**
     Create new shape.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createShape(_ name: String, _ slideIndex: Int, _ dto: ShapeBase? = nil, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        createShapeWithRequestBuilder(name, slideIndex, dto, shapeToClone, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func createShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: ShapeBase? = nil, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeToClone": shapeToClone?.encodeToJSON(), 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create new shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewShape(request: PostAddNewShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        postAddNewShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func postAddNewShapeWithRequestBuilder(request: PostAddNewShapeRequest) -> RequestBuilder<ShapeBase> {
        return createShapeWithRequestBuilder(request.name, request.slideIndex, request.dto, request.shapeToClone, request.position, request.password, request.folder, request.storage)

    }

    /**
     Create new shape (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSubshape(_ name: String, _ slideIndex: Int, _ path: String, _ dto: ShapeBase? = nil, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        createSubshapeWithRequestBuilder(name, slideIndex, path, dto, shapeToClone, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func createSubshapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ dto: ShapeBase? = nil, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeToClone": shapeToClone?.encodeToJSON(), 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create new shape (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewSubshape(request: PostAddNewSubshapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        postAddNewSubshapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func postAddNewSubshapeWithRequestBuilder(request: PostAddNewSubshapeRequest) -> RequestBuilder<ShapeBase> {
        return createSubshapeWithRequestBuilder(request.name, request.slideIndex, request.path, request.dto, request.shapeToClone, request.position, request.password, request.folder, request.storage)

    }

    /**
     Creates new paragraph (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSubshapeParagraph(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        createSubshapeParagraphWithRequestBuilder(name, slideIndex, path, shapeIndex, dto, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func createSubshapeParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Creates new paragraph (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewSubshapeParagraph(request: PostAddNewSubshapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        postAddNewSubshapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func postAddNewSubshapeParagraphWithRequestBuilder(request: PostAddNewSubshapeParagraphRequest) -> RequestBuilder<Paragraph> {
        return createSubshapeParagraphWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.dto, request.position, request.password, request.folder, request.storage)

    }

    /**
     Creates new portion (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSubshapePortion(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        createSubshapePortionWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, dto, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func createSubshapePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Creates new portion (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewSubshapePortion(request: PostAddNewSubshapePortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        postAddNewSubshapePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func postAddNewSubshapePortionWithRequestBuilder(request: PostAddNewSubshapePortionRequest) -> RequestBuilder<Portion> {
        return createSubshapePortionWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.dto, request.position, request.password, request.folder, request.storage)

    }

    /**
     Add new notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createNotesSlide(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        createNotesSlideWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add new notes slide.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func createNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Add new notes slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNotesSlide(request: PostAddNotesSlideRequest, completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        postAddNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add new notes slide.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlide> 
     */
    open class func postAddNotesSlideWithRequestBuilder(request: PostAddNotesSlideRequest) -> RequestBuilder<NotesSlide> {
        return createNotesSlideWithRequestBuilder(request.name, request.slideIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter alignmentType
     */
    public enum AlignmentType_postAlignShapes: String { 
        case alignLeft = "AlignLeft"
        case alignRight = "AlignRight"
        case alignCenter = "AlignCenter"
        case alignTop = "AlignTop"
        case alignMiddle = "AlignMiddle"
        case alignBottom = "AlignBottom"
        case distributeHorizontally = "DistributeHorizontally"
        case distributeVertically = "DistributeVertically"
    }

    /**
     Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter alignmentType: Alignment type that will be applied to the shapes.
     - parameter alignToSlide: If true, shapes will be aligned relative to the slide edges.
     - parameter shapes: Shapes indexes.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func alignShapes(_ name: String, _ slideIndex: Int, _ alignmentType: String, _ alignToSlide: Bool? = nil, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        alignShapesWithRequestBuilder(name, slideIndex, alignmentType, alignToSlide, shapes, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     - POST /slides/{name}/slides/{slideIndex}/shapes/align/{alignmentType}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter alignmentType: Alignment type that will be applied to the shapes.
     - parameter alignToSlide: If true, shapes will be aligned relative to the slide edges.
     - parameter shapes: Shapes indexes.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func alignShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ alignmentType: String, _ alignToSlide: Bool? = nil, _ shapes: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/align/{alignmentType}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "alignmentType", alignmentType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "alignToSlide": alignToSlide, 
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAlignShapes(request: PostAlignShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        postAlignShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     - POST /slides/{name}/slides/{slideIndex}/shapes/align/{alignmentType}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func postAlignShapesWithRequestBuilder(request: PostAlignShapesRequest) -> RequestBuilder<Shapes> {
        return alignShapesWithRequestBuilder(request.name, request.slideIndex, request.alignmentType, request.alignToSlide, request.shapes, request.password, request.folder, request.storage)

    }

    /**
     Add a new category to a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createChartCategory(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        createChartCategoryWithRequestBuilder(name, slideIndex, shapeIndex, category, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new category to a chart.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func createChartCategoryWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: category)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Add a new category to a chart.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postChartCategory(request: PostChartCategoryRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        postChartCategoryWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new category to a chart.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func postChartCategoryWithRequestBuilder(request: PostChartCategoryRequest) -> RequestBuilder<Chart> {
        return createChartCategoryWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.category, request.password, request.folder, request.storage)

    }

    /**
     Add a new data point to a chart series.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createChartDataPoint(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        createChartDataPointWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, dataPoint, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new data point to a chart series.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func createChartDataPointWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataPoint)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Add a new data point to a chart series.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postChartDataPoint(request: PostChartDataPointRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        postChartDataPointWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new data point to a chart series.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func postChartDataPointWithRequestBuilder(request: PostChartDataPointRequest) -> RequestBuilder<Chart> {
        return createChartDataPointWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.seriesIndex, request.dataPoint, request.password, request.folder, request.storage)

    }

    /**
     Add a new series to a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createChartSeries(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        createChartSeriesWithRequestBuilder(name, slideIndex, shapeIndex, series, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new series to a chart.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func createChartSeriesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: series)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Add a new series to a chart.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postChartSeries(request: PostChartSeriesRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        postChartSeriesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new series to a chart.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func postChartSeriesWithRequestBuilder(request: PostChartSeriesRequest) -> RequestBuilder<Chart> {
        return createChartSeriesWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.series, request.password, request.folder, request.storage)

    }

    /**
     Copy layoutSlide from source presentation.
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone layoutSlide from.
     - parameter cloneFromPosition: Position of cloned layout slide.
     - parameter cloneFromPassword: Password for the document to clone layoutSlide from.
     - parameter cloneFromStorage: Storage of the document to clone layoutSlide from.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyLayoutSlide(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        copyLayoutSlideWithRequestBuilder(name, cloneFrom, cloneFromPosition, cloneFromPassword, cloneFromStorage, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy layoutSlide from source presentation.
     - POST /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone layoutSlide from.
     - parameter cloneFromPosition: Position of cloned layout slide.
     - parameter cloneFromPassword: Password for the document to clone layoutSlide from.
     - parameter cloneFromStorage: Storage of the document to clone layoutSlide from.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func copyLayoutSlideWithRequestBuilder(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlide> {
        var methodPath = "/slides/{name}/layoutSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": cloneFrom, 
            "cloneFromPosition": cloneFromPosition.encodeToJSON(), 
            "cloneFromStorage": cloneFromStorage, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "cloneFromPassword": cloneFromPassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Copy layoutSlide from source presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCopyLayoutSlideFromSourcePresentation(request: PostCopyLayoutSlideFromSourcePresentationRequest, completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        postCopyLayoutSlideFromSourcePresentationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy layoutSlide from source presentation.
     - POST /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func postCopyLayoutSlideFromSourcePresentationWithRequestBuilder(request: PostCopyLayoutSlideFromSourcePresentationRequest) -> RequestBuilder<LayoutSlide> {
        return copyLayoutSlideWithRequestBuilder(request.name, request.cloneFrom, request.cloneFromPosition, request.cloneFromPassword, request.cloneFromStorage, request.password, request.folder, request.storage)

    }

    /**
     Copy masterSlide from source presentation.
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone masterSlide from.
     - parameter cloneFromPosition: Position of cloned master slide.
     - parameter cloneFromPassword: Password for the document to clone masterSlide from.
     - parameter cloneFromStorage: Storage of the document to clone masterSlide from.
     - parameter applyToAll: True to apply cloned master slide to every existing slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyMasterSlide(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ applyToAll: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        copyMasterSlideWithRequestBuilder(name, cloneFrom, cloneFromPosition, cloneFromPassword, cloneFromStorage, applyToAll, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy masterSlide from source presentation.
     - POST /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone masterSlide from.
     - parameter cloneFromPosition: Position of cloned master slide.
     - parameter cloneFromPassword: Password for the document to clone masterSlide from.
     - parameter cloneFromStorage: Storage of the document to clone masterSlide from.
     - parameter applyToAll: True to apply cloned master slide to every existing slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<MasterSlide> 
     */
    open class func copyMasterSlideWithRequestBuilder(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ applyToAll: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<MasterSlide> {
        var methodPath = "/slides/{name}/masterSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": cloneFrom, 
            "cloneFromPosition": cloneFromPosition.encodeToJSON(), 
            "cloneFromStorage": cloneFromStorage, 
            "applyToAll": applyToAll, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "cloneFromPassword": cloneFromPassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Copy masterSlide from source presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCopyMasterSlideFromSourcePresentation(request: PostCopyMasterSlideFromSourcePresentationRequest, completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        postCopyMasterSlideFromSourcePresentationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy masterSlide from source presentation.
     - POST /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<MasterSlide> 
     */
    open class func postCopyMasterSlideFromSourcePresentationWithRequestBuilder(request: PostCopyMasterSlideFromSourcePresentationRequest) -> RequestBuilder<MasterSlide> {
        return copyMasterSlideWithRequestBuilder(request.name, request.cloneFrom, request.cloneFromPosition, request.cloneFromPassword, request.cloneFromStorage, request.applyToAll, request.password, request.folder, request.storage)

    }

    /**
     Get image binary data.
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImageDefaultFormatOnline(_ document: Data, _ index: Int, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageDefaultFormatOnlineWithRequestBuilder(document, index, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image binary data.
     - POST /slides/images/{index}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageDefaultFormatOnlineWithRequestBuilder(_ document: Data, _ index: Int, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/images/{index}"
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get image binary data.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postExportImageWithDefaultFormat(request: PostExportImageWithDefaultFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postExportImageWithDefaultFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image binary data.
     - POST /slides/images/{index}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postExportImageWithDefaultFormatWithRequestBuilder(request: PostExportImageWithDefaultFormatRequest) -> RequestBuilder<Data> {
        return downloadImageDefaultFormatOnlineWithRequestBuilder(request.document, request.index, request.password)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postExportImageWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get image in specified format.
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImageOnline(_ document: Data, _ index: Int, _ format: String, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageOnlineWithRequestBuilder(document, index, format, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image in specified format.
     - POST /slides/images/{index}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageOnlineWithRequestBuilder(_ document: Data, _ index: Int, _ format: String, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/images/{index}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get image in specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postExportImageWithFormat(request: PostExportImageWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postExportImageWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image in specified format.
     - POST /slides/images/{index}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postExportImageWithFormatWithRequestBuilder(request: PostExportImageWithFormatRequest) -> RequestBuilder<Data> {
        return downloadImageOnlineWithRequestBuilder(request.document, request.index, request.format, request.password)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postExportImagesFromRequestWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get all presentation images in specified format. 
     - parameter document: Document data.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImagesOnline(_ document: Data, _ format: String, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesOnlineWithRequestBuilder(document, format, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images in specified format. 
     - POST /slides/images/download/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesOnlineWithRequestBuilder(_ document: Data, _ format: String, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/images/download/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get all presentation images in specified format. 
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postExportImagesFromRequestWithFormat(request: PostExportImagesFromRequestWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postExportImagesFromRequestWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images in specified format. 
     - POST /slides/images/download/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postExportImagesFromRequestWithFormatWithRequestBuilder(request: PostExportImagesFromRequestWithFormatRequest) -> RequestBuilder<Data> {
        return downloadImagesOnlineWithRequestBuilder(request.document, request.format, request.password)

    }

    /**
     Get all presentation images.
     - parameter name: 
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImagesDefaultFormat(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesDefaultFormatWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images.
     - POST /slides/{name}/images/download
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: 
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesDefaultFormatWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/download"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get all presentation images.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postExportImagesWithDefaultFormat(request: PostExportImagesWithDefaultFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postExportImagesWithDefaultFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images.
     - POST /slides/{name}/images/download
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postExportImagesWithDefaultFormatWithRequestBuilder(request: PostExportImagesWithDefaultFormatRequest) -> RequestBuilder<Data> {
        return downloadImagesDefaultFormatWithRequestBuilder(request.name, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postExportImagesWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get all presentation images in specified format.
     - parameter name: 
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImages(_ name: String, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesWithRequestBuilder(name, format, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images in specified format.
     - POST /slides/{name}/images/download/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: 
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesWithRequestBuilder(_ name: String, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/download/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get all presentation images in specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postExportImagesWithFormat(request: PostExportImagesWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postExportImagesWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images in specified format.
     - POST /slides/{name}/images/download/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postExportImagesWithFormatWithRequestBuilder(request: PostExportImagesWithFormatRequest) -> RequestBuilder<Data> {
        return downloadImagesWithRequestBuilder(request.name, request.format, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postExportShape: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_postExportShape: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadShapeOnline(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ password: String = "", _ storage: String = "", _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadShapeOnlineWithRequestBuilder(document, slideIndex, shapeIndex, format, password, storage, scaleX, scaleY, bounds, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadShapeOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ password: String = "", _ storage: String = "", _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": storage, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postExportShape(request: PostExportShapeRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postExportShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postExportShapeWithRequestBuilder(request: PostExportShapeRequest) -> RequestBuilder<Data> {
        return downloadShapeOnlineWithRequestBuilder(request.document, request.slideIndex, request.shapeIndex, request.format, request.password, request.storage, request.scaleX, request.scaleY, request.bounds, request.fontsFolder)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postExportSlide: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
    }

    /**
     Save a slide to a specified format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadSlideOnline(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadSlideOnlineWithRequestBuilder(document, slideIndex, format, width, height, password, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a slide to a specified format.
     - POST /slides/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Save a slide to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postExportSlide(request: PostExportSlideRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postExportSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a slide to a specified format.
     - POST /slides/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postExportSlideWithRequestBuilder(request: PostExportSlideRequest) -> RequestBuilder<Data> {
        return downloadSlideOnlineWithRequestBuilder(request.document, request.slideIndex, request.format, request.width, request.height, request.password, request.storage, request.fontsFolder)

    }

    /**
     Read notes slide info.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideOnline(_ document: Data, _ slideIndex: Int, _ password: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        getNotesSlideOnlineWithRequestBuilder(document, slideIndex, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read notes slide info.
     - POST /slides/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func getNotesSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ password: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Read notes slide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postGetNotesSlide(request: PostGetNotesSlideRequest, completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        postGetNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read notes slide info.
     - POST /slides/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlide> 
     */
    open class func postGetNotesSlideWithRequestBuilder(request: PostGetNotesSlideRequest) -> RequestBuilder<NotesSlide> {
        return getNotesSlideOnlineWithRequestBuilder(request.document, request.slideIndex, request.password)

    }

    /**
     Get info whether a notes slide exists.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func notesSlideExistsOnline(_ document: Data, _ slideIndex: Int, _ password: String = "", completion: @escaping ((_ data: EntityExists?,_ error: Error?) -> Void)) {
        notesSlideExistsOnlineWithRequestBuilder(document, slideIndex, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get info whether a notes slide exists.
     - POST /slides/slides/{slideIndex}/notesSlide/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - returns: RequestBuilder<EntityExists> 
     */
    open class func notesSlideExistsOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ password: String = "") -> RequestBuilder<EntityExists> {
        var methodPath = "/slides/slides/{slideIndex}/notesSlide/exist"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EntityExists>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get info whether a notes slide exists.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postGetNotesSlideExists(request: PostGetNotesSlideExistsRequest, completion: @escaping ((_ data: EntityExists?,_ error: Error?) -> Void)) {
        postGetNotesSlideExistsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get info whether a notes slide exists.
     - POST /slides/slides/{slideIndex}/notesSlide/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<EntityExists> 
     */
    open class func postGetNotesSlideExistsWithRequestBuilder(request: PostGetNotesSlideExistsRequest) -> RequestBuilder<EntityExists> {
        return notesSlideExistsOnlineWithRequestBuilder(request.document, request.slideIndex, request.password)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postGetNotesSlideWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Convert notes slide to the specified image format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: Output file width.
     - parameter height: Output file height.
     - parameter password: Document password.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadNotesSlideOnline(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadNotesSlideOnlineWithRequestBuilder(document, slideIndex, format, width, height, password, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert notes slide to the specified image format.
     - POST /slides/slides/{slideIndex}/notesSlide/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: Output file width.
     - parameter height: Output file height.
     - parameter password: Document password.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadNotesSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/notesSlide/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Convert notes slide to the specified image format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postGetNotesSlideWithFormat(request: PostGetNotesSlideWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postGetNotesSlideWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert notes slide to the specified image format.
     - POST /slides/slides/{slideIndex}/notesSlide/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postGetNotesSlideWithFormatWithRequestBuilder(request: PostGetNotesSlideWithFormatRequest) -> RequestBuilder<Data> {
        return downloadNotesSlideOnlineWithRequestBuilder(request.document, request.slideIndex, request.format, request.width, request.height, request.password, request.fontsFolder)

    }

    /**
     Get all presentation images.
     - parameter document: Document data.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImagesDefaultFormatOnline(_ document: Data, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesDefaultFormatOnlineWithRequestBuilder(document, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images.
     - POST /slides/images/download
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesDefaultFormatOnlineWithRequestBuilder(_ document: Data, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/images/download"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get all presentation images.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postImagesFromRequestWithDefaultFormat(request: PostImagesFromRequestWithDefaultFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postImagesFromRequestWithDefaultFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images.
     - POST /slides/images/download
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postImagesFromRequestWithDefaultFormatWithRequestBuilder(request: PostImagesFromRequestWithDefaultFormatRequest) -> RequestBuilder<Data> {
        return downloadImagesDefaultFormatOnlineWithRequestBuilder(request.document, request.password)

    }

    /**
     Creates new paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createNotesSlideParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        createNotesSlideParagraphWithRequestBuilder(name, slideIndex, shapeIndex, dto, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func createNotesSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Creates new paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideAddNewParagraph(request: PostNotesSlideAddNewParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        postNotesSlideAddNewParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func postNotesSlideAddNewParagraphWithRequestBuilder(request: PostNotesSlideAddNewParagraphRequest) -> RequestBuilder<Paragraph> {
        return createNotesSlideParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.dto, request.position, request.password, request.folder, request.storage)

    }

    /**
     Creates new portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createNotesSlidePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        createNotesSlidePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, dto, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func createNotesSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Creates new portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideAddNewPortion(request: PostNotesSlideAddNewPortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        postNotesSlideAddNewPortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func postNotesSlideAddNewPortionWithRequestBuilder(request: PostNotesSlideAddNewPortionRequest) -> RequestBuilder<Portion> {
        return createNotesSlidePortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.dto, request.position, request.password, request.folder, request.storage)

    }

    /**
     Create new shape.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createNotesSlideShape(_ name: String, _ slideIndex: Int, _ dto: ShapeBase, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        createNotesSlideShapeWithRequestBuilder(name, slideIndex, dto, shapeToClone, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func createNotesSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: ShapeBase, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeToClone": shapeToClone?.encodeToJSON(), 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create new shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideAddNewShape(request: PostNotesSlideAddNewShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        postNotesSlideAddNewShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func postNotesSlideAddNewShapeWithRequestBuilder(request: PostNotesSlideAddNewShapeRequest) -> RequestBuilder<ShapeBase> {
        return createNotesSlideShapeWithRequestBuilder(request.name, request.slideIndex, request.dto, request.shapeToClone, request.position, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postNotesSlideShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_postNotesSlideShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadNotesSlideShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadNotesSlideShapeWithRequestBuilder(name, slideIndex, shapeIndex, format, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadNotesSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideShapeSaveAs(request: PostNotesSlideShapeSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postNotesSlideShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postNotesSlideShapeSaveAsWithRequestBuilder(request: PostNotesSlideShapeSaveAsRequest) -> RequestBuilder<Data> {
        return downloadNotesSlideShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.format, request.options, request.scaleX, request.scaleY, request.bounds, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Merge the presentation with other presentations specified in the request parameter.
     - parameter name: Document name.
     - parameter request: PresentationsMergeRequest with a list of presentations to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func merge(_ name: String, _ request: PresentationsMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        mergeWithRequestBuilder(name, request, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations specified in the request parameter.
     - POST /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter request: PresentationsMergeRequest with a list of presentations to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func mergeWithRequestBuilder(_ name: String, _ request: PresentationsMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/merge"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Merge the presentation with other presentations specified in the request parameter.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPresentationMerge(request: PostPresentationMergeRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postPresentationMergeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations specified in the request parameter.
     - POST /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postPresentationMergeWithRequestBuilder(request: PostPresentationMergeRequest) -> RequestBuilder<Document> {
        return mergeWithRequestBuilder(request.name, request.request, request.password, request.folder, request.storage)

    }

    /**
     Replace text with a new value.
     - parameter document: Document data.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replacePresentationTextOnline(_ document: Data, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        replacePresentationTextOnlineWithRequestBuilder(document, oldValue, newValue, ignoreCase, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func replacePresentationTextOnlineWithRequestBuilder(_ document: Data, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/replaceText"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Replace text with a new value.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPresentationReplaceText(request: PostPresentationReplaceTextRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postPresentationReplaceTextWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postPresentationReplaceTextWithRequestBuilder(request: PostPresentationReplaceTextRequest) -> RequestBuilder<Data> {
        return replacePresentationTextOnlineWithRequestBuilder(request.document, request.oldValue, request.newValue, request.ignoreCase, request.password)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postPresentationSplit: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
    }

    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func splitOnline(_ document: Data, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        splitOnlineWithRequestBuilder(document, format, width, height, from, to, password, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - POST /slides/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func splitOnlineWithRequestBuilder(_ document: Data, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/split/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "from": from?.encodeToJSON(), 
            "to": to?.encodeToJSON(), 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPresentationSplit(request: PostPresentationSplitRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postPresentationSplitWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - POST /slides/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postPresentationSplitWithRequestBuilder(request: PostPresentationSplitRequest) -> RequestBuilder<Data> {
        return splitOnlineWithRequestBuilder(request.document, request.format, request.width, request.height, request.from, request.to, request.password, request.storage, request.fontsFolder)

    }

    /**
     Create a section starting at a specified slide index.
     - parameter name: Document name.
     - parameter sectionName: Section name.
     - parameter slideIndex: Slide index (one-based).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSection(_ name: String, _ sectionName: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        createSectionWithRequestBuilder(name, sectionName, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a section starting at a specified slide index.
     - POST /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter sectionName: Section name.
     - parameter slideIndex: Slide index (one-based).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func createSectionWithRequestBuilder(_ name: String, _ sectionName: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sectionName": sectionName, 
            "slideIndex": slideIndex.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create a section starting at a specified slide index.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSection(request: PostSectionRequest, completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        postSectionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a section starting at a specified slide index.
     - POST /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Sections> 
     */
    open class func postSectionWithRequestBuilder(request: PostSectionRequest) -> RequestBuilder<Sections> {
        return createSectionWithRequestBuilder(request.name, request.sectionName, request.slideIndex, request.password, request.folder, request.storage)

    }

    /**
     Move presentation section to a specified position.
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be reordered.
     - parameter newPosition: The new position of the reordered section.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveSection(_ name: String, _ sectionIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        moveSectionWithRequestBuilder(name, sectionIndex, newPosition, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Move presentation section to a specified position.
     - POST /slides/{name}/sections/{sectionIndex}/move
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be reordered.
     - parameter newPosition: The new position of the reordered section.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func moveSectionWithRequestBuilder(_ name: String, _ sectionIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections/{sectionIndex}/move"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "sectionIndex", sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "newPosition": newPosition.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Move presentation section to a specified position.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSectionMove(request: PostSectionMoveRequest, completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        postSectionMoveWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Move presentation section to a specified position.
     - POST /slides/{name}/sections/{sectionIndex}/move
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Sections> 
     */
    open class func postSectionMoveWithRequestBuilder(request: PostSectionMoveRequest) -> RequestBuilder<Sections> {
        return moveSectionWithRequestBuilder(request.name, request.sectionIndex, request.newPosition, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_postShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadShapeWithRequestBuilder(name, slideIndex, shapeIndex, format, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postShapeSaveAs(request: PostShapeSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postShapeSaveAsWithRequestBuilder(request: PostShapeSaveAsRequest) -> RequestBuilder<Data> {
        return downloadShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.format, request.options, request.scaleX, request.scaleY, request.bounds, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Add an effect to slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAnimationEffect(_ name: String, _ slideIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createAnimationEffectWithRequestBuilder(name, slideIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an effect to slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Add an effect to slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideAnimationEffect(request: PostSlideAnimationEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        postSlideAnimationEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an effect to slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func postSlideAnimationEffectWithRequestBuilder(request: PostSlideAnimationEffectRequest) -> RequestBuilder<SlideAnimation> {
        return createAnimationEffectWithRequestBuilder(request.name, request.slideIndex, request.effect, request.password, request.folder, request.storage)

    }

    /**
     Set slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequence: Animation sequence DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAnimationInteractiveSequence(_ name: String, _ slideIndex: Int, _ sequence: InteractiveSequence, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createAnimationInteractiveSequenceWithRequestBuilder(name, slideIndex, sequence, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequence: Animation sequence DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createAnimationInteractiveSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequence: InteractiveSequence, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sequence)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideAnimationInteractiveSequence(request: PostSlideAnimationInteractiveSequenceRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        postSlideAnimationInteractiveSequenceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func postSlideAnimationInteractiveSequenceWithRequestBuilder(request: PostSlideAnimationInteractiveSequenceRequest) -> RequestBuilder<SlideAnimation> {
        return createAnimationInteractiveSequenceWithRequestBuilder(request.name, request.slideIndex, request.sequence, request.password, request.folder, request.storage)

    }

    /**
     Add an animation effect to a slide interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, sequenceIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an animation effect to a slide interactive sequence.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Add an animation effect to a slide interactive sequence.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideAnimationInteractiveSequenceEffect(request: PostSlideAnimationInteractiveSequenceEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        postSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an animation effect to a slide interactive sequence.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func postSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: PostSlideAnimationInteractiveSequenceEffectRequest) -> RequestBuilder<SlideAnimation> {
        return createAnimationInteractiveSequenceEffectWithRequestBuilder(request.name, request.slideIndex, request.sequenceIndex, request.effect, request.password, request.folder, request.storage)

    }

    /**
     Replace slide text with a new value.
     - parameter document: Document data.
     - parameter slideIndex: Index of target slide.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceSlideTextOnline(_ document: Data, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        replaceSlideTextOnlineWithRequestBuilder(document, slideIndex, oldValue, newValue, ignoreCase, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace slide text with a new value.
     - POST /slides/slides/{slideIndex}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Index of target slide.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func replaceSlideTextOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/replaceText"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Replace slide text with a new value.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideReplaceText(request: PostSlideReplaceTextRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlideReplaceTextWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace slide text with a new value.
     - POST /slides/slides/{slideIndex}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlideReplaceTextWithRequestBuilder(request: PostSlideReplaceTextRequest) -> RequestBuilder<Data> {
        return replaceSlideTextOnlineWithRequestBuilder(request.document, request.slideIndex, request.oldValue, request.newValue, request.ignoreCase, request.password)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlideSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
    }

    /**
     Save a slide to a specified format.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter options: Export options.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadSlide(_ name: String, _ slideIndex: Int, _ format: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadSlideWithRequestBuilder(name, slideIndex, format, options, width, height, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a slide to a specified format.
     - POST /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter options: Export options.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ format: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Save a slide to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideSaveAs(request: PostSlideSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlideSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a slide to a specified format.
     - POST /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlideSaveAsWithRequestBuilder(request: PostSlideSaveAsRequest) -> RequestBuilder<Data> {
        return downloadSlideWithRequestBuilder(request.name, request.slideIndex, request.format, request.options, request.width, request.height, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Create a slide.
     - parameter name: Document name.
     - parameter layoutAlias: Alias of layout slide for new slide. Alias may be the type of layout, name of layout slide or index
     - parameter position: The target position at which to create the slide. Add to the end by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSlide(_ name: String, _ layoutAlias: String = "", _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        createSlideWithRequestBuilder(name, layoutAlias, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a slide.
     - POST /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter layoutAlias: Alias of layout slide for new slide. Alias may be the type of layout, name of layout slide or index
     - parameter position: The target position at which to create the slide. Add to the end by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func createSlideWithRequestBuilder(_ name: String, _ layoutAlias: String = "", _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "layoutAlias": layoutAlias, 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesAdd(request: PostSlidesAddRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesAddWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a slide.
     - POST /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesAddWithRequestBuilder(request: PostSlidesAddRequest) -> RequestBuilder<Slides> {
        return createSlideWithRequestBuilder(request.name, request.layoutAlias, request.position, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlidesConvert: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
    }

    /**
     Convert presentation from request content to format specified.
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func convert(_ document: Data, _ format: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        convertWithRequestBuilder(document, format, password, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert presentation from request content to format specified.
     - POST /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func convertWithRequestBuilder(_ document: Data, _ format: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/convert/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Convert presentation from request content to format specified.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesConvert(request: PostSlidesConvertRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlidesConvertWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert presentation from request content to format specified.
     - POST /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlidesConvertWithRequestBuilder(request: PostSlidesConvertRequest) -> RequestBuilder<Data> {
        return convertWithRequestBuilder(request.document, request.format, request.password, request.storage, request.fontsFolder)

    }

    /**
     Copy a slide from the current or another presentation.
     - parameter name: Document name.
     - parameter slideToCopy: The index of the slide to be copied from the source presentation.
     - parameter position: The target position at which to copy the slide. Copy to the end by default.
     - parameter source: Name of the document to copy a slide from.
     - parameter sourcePassword: Password for the document to copy a slide from.
     - parameter sourceStorage: Template storage name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copySlide(_ name: String, _ slideToCopy: Int, _ position: Int? = nil, _ source: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        copySlideWithRequestBuilder(name, slideToCopy, position, source, sourcePassword, sourceStorage, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy a slide from the current or another presentation.
     - POST /slides/{name}/slides/copy
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideToCopy: The index of the slide to be copied from the source presentation.
     - parameter position: The target position at which to copy the slide. Copy to the end by default.
     - parameter source: Name of the document to copy a slide from.
     - parameter sourcePassword: Password for the document to copy a slide from.
     - parameter sourceStorage: Template storage name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func copySlideWithRequestBuilder(_ name: String, _ slideToCopy: Int, _ position: Int? = nil, _ source: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/copy"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slideToCopy": slideToCopy.encodeToJSON(), 
            "position": position?.encodeToJSON(), 
            "source": source, 
            "sourceStorage": sourceStorage, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "sourcePassword": sourcePassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Copy a slide from the current or another presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesCopy(request: PostSlidesCopyRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesCopyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy a slide from the current or another presentation.
     - POST /slides/{name}/slides/copy
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesCopyWithRequestBuilder(request: PostSlidesCopyRequest) -> RequestBuilder<Slides> {
        return copySlideWithRequestBuilder(request.name, request.slideToCopy, request.position, request.source, request.sourcePassword, request.sourceStorage, request.password, request.folder, request.storage)

    }

    /**
     Create a presentation.
     - parameter name: Document name.
     - parameter data: Document input data.
     - parameter inputPassword: The password for input document.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPresentation(_ name: String, _ data: Data? = nil, _ inputPassword: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        createPresentationWithRequestBuilder(name, data, inputPassword, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter data: Document input data.
     - parameter inputPassword: The password for input document.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func createPresentationWithRequestBuilder(_ name: String, _ data: Data? = nil, _ inputPassword: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "data": data
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "inputPassword": inputPassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create a presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocument(request: PostSlidesDocumentRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentWithRequestBuilder(request: PostSlidesDocumentRequest) -> RequestBuilder<Document> {
        return createPresentationWithRequestBuilder(request.name, request.data, request.inputPassword, request.password, request.folder, request.storage)

    }

    /**
     Create presentation document from html.
     - parameter name: Document name.
     - parameter html: HTML data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func importFromHtml(_ name: String, _ html: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        importFromHtmlWithRequestBuilder(name, html, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create presentation document from html.
     - POST /slides/{name}/fromHtml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter html: HTML data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func importFromHtmlWithRequestBuilder(_ name: String, _ html: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromHtml"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: html)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create presentation document from html.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocumentFromHtml(request: PostSlidesDocumentFromHtmlRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentFromHtmlWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create presentation document from html.
     - POST /slides/{name}/fromHtml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentFromHtmlWithRequestBuilder(request: PostSlidesDocumentFromHtmlRequest) -> RequestBuilder<Document> {
        return importFromHtmlWithRequestBuilder(request.name, request.html, request.password, request.folder, request.storage)

    }

    /**
     Create presentation document from pdf or append pdf to an existing presentation.
     - parameter name: Document name.
     - parameter pdf: PDF data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func importFromPdf(_ name: String, _ pdf: Data? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        importFromPdfWithRequestBuilder(name, pdf, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create presentation document from pdf or append pdf to an existing presentation.
     - POST /slides/{name}/fromPdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter pdf: PDF data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func importFromPdfWithRequestBuilder(_ name: String, _ pdf: Data? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromPdf"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "pdf": pdf
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create presentation document from pdf or append pdf to an existing presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocumentFromPdf(request: PostSlidesDocumentFromPdfRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentFromPdfWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create presentation document from pdf or append pdf to an existing presentation.
     - POST /slides/{name}/fromPdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentFromPdfWithRequestBuilder(request: PostSlidesDocumentFromPdfRequest) -> RequestBuilder<Document> {
        return importFromPdfWithRequestBuilder(request.name, request.pdf, request.password, request.folder, request.storage)

    }

    /**
     Create a presentation from an existing source.
     - parameter name: Document name.
     - parameter sourcePath: Template file path.
     - parameter sourcePassword: Template file password.
     - parameter sourceStorage: Template storage name.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPresentationFromSource(_ name: String, _ sourcePath: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        createPresentationFromSourceWithRequestBuilder(name, sourcePath, sourcePassword, sourceStorage, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation from an existing source.
     - POST /slides/{name}/fromSource
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter sourcePath: Template file path.
     - parameter sourcePassword: Template file password.
     - parameter sourceStorage: Template storage name.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func createPresentationFromSourceWithRequestBuilder(_ name: String, _ sourcePath: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromSource"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sourcePath": sourcePath, 
            "sourceStorage": sourceStorage, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "sourcePassword": sourcePassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create a presentation from an existing source.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocumentFromSource(request: PostSlidesDocumentFromSourceRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentFromSourceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation from an existing source.
     - POST /slides/{name}/fromSource
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentFromSourceWithRequestBuilder(request: PostSlidesDocumentFromSourceRequest) -> RequestBuilder<Document> {
        return createPresentationFromSourceWithRequestBuilder(request.name, request.sourcePath, request.sourcePassword, request.sourceStorage, request.password, request.folder, request.storage)

    }

    /**
     Create a presentation.
     - parameter name: Document name.
     - parameter templatePath: Template file path.
     - parameter data: Document input data.
     - parameter templatePassword: Template file password.
     - parameter templateStorage: Template storage name.
     - parameter isImageDataEmbedded: True if image data is embedded.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPresentationFromTemplate(_ name: String, _ templatePath: String, _ data: String = "", _ templatePassword: String = "", _ templateStorage: String = "", _ isImageDataEmbedded: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        createPresentationFromTemplateWithRequestBuilder(name, templatePath, data, templatePassword, templateStorage, isImageDataEmbedded, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}/fromTemplate
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter templatePath: Template file path.
     - parameter data: Document input data.
     - parameter templatePassword: Template file password.
     - parameter templateStorage: Template storage name.
     - parameter isImageDataEmbedded: True if image data is embedded.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func createPresentationFromTemplateWithRequestBuilder(_ name: String, _ templatePath: String, _ data: String = "", _ templatePassword: String = "", _ templateStorage: String = "", _ isImageDataEmbedded: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromTemplate"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "templatePath": templatePath, 
            "templateStorage": templateStorage, 
            "isImageDataEmbedded": isImageDataEmbedded, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "templatePassword": templatePassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create a presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocumentFromTemplate(request: PostSlidesDocumentFromTemplateRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentFromTemplateWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}/fromTemplate
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentFromTemplateWithRequestBuilder(request: PostSlidesDocumentFromTemplateRequest) -> RequestBuilder<Document> {
        return createPresentationFromTemplateWithRequestBuilder(request.name, request.templatePath, request.data, request.templatePassword, request.templateStorage, request.isImageDataEmbedded, request.password, request.folder, request.storage)

    }

    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Returns result file in the response. 
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mergeOnline(_ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        mergeOnlineWithRequestBuilder(files, request, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Returns result file in the response. 
     - POST /slides/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func mergeOnlineWithRequestBuilder(_ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/merge"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)
        let fileParams = files ?? []

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }

    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Returns result file in the response. 
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesMerge(request: PostSlidesMergeRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlidesMergeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Returns result file in the response. 
     - POST /slides/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlidesMergeWithRequestBuilder(request: PostSlidesMergeRequest) -> RequestBuilder<Data> {
        return mergeOnlineWithRequestBuilder(request.files, request.request, request.password)

    }

    /**
     Performs slides pipeline.
     - parameter pipeline: A Pipeline object.
     - parameter files: Files to upload with the pipeline
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pipeline(_ pipeline: Pipeline, _ files: [Data]? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        pipelineWithRequestBuilder(pipeline, files).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Performs slides pipeline.
     - POST /slides/pipeline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter pipeline: A Pipeline object.
     - parameter files: Files to upload with the pipeline
     - returns: RequestBuilder<Data> 
     */
    open class func pipelineWithRequestBuilder(_ pipeline: Pipeline, _ files: [Data]? = nil) -> RequestBuilder<Data> {
        let methodPath = "/slides/pipeline"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pipeline)
        let fileParams = files ?? []

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams)
    }

    /**
     Performs slides pipeline.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesPipeline(request: PostSlidesPipelineRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlidesPipelineWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Performs slides pipeline.
     - POST /slides/pipeline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlidesPipelineWithRequestBuilder(request: PostSlidesPipelineRequest) -> RequestBuilder<Data> {
        return pipelineWithRequestBuilder(request.pipeline, request.files)

    }

    /**
     Replace text with a new value.
     - parameter name: Document name.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replacePresentationText(_ name: String, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentReplaceResult?,_ error: Error?) -> Void)) {
        replacePresentationTextWithRequestBuilder(name, oldValue, newValue, ignoreCase, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentReplaceResult> 
     */
    open class func replacePresentationTextWithRequestBuilder(_ name: String, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentReplaceResult> {
        var methodPath = "/slides/{name}/replaceText"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Replace text with a new value.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesPresentationReplaceText(request: PostSlidesPresentationReplaceTextRequest, completion: @escaping ((_ data: DocumentReplaceResult?,_ error: Error?) -> Void)) {
        postSlidesPresentationReplaceTextWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentReplaceResult> 
     */
    open class func postSlidesPresentationReplaceTextWithRequestBuilder(request: PostSlidesPresentationReplaceTextRequest) -> RequestBuilder<DocumentReplaceResult> {
        return replacePresentationTextWithRequestBuilder(request.name, request.oldValue, request.newValue, request.ignoreCase, request.password, request.folder, request.storage)

    }

    /**
     Reorder presentation slide position.
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter newPosition: The new position of the reordered slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveSlide(_ name: String, _ slideIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        moveSlideWithRequestBuilder(name, slideIndex, newPosition, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slide position.
     - POST /slides/{name}/slides/{slideIndex}/move
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter newPosition: The new position of the reordered slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func moveSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/move"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "newPosition": newPosition.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Reorder presentation slide position.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesReorder(request: PostSlidesReorderRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesReorderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slide position.
     - POST /slides/{name}/slides/{slideIndex}/move
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesReorderWithRequestBuilder(request: PostSlidesReorderRequest) -> RequestBuilder<Slides> {
        return moveSlideWithRequestBuilder(request.name, request.slideIndex, request.newPosition, request.password, request.folder, request.storage)

    }

    /**
     Reorder presentation slides positions.
     - parameter name: Document name.
     - parameter oldPositions: A comma separated array of positions of slides to be reordered.
     - parameter newPositions: A comma separated array of new slide positions.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func reorderSlides(_ name: String, _ oldPositions: [Int] = [Int](), _ newPositions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        reorderSlidesWithRequestBuilder(name, oldPositions, newPositions, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slides positions.
     - POST /slides/{name}/slides/reorder
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter oldPositions: A comma separated array of positions of slides to be reordered.
     - parameter newPositions: A comma separated array of new slide positions.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func reorderSlidesWithRequestBuilder(_ name: String, _ oldPositions: [Int] = [Int](), _ newPositions: [Int] = [Int](), _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/reorder"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldPositions": oldPositions, 
            "newPositions": newPositions, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Reorder presentation slides positions.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesReorderMany(request: PostSlidesReorderManyRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesReorderManyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slides positions.
     - POST /slides/{name}/slides/reorder
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesReorderManyWithRequestBuilder(request: PostSlidesReorderManyRequest) -> RequestBuilder<Slides> {
        return reorderSlidesWithRequestBuilder(request.name, request.oldPositions, request.newPositions, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlidesSaveAs: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
    }

    /**
     Save a presentation to a specified format.
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadPresentation(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadPresentationWithRequestBuilder(name, format, options, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a presentation to a specified format.
     - POST /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadPresentationWithRequestBuilder(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Save a presentation to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSaveAs(request: PostSlidesSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlidesSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a presentation to a specified format.
     - POST /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlidesSaveAsWithRequestBuilder(request: PostSlidesSaveAsRequest) -> RequestBuilder<Data> {
        return downloadPresentationWithRequestBuilder(request.name, request.format, request.options, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Set document properties.
     - parameter name: Document name.
     - parameter properties: New properties.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setDocumentProperties(_ name: String, _ properties: DocumentProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        setDocumentPropertiesWithRequestBuilder(name, properties, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document properties.
     - POST /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter properties: New properties.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func setDocumentPropertiesWithRequestBuilder(_ name: String, _ properties: DocumentProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: properties)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSetDocumentProperties(request: PostSlidesSetDocumentPropertiesRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        postSlidesSetDocumentPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document properties.
     - POST /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func postSlidesSetDocumentPropertiesWithRequestBuilder(request: PostSlidesSetDocumentPropertiesRequest) -> RequestBuilder<DocumentProperties> {
        return setDocumentPropertiesWithRequestBuilder(request.name, request.properties, request.password, request.folder, request.storage)

    }

    /**
     Replace text with a new value.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceSlideText(_ name: String, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideReplaceResult?,_ error: Error?) -> Void)) {
        replaceSlideTextWithRequestBuilder(name, slideIndex, oldValue, newValue, ignoreCase, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/slides/{slideIndex}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideReplaceResult> 
     */
    open class func replaceSlideTextWithRequestBuilder(_ name: String, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideReplaceResult> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/replaceText"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Replace text with a new value.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSlideReplaceText(request: PostSlidesSlideReplaceTextRequest, completion: @escaping ((_ data: SlideReplaceResult?,_ error: Error?) -> Void)) {
        postSlidesSlideReplaceTextWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/slides/{slideIndex}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideReplaceResult> 
     */
    open class func postSlidesSlideReplaceTextWithRequestBuilder(request: PostSlidesSlideReplaceTextRequest) -> RequestBuilder<SlideReplaceResult> {
        return replaceSlideTextWithRequestBuilder(request.name, request.slideIndex, request.oldValue, request.newValue, request.ignoreCase, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlidesSplit: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
    }

    /**
     Splitting presentations. Create one image per slide.
     - parameter name: Document name.
     - parameter options: Export options.
     - parameter format: Export format. Default value is jpeg.
     - parameter width: The width of created images.
     - parameter height: The height of created images.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to same folder as presentation.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func split(_ name: String, _ options: ExportOptions? = nil, _ format: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ destFolder: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: SplitDocumentResult?,_ error: Error?) -> Void)) {
        splitWithRequestBuilder(name, options, format, width, height, from, to, destFolder, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splitting presentations. Create one image per slide.
     - POST /slides/{name}/split
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter options: Export options.
     - parameter format: Export format. Default value is jpeg.
     - parameter width: The width of created images.
     - parameter height: The height of created images.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to same folder as presentation.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<SplitDocumentResult> 
     */
    open class func splitWithRequestBuilder(_ name: String, _ options: ExportOptions? = nil, _ format: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ destFolder: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<SplitDocumentResult> {
        var methodPath = "/slides/{name}/split"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "format": format, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "from": from?.encodeToJSON(), 
            "to": to?.encodeToJSON(), 
            "destFolder": destFolder, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SplitDocumentResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Splitting presentations. Create one image per slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSplit(request: PostSlidesSplitRequest, completion: @escaping ((_ data: SplitDocumentResult?,_ error: Error?) -> Void)) {
        postSlidesSplitWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splitting presentations. Create one image per slide.
     - POST /slides/{name}/split
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SplitDocumentResult> 
     */
    open class func postSlidesSplitWithRequestBuilder(request: PostSlidesSplitRequest) -> RequestBuilder<SplitDocumentResult> {
        return splitWithRequestBuilder(request.name, request.options, request.format, request.width, request.height, request.from, request.to, request.destFolder, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     * enum for parameter format
     */
    public enum Format_postSubshapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_postSubshapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format (for smart art and group shapes).
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadSubshape(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadSubshapeWithRequestBuilder(name, slideIndex, path, shapeIndex, format, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadSubshapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Render shape to specified picture format (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSubshapeSaveAs(request: PostSubshapeSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSubshapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format (for smart art and group shapes).
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSubshapeSaveAsWithRequestBuilder(request: PostSubshapeSaveAsRequest) -> RequestBuilder<Data> {
        return downloadSubshapeWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.format, request.options, request.scaleX, request.scaleY, request.bounds, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Update a chart category.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateChartCategory(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        updateChartCategoryWithRequestBuilder(name, slideIndex, shapeIndex, categoryIndex, category, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a chart category.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func updateChartCategoryWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "categoryIndex", categoryIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: category)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update a chart category.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putChartCategory(request: PutChartCategoryRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        putChartCategoryWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a chart category.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func putChartCategoryWithRequestBuilder(request: PutChartCategoryRequest) -> RequestBuilder<Chart> {
        return updateChartCategoryWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.categoryIndex, request.category, request.password, request.folder, request.storage)

    }

    /**
     Update a data point in a chart series.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateChartDataPoint(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        updateChartDataPointWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, pointIndex, dataPoint, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a data point in a chart series.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func updateChartDataPointWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "pointIndex", pointIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataPoint)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update a data point in a chart series.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putChartDataPoint(request: PutChartDataPointRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        putChartDataPointWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a data point in a chart series.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func putChartDataPointWithRequestBuilder(request: PutChartDataPointRequest) -> RequestBuilder<Chart> {
        return updateChartDataPointWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.seriesIndex, request.pointIndex, request.dataPoint, request.password, request.folder, request.storage)

    }

    /**
     Update a series in a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateChartSeries(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        updateChartSeriesWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, series, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a series in a chart.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func updateChartSeriesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: series)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update a series in a chart.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putChartSeries(request: PutChartSeriesRequest, completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        putChartSeriesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a series in a chart.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Chart> 
     */
    open class func putChartSeriesWithRequestBuilder(request: PutChartSeriesRequest) -> RequestBuilder<Chart> {
        return updateChartSeriesWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.seriesIndex, request.series, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putExportShape: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_putExportShape: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveShapeOnline(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveShapeOnlineWithRequestBuilder(document, slideIndex, shapeIndex, format, outPath, password, storage, scaleX, scaleY, bounds, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Void> 
     */
    open class func saveShapeOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "storage": storage, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putExportShape(request: PutExportShapeRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putExportShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putExportShapeWithRequestBuilder(request: PutExportShapeRequest) -> RequestBuilder<Void> {
        return saveShapeOnlineWithRequestBuilder(request.document, request.slideIndex, request.shapeIndex, request.format, request.outPath, request.password, request.storage, request.scaleX, request.scaleY, request.bounds, request.fontsFolder)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putExportSlide: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
    }

    /**
     Save a slide to a specified format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to save result.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveSlideOnline(_ document: Data, _ slideIndex: Int, _ format: String, _ outPath: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveSlideOnlineWithRequestBuilder(document, slideIndex, format, outPath, width, height, password, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a slide to a specified format.
     - PUT /slides/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to save result.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Void> 
     */
    open class func saveSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ format: String, _ outPath: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Save a slide to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putExportSlide(request: PutExportSlideRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putExportSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a slide to a specified format.
     - PUT /slides/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putExportSlideWithRequestBuilder(request: PutExportSlideRequest) -> RequestBuilder<Void> {
        return saveSlideOnlineWithRequestBuilder(request.document, request.slideIndex, request.format, request.outPath, request.width, request.height, request.password, request.storage, request.fontsFolder)

    }

    /**
     Update a layoutSlide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateLayoutSlide(_ name: String, _ slideIndex: Int, _ slideDto: LayoutSlide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        updateLayoutSlideWithRequestBuilder(name, slideIndex, slideDto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a layoutSlide.
     - PUT /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func updateLayoutSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideDto: LayoutSlide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlide> {
        var methodPath = "/slides/{name}/layoutSlides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: slideDto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update a layoutSlide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putLayoutSlide(request: PutLayoutSlideRequest, completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        putLayoutSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a layoutSlide.
     - PUT /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func putLayoutSlideWithRequestBuilder(request: PutLayoutSlideRequest) -> RequestBuilder<LayoutSlide> {
        return updateLayoutSlideWithRequestBuilder(request.name, request.slideIndex, request.slideDto, request.password, request.folder, request.storage)

    }

    /**
     Set header/footer the notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Header/footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setNotesSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ dto: NotesSlideHeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlideHeaderFooter?,_ error: Error?) -> Void)) {
        setNotesSlideHeaderFooterWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set header/footer the notes slide.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Header/footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlideHeaderFooter> 
     */
    open class func setNotesSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: NotesSlideHeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlideHeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlideHeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set header/footer the notes slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putNotesSlideHeaderFooter(request: PutNotesSlideHeaderFooterRequest, completion: @escaping ((_ data: NotesSlideHeaderFooter?,_ error: Error?) -> Void)) {
        putNotesSlideHeaderFooterWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set header/footer the notes slide.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlideHeaderFooter> 
     */
    open class func putNotesSlideHeaderFooterWithRequestBuilder(request: PutNotesSlideHeaderFooterRequest) -> RequestBuilder<NotesSlideHeaderFooter> {
        return setNotesSlideHeaderFooterWithRequestBuilder(request.name, request.slideIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putNotesSlideShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_putNotesSlideShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveNotesSlideShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveNotesSlideShapeWithRequestBuilder(name, slideIndex, shapeIndex, format, outPath, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Void> 
     */
    open class func saveNotesSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putNotesSlideShapeSaveAs(request: PutNotesSlideShapeSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putNotesSlideShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putNotesSlideShapeSaveAsWithRequestBuilder(request: PutNotesSlideShapeSaveAsRequest) -> RequestBuilder<Void> {
        return saveNotesSlideShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.format, request.outPath, request.options, request.scaleX, request.scaleY, request.bounds, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     - parameter name: Document name.
     - parameter request: OrderedMergeRequest with a list of presentations and slide indices to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderedMerge(_ name: String, _ request: OrderedMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        orderedMergeWithRequestBuilder(name, request, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     - PUT /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter request: OrderedMergeRequest with a list of presentations and slide indices to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func orderedMergeWithRequestBuilder(_ name: String, _ request: OrderedMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/merge"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPresentationMerge(request: PutPresentationMergeRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putPresentationMergeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     - PUT /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func putPresentationMergeWithRequestBuilder(request: PutPresentationMergeRequest) -> RequestBuilder<Document> {
        return orderedMergeWithRequestBuilder(request.name, request.request, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putPresentationSplit: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
    }

    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to the root folder.
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func splitAndSaveOnline(_ document: Data, _ format: String, _ destFolder: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: SplitDocumentResult?,_ error: Error?) -> Void)) {
        splitAndSaveOnlineWithRequestBuilder(document, format, destFolder, width, height, from, to, password, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - PUT /slides/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to the root folder.
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<SplitDocumentResult> 
     */
    open class func splitAndSaveOnlineWithRequestBuilder(_ document: Data, _ format: String, _ destFolder: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<SplitDocumentResult> {
        var methodPath = "/slides/split/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destFolder": destFolder, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "from": from?.encodeToJSON(), 
            "to": to?.encodeToJSON(), 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SplitDocumentResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPresentationSplit(request: PutPresentationSplitRequest, completion: @escaping ((_ data: SplitDocumentResult?,_ error: Error?) -> Void)) {
        putPresentationSplitWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - PUT /slides/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SplitDocumentResult> 
     */
    open class func putPresentationSplitWithRequestBuilder(request: PutPresentationSplitRequest) -> RequestBuilder<SplitDocumentResult> {
        return splitAndSaveOnlineWithRequestBuilder(request.document, request.format, request.destFolder, request.width, request.height, request.from, request.to, request.password, request.storage, request.fontsFolder)

    }

    /**
     Update section name.
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be updated.
     - parameter sectionName: Section name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSection(_ name: String, _ sectionIndex: Int, _ sectionName: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        updateSectionWithRequestBuilder(name, sectionIndex, sectionName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update section name.
     - PUT /slides/{name}/sections/{sectionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be updated.
     - parameter sectionName: Section name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func updateSectionWithRequestBuilder(_ name: String, _ sectionIndex: Int, _ sectionName: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections/{sectionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "sectionIndex", sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sectionName": sectionName, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update section name.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSection(request: PutSectionRequest, completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        putSectionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update section name.
     - PUT /slides/{name}/sections/{sectionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Sections> 
     */
    open class func putSectionWithRequestBuilder(request: PutSectionRequest) -> RequestBuilder<Sections> {
        return updateSectionWithRequestBuilder(request.name, request.sectionIndex, request.sectionName, request.password, request.folder, request.storage)

    }

    /**
     Replace existing presentation sections with the ones provided in the sections DTO.
     - parameter name: Document name.
     - parameter sections: Sections DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSections(_ name: String, _ sections: Sections, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        setSectionsWithRequestBuilder(name, sections, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace existing presentation sections with the ones provided in the sections DTO.
     - PUT /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter sections: Sections DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func setSectionsWithRequestBuilder(_ name: String, _ sections: Sections, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sections)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Replace existing presentation sections with the ones provided in the sections DTO.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSections(request: PutSectionsRequest, completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        putSectionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace existing presentation sections with the ones provided in the sections DTO.
     - PUT /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Sections> 
     */
    open class func putSectionsWithRequestBuilder(request: PutSectionsRequest) -> RequestBuilder<Sections> {
        return setSectionsWithRequestBuilder(request.name, request.sections, request.password, request.folder, request.storage)

    }

    /**
     Update portion properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        updatePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func updatePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update portion properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetParagraphPortionProperties(request: PutSetParagraphPortionPropertiesRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        putSetParagraphPortionPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func putSetParagraphPortionPropertiesWithRequestBuilder(request: PutSetParagraphPortionPropertiesRequest) -> RequestBuilder<Portion> {
        return updatePortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Update paragraph properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        updateParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func updateParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update paragraph properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetParagraphProperties(request: PutSetParagraphPropertiesRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        putSetParagraphPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func putSetParagraphPropertiesWithRequestBuilder(request: PutSetParagraphPropertiesRequest) -> RequestBuilder<Paragraph> {
        return updateParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Update portion properties (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSubshapePortion(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        updateSubshapePortionWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, portionIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties (for smart art and group shapes).
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func updateSubshapePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update portion properties (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetSubshapeParagraphPortionProperties(request: PutSetSubshapeParagraphPortionPropertiesRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        putSetSubshapeParagraphPortionPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties (for smart art and group shapes).
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func putSetSubshapeParagraphPortionPropertiesWithRequestBuilder(request: PutSetSubshapeParagraphPortionPropertiesRequest) -> RequestBuilder<Portion> {
        return updateSubshapePortionWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Update paragraph properties (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSubshapeParagraph(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        updateSubshapeParagraphWithRequestBuilder(name, slideIndex, path, shapeIndex, paragraphIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties (for smart art and group shapes).
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func updateSubshapeParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update paragraph properties (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetSubshapeParagraphProperties(request: PutSetSubshapeParagraphPropertiesRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        putSetSubshapeParagraphPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties (for smart art and group shapes).
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func putSetSubshapeParagraphPropertiesWithRequestBuilder(request: PutSetSubshapeParagraphPropertiesRequest) -> RequestBuilder<Paragraph> {
        return updateSubshapeParagraphWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.paragraphIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_putShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveShapeWithRequestBuilder(name, slideIndex, shapeIndex, format, outPath, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Void> 
     */
    open class func saveShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putShapeSaveAs(request: PutShapeSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putShapeSaveAsWithRequestBuilder(request: PutShapeSaveAsRequest) -> RequestBuilder<Void> {
        return saveShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.format, request.outPath, request.options, request.scaleX, request.scaleY, request.bounds, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Set slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter animation: Animation DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setAnimation(_ name: String, _ slideIndex: Int, _ animation: SlideAnimation, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        setAnimationWithRequestBuilder(name, slideIndex, animation, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - PUT /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter animation: Animation DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func setAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ animation: SlideAnimation, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: animation)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideAnimation(request: PutSlideAnimationRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        putSlideAnimationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - PUT /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func putSlideAnimationWithRequestBuilder(request: PutSlideAnimationRequest) -> RequestBuilder<SlideAnimation> {
        return setAnimationWithRequestBuilder(request.name, request.slideIndex, request.animation, request.password, request.folder, request.storage)

    }

    /**
     Modify an animation effect for a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAnimationEffect(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        updateAnimationEffectWithRequestBuilder(name, slideIndex, effectIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func updateAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Modify an animation effect for a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideAnimationEffect(request: PutSlideAnimationEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        putSlideAnimationEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func putSlideAnimationEffectWithRequestBuilder(request: PutSlideAnimationEffectRequest) -> RequestBuilder<SlideAnimation> {
        return updateAnimationEffectWithRequestBuilder(request.name, request.slideIndex, request.effectIndex, request.effect, request.password, request.folder, request.storage)

    }

    /**
     Modify an animation effect for a slide interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        updateAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, sequenceIndex, effectIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide interactive sequence.
     - PUT /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func updateAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Modify an animation effect for a slide interactive sequence.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideAnimationInteractiveSequenceEffect(request: PutSlideAnimationInteractiveSequenceEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        putSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide interactive sequence.
     - PUT /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func putSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: PutSlideAnimationInteractiveSequenceEffectRequest) -> RequestBuilder<SlideAnimation> {
        return updateAnimationInteractiveSequenceEffectWithRequestBuilder(request.name, request.slideIndex, request.sequenceIndex, request.effectIndex, request.effect, request.password, request.folder, request.storage)

    }

    /**
     Set footer the slide.
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter dto: Footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: HeaderFooter?,_ error: Error?) -> Void)) {
        setSlideHeaderFooterWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set footer the slide.
     - PUT /slides/{name}/slides/{slideIndex}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter dto: Footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<HeaderFooter> 
     */
    open class func setSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<HeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<HeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set footer the slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideHeaderFooter(request: PutSlideHeaderFooterRequest, completion: @escaping ((_ data: HeaderFooter?,_ error: Error?) -> Void)) {
        putSlideHeaderFooterWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set footer the slide.
     - PUT /slides/{name}/slides/{slideIndex}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<HeaderFooter> 
     */
    open class func putSlideHeaderFooterWithRequestBuilder(request: PutSlideHeaderFooterRequest) -> RequestBuilder<HeaderFooter> {
        return setSlideHeaderFooterWithRequestBuilder(request.name, request.slideIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putSlideSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
    }

    /**
     Save a slide to a specified format.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to upload the output file to.
     - parameter options: Export options.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveSlide(_ name: String, _ slideIndex: Int, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveSlideWithRequestBuilder(name, slideIndex, format, outPath, options, width, height, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a slide to a specified format.
     - PUT /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to upload the output file to.
     - parameter options: Export options.
     - parameter width: Output file width; 0 to not adjust the size. Default is 0.
     - parameter height: Output file height; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Void> 
     */
    open class func saveSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Save a slide to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideSaveAs(request: PutSlideSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSlideSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a slide to a specified format.
     - PUT /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSlideSaveAsWithRequestBuilder(request: PutSlideSaveAsRequest) -> RequestBuilder<Void> {
        return saveSlideWithRequestBuilder(request.name, request.slideIndex, request.format, request.outPath, request.options, request.width, request.height, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Update shape properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        updateShapeWithRequestBuilder(name, slideIndex, shapeIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func updateShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update shape properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideShapeInfo(request: PutSlideShapeInfoRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        putSlideShapeInfoWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func putSlideShapeInfoWithRequestBuilder(request: PutSlideShapeInfoRequest) -> RequestBuilder<ShapeBase> {
        return updateShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Update shape properties (for smart art and group shapes).
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSubshape(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        updateSubshapeWithRequestBuilder(name, slideIndex, path, shapeIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties (for smart art and group shapes).
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func updateSubshapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update shape properties (for smart art and group shapes).
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideSubshapeInfo(request: PutSlideSubshapeInfoRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        putSlideSubshapeInfoWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties (for smart art and group shapes).
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func putSlideSubshapeInfoWithRequestBuilder(request: PutSlideSubshapeInfoRequest) -> RequestBuilder<ShapeBase> {
        return updateSubshapeWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putSlidesConvert: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
    }

    /**
     Convert presentation from request content to format specified.
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func convertAndSave(_ document: Data, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        convertAndSaveWithRequestBuilder(document, format, outPath, password, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Convert presentation from request content to format specified.
     - PUT /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<Void> 
     */
    open class func convertAndSaveWithRequestBuilder(_ document: Data, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/convert/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "document": document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Convert presentation from request content to format specified.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesConvert(request: PutSlidesConvertRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSlidesConvertWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Convert presentation from request content to format specified.
     - PUT /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSlidesConvertWithRequestBuilder(request: PutSlidesConvertRequest) -> RequestBuilder<Void> {
        return convertAndSaveWithRequestBuilder(request.document, request.format, request.outPath, request.password, request.storage, request.fontsFolder)

    }

    /**
     Update presentation document from html.
     - parameter name: Document name.
     - parameter html: HTML data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesDocumentFromHtml(_ name: String, _ html: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putSlidesDocumentFromHtmlWithRequestBuilder(name, html, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation document from html.
     - PUT /slides/{name}/fromHtml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter html: HTML data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func putSlidesDocumentFromHtmlWithRequestBuilder(_ name: String, _ html: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromHtml"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: html)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update presentation document from html.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesDocumentFromHtml(request: PutSlidesDocumentFromHtmlRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putSlidesDocumentFromHtmlWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation document from html.
     - PUT /slides/{name}/fromHtml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func putSlidesDocumentFromHtmlWithRequestBuilder(request: PutSlidesDocumentFromHtmlRequest) -> RequestBuilder<Document> {
        return putSlidesDocumentFromHtmlWithRequestBuilder(request.name, request.html, request.password, request.folder, request.storage)

    }

    /**
     Set footers for all slides in a presentation.
     - parameter name: Document name.
     - parameter dto: HeaderFooter instance.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setPresentationHeaderFooter(_ name: String, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        setPresentationHeaderFooterWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set footers for all slides in a presentation.
     - PUT /slides/{name}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter dto: HeaderFooter instance.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func setPresentationHeaderFooterWithRequestBuilder(_ name: String, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set footers for all slides in a presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesHeaderFooter(request: PutSlidesHeaderFooterRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putSlidesHeaderFooterWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set footers for all slides in a presentation.
     - PUT /slides/{name}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func putSlidesHeaderFooterWithRequestBuilder(request: PutSlidesHeaderFooterRequest) -> RequestBuilder<Document> {
        return setPresentationHeaderFooterWithRequestBuilder(request.name, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Puts result in the storage. 
     - parameter outPath: Path to save result.
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mergeAndSaveOnline(_ outPath: String, _ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ password: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        mergeAndSaveOnlineWithRequestBuilder(outPath, files, request, password, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Puts result in the storage. 
     - PUT /slides/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter outPath: Path to save result.
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func mergeAndSaveOnlineWithRequestBuilder(_ outPath: String, _ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ password: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        let methodPath = "/slides/merge"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)
        let fileParams = files ?? []
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }

    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Puts result in the storage. 
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesMerge(request: PutSlidesMergeRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSlidesMergeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Merges the presentation with other presentations or some of their slides specified in the request parameter. Puts result in the storage. 
     - PUT /slides/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSlidesMergeWithRequestBuilder(request: PutSlidesMergeRequest) -> RequestBuilder<Void> {
        return mergeAndSaveOnlineWithRequestBuilder(request.outPath, request.files, request.request, request.password, request.storage)

    }

    /**
     Update presentation protection properties.
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setProtectionProperties(_ name: String, _ dto: ProtectionProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ProtectionProperties?,_ error: Error?) -> Void)) {
        setProtectionPropertiesWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation protection properties.
     - PUT /slides/{name}/protectionProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ProtectionProperties> 
     */
    open class func setProtectionPropertiesWithRequestBuilder(_ name: String, _ dto: ProtectionProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ProtectionProperties> {
        var methodPath = "/slides/{name}/protectionProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProtectionProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update presentation protection properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesProtectionProperties(request: PutSlidesProtectionPropertiesRequest, completion: @escaping ((_ data: ProtectionProperties?,_ error: Error?) -> Void)) {
        putSlidesProtectionPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation protection properties.
     - PUT /slides/{name}/protectionProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ProtectionProperties> 
     */
    open class func putSlidesProtectionPropertiesWithRequestBuilder(request: PutSlidesProtectionPropertiesRequest) -> RequestBuilder<ProtectionProperties> {
        return setProtectionPropertiesWithRequestBuilder(request.name, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putSlidesSaveAs: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
    }

    /**
     Save a presentation to a specified format.
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter outPath: Output path.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func savePresentation(_ name: String, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        savePresentationWithRequestBuilder(name, format, outPath, options, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a presentation to a specified format.
     - PUT /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter outPath: Output path.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<Void> 
     */
    open class func savePresentationWithRequestBuilder(_ name: String, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Save a presentation to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSaveAs(request: PutSlidesSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSlidesSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a presentation to a specified format.
     - PUT /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSlidesSaveAsWithRequestBuilder(request: PutSlidesSaveAsRequest) -> RequestBuilder<Void> {
        return savePresentationWithRequestBuilder(request.name, request.format, request.outPath, request.options, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Set document property.
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter property: Property with the value.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setDocumentProperty(_ name: String, _ propertyName: String, _ property: DocumentProperty, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        setDocumentPropertyWithRequestBuilder(name, propertyName, property, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document property.
     - PUT /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter property: Property with the value.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func setDocumentPropertyWithRequestBuilder(_ name: String, _ propertyName: String, _ property: DocumentProperty, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperty> {
        var methodPath = "/slides/{name}/documentproperties/{propertyName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "propertyName", propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: property)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set document property.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSetDocumentProperty(request: PutSlidesSetDocumentPropertyRequest, completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        putSlidesSetDocumentPropertyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document property.
     - PUT /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func putSlidesSetDocumentPropertyWithRequestBuilder(request: PutSlidesSetDocumentPropertyRequest) -> RequestBuilder<DocumentProperty> {
        return setDocumentPropertyWithRequestBuilder(request.name, request.propertyName, request.property, request.password, request.folder, request.storage)

    }

    /**
     Update a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSlide(_ name: String, _ slideIndex: Int, _ slideDto: Slide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        updateSlideWithRequestBuilder(name, slideIndex, slideDto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a slide.
     - PUT /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slide> 
     */
    open class func updateSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideDto: Slide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: slideDto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlide(request: PutSlidesSlideRequest, completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        putSlidesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a slide.
     - PUT /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slide> 
     */
    open class func putSlidesSlideWithRequestBuilder(request: PutSlidesSlideRequest) -> RequestBuilder<Slide> {
        return updateSlideWithRequestBuilder(request.name, request.slideIndex, request.slideDto, request.password, request.folder, request.storage)

    }

    /**
     Set background for a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter background: Slide background update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setBackground(_ name: String, _ slideIndex: Int, _ background: SlideBackground, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        setBackgroundWithRequestBuilder(name, slideIndex, background, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter background: Slide background update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func setBackgroundWithRequestBuilder(_ name: String, _ slideIndex: Int, _ background: SlideBackground, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/background"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: background)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Set background for a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideBackground(request: PutSlidesSlideBackgroundRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        putSlidesSlideBackgroundWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func putSlidesSlideBackgroundWithRequestBuilder(request: PutSlidesSlideBackgroundRequest) -> RequestBuilder<SlideBackground> {
        return setBackgroundWithRequestBuilder(request.name, request.slideIndex, request.background, request.password, request.folder, request.storage)

    }

    /**
     Set background color for a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter color: Slide background target color in RRGGBB format.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setBackgroundColor(_ name: String, _ slideIndex: Int, _ color: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        setBackgroundColorWithRequestBuilder(name, slideIndex, color, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background color for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/backgroundColor
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter color: Slide background target color in RRGGBB format.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func setBackgroundColorWithRequestBuilder(_ name: String, _ slideIndex: Int, _ color: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/backgroundColor"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "color": color, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Set background color for a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideBackgroundColor(request: PutSlidesSlideBackgroundColorRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        putSlidesSlideBackgroundColorWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background color for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/backgroundColor
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func putSlidesSlideBackgroundColorWithRequestBuilder(request: PutSlidesSlideBackgroundColorRequest) -> RequestBuilder<SlideBackground> {
        return setBackgroundColorWithRequestBuilder(request.name, request.slideIndex, request.color, request.password, request.folder, request.storage)

    }

    /**
     Update presentation slide properties.
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSlideProperties(_ name: String, _ dto: SlideProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideProperties?,_ error: Error?) -> Void)) {
        setSlidePropertiesWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation slide properties.
     - PUT /slides/{name}/slideProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideProperties> 
     */
    open class func setSlidePropertiesWithRequestBuilder(_ name: String, _ dto: SlideProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideProperties> {
        var methodPath = "/slides/{name}/slideProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update presentation slide properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideProperties(request: PutSlidesSlidePropertiesRequest, completion: @escaping ((_ data: SlideProperties?,_ error: Error?) -> Void)) {
        putSlidesSlidePropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation slide properties.
     - PUT /slides/{name}/slideProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideProperties> 
     */
    open class func putSlidesSlidePropertiesWithRequestBuilder(request: PutSlidesSlidePropertiesRequest) -> RequestBuilder<SlideProperties> {
        return setSlidePropertiesWithRequestBuilder(request.name, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter sizeType
     */
    public enum SizeType_putSlidesSlideSize: String { 
        case onScreen = "OnScreen"
        case letterPaper = "LetterPaper"
        case a4Paper = "A4Paper"
        case slide35mm = "Slide35mm"
        case overhead = "Overhead"
        case banner = "Banner"
        case custom = "Custom"
        case ledger = "Ledger"
        case a3Paper = "A3Paper"
        case b4IsoPaper = "B4IsoPaper"
        case b5IsoPaper = "B5IsoPaper"
        case b4JisPaper = "B4JisPaper"
        case b5JisPaper = "B5JisPaper"
        case hagakiCard = "HagakiCard"
        case onScreen16x9 = "OnScreen16x9"
        case onScreen16x10 = "OnScreen16x10"
        case widescreen = "Widescreen"
    }

    /**
     * enum for parameter scaleType
     */
    public enum ScaleType_putSlidesSlideSize: String { 
        case doNotScale = "DoNotScale"
        case ensureFit = "EnsureFit"
        case maximize = "Maximize"
    }

    /**
     Set slide size for a presentation.
     - parameter name: Document name.
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter sizeType: Standard slide size type.
     - parameter scaleType: Standard slide scale type.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideSize(_ name: String, _ width: Int? = nil, _ height: Int? = nil, _ sizeType: String = "", _ scaleType: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putSlidesSlideSizeWithRequestBuilder(name, width, height, sizeType, scaleType, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide size for a presentation.
     - PUT /slides/{name}/slideSize
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter sizeType: Standard slide size type.
     - parameter scaleType: Standard slide scale type.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func putSlidesSlideSizeWithRequestBuilder(_ name: String, _ width: Int? = nil, _ height: Int? = nil, _ sizeType: String = "", _ scaleType: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/slideSize"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "sizeType": sizeType, 
            "scaleType": scaleType, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Set slide size for a presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideSize(request: PutSlidesSlideSizeRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putSlidesSlideSizeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide size for a presentation.
     - PUT /slides/{name}/slideSize
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func putSlidesSlideSizeWithRequestBuilder(request: PutSlidesSlideSizeRequest) -> RequestBuilder<Document> {
        return putSlidesSlideSizeWithRequestBuilder(request.name, request.width, request.height, request.sizeType, request.scaleType, request.password, request.folder, request.storage)

    }

    /**
     Update presentation document properties.
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setViewProperties(_ name: String, _ dto: ViewProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ViewProperties?,_ error: Error?) -> Void)) {
        setViewPropertiesWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation document properties.
     - PUT /slides/{name}/viewProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ViewProperties> 
     */
    open class func setViewPropertiesWithRequestBuilder(_ name: String, _ dto: ViewProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ViewProperties> {
        var methodPath = "/slides/{name}/viewProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ViewProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update presentation document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesViewProperties(request: PutSlidesViewPropertiesRequest, completion: @escaping ((_ data: ViewProperties?,_ error: Error?) -> Void)) {
        putSlidesViewPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation document properties.
     - PUT /slides/{name}/viewProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ViewProperties> 
     */
    open class func putSlidesViewPropertiesWithRequestBuilder(request: PutSlidesViewPropertiesRequest) -> RequestBuilder<ViewProperties> {
        return setViewPropertiesWithRequestBuilder(request.name, request.dto, request.password, request.folder, request.storage)

    }

    /**
     * enum for parameter format
     */
    public enum Format_putSubshapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_putSubshapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path (for smart art and group shapes).
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveSubshape(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveSubshapeWithRequestBuilder(name, slideIndex, path, shapeIndex, format, outPath, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter path: Shape path (for smart art and group shapes).
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - returns: RequestBuilder<Void> 
     */
    open class func saveSubshapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ path: String, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSubshapeSaveAs(request: PutSubshapeSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSubshapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSubshapeSaveAsWithRequestBuilder(request: PutSubshapeSaveAsRequest) -> RequestBuilder<Void> {
        return saveSubshapeWithRequestBuilder(request.name, request.slideIndex, request.path, request.shapeIndex, request.format, request.outPath, request.options, request.scaleX, request.scaleY, request.bounds, request.password, request.folder, request.storage, request.fontsFolder)

    }

    /**
     Update notes slide properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateNotesSlide(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        updateNotesSlideWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update notes slide properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func updateNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update notes slide properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlide(request: PutUpdateNotesSlideRequest, completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update notes slide properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlide> 
     */
    open class func putUpdateNotesSlideWithRequestBuilder(request: PutUpdateNotesSlideRequest) -> RequestBuilder<NotesSlide> {
        return updateNotesSlideWithRequestBuilder(request.name, request.slideIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Update shape properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateNotesSlideShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        updateNotesSlideShapeWithRequestBuilder(name, slideIndex, shapeIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func updateNotesSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update shape properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlideShape(request: PutUpdateNotesSlideShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func putUpdateNotesSlideShapeWithRequestBuilder(request: PutUpdateNotesSlideShapeRequest) -> RequestBuilder<ShapeBase> {
        return updateNotesSlideShapeWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Update paragraph properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateNotesSlideParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        updateNotesSlideParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func updateNotesSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update paragraph properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlideShapeParagraph(request: PutUpdateNotesSlideShapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideShapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func putUpdateNotesSlideShapeParagraphWithRequestBuilder(request: PutUpdateNotesSlideShapeParagraphRequest) -> RequestBuilder<Paragraph> {
        return updateNotesSlideParagraphWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Update portion properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateNotesSlidePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        updateNotesSlidePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func updateNotesSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update portion properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlideShapePortion(request: PutUpdateNotesSlideShapePortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideShapePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func putUpdateNotesSlideShapePortionWithRequestBuilder(request: PutUpdateNotesSlideShapePortionRequest) -> RequestBuilder<Portion> {
        return updateNotesSlidePortionWithRequestBuilder(request.name, request.slideIndex, request.shapeIndex, request.paragraphIndex, request.portionIndex, request.dto, request.password, request.folder, request.storage)

    }

    /**
     Check if storage exists
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func storageExists(_ storageName: String, completion: @escaping ((_ data: StorageExist?,_ error: Error?) -> Void)) {
        storageExistsWithRequestBuilder(storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if storage exists
     - GET /slides/storage/{storageName}/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     - parameter storageName: Storage name
     - returns: RequestBuilder<StorageExist> 
     */
    open class func storageExistsWithRequestBuilder(_ storageName: String) -> RequestBuilder<StorageExist> {
        var methodPath = "/slides/storage/{storageName}/exist"
        methodPath = APIHelper.replacePathParameter(methodPath, "storageName", storageName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StorageExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Check if storage exists
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func storageExists(request: StorageExistsRequest, completion: @escaping ((_ data: StorageExist?,_ error: Error?) -> Void)) {
        storageExistsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if storage exists
     - GET /slides/storage/{storageName}/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<StorageExist> 
     */
    open class func storageExistsWithRequestBuilder(request: StorageExistsRequest) -> RequestBuilder<StorageExist> {
        return storageExistsWithRequestBuilder(request.storageName)

    }

    /**
     Upload file
     - parameter path: Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
     - parameter file: File to upload
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(_ path: String, _ file: Data, _ storageName: String = "", completion: @escaping ((_ data: FilesUploadResult?,_ error: Error?) -> Void)) {
        uploadFileWithRequestBuilder(path, file, storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload file
     - PUT /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Errors" : [ {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  }, {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  } ],
  "Uploaded" : [ "Uploaded", "Uploaded" ]
}}]
     - parameter path: Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
     - parameter file: File to upload
     - parameter storageName: Storage name
     - returns: RequestBuilder<FilesUploadResult> 
     */
    open class func uploadFileWithRequestBuilder(_ path: String, _ file: Data, _ storageName: String = "") -> RequestBuilder<FilesUploadResult> {
        var methodPath = "/slides/storage/file/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<FilesUploadResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Upload file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(request: UploadFileRequest, completion: @escaping ((_ data: FilesUploadResult?,_ error: Error?) -> Void)) {
        uploadFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload file
     - PUT /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Errors" : [ {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  }, {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  } ],
  "Uploaded" : [ "Uploaded", "Uploaded" ]
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FilesUploadResult> 
     */
    open class func uploadFileWithRequestBuilder(request: UploadFileRequest) -> RequestBuilder<FilesUploadResult> {
        return uploadFileWithRequestBuilder(request.path, request.file, request.storageName)

    }

}
