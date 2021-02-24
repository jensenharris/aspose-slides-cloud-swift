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
        var path = "/slides/storage/file/copy/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName, 
            "versionId": request.versionId
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
        var path = "/slides/storage/folder/copy/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName
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
        var path = "/slides/storage/folder/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "categoryIndex", request.categoryIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "seriesIndex", request.seriesIndex)
        path = APIHelper.replacePathParameter(path, "pointIndex", request.pointIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "seriesIndex", request.seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/storage/file/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "versionId": request.versionId
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
        var path = "/slides/storage/folder/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "recursive": request.recursive
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": request.paragraphs, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": request.portions, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": request.shapes, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": request.paragraphs, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": request.portions, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/sections/{sectionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "sectionIndex", request.sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withSlides": request.withSlides, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/sections"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sections": request.sections, 
            "withSlides": request.withSlides, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/animation"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": request.shapes, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": request.shapes, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slides": request.slides, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/documentproperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/documentproperties/{propertyName}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "propertyName", request.propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/background"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": request.paragraphs, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": request.portions, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/storage/file/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "versionId": request.versionId
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        let path = "/slides/storage/disc"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<DiscUsage>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/storage/version/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<FileVersions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/storage/folder/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<FilesList>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
        var path = "/slides/{name}/layoutSlides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/layoutSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/masterSlides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/masterSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/exist"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EntityExists>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlideHeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/sections"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/animation"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeIndex": request.shapeIndex?.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/headerFooter"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<HeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        let path = "/slides/info"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiInfo>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
        var path = "/slides/{name}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/documentproperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/documentproperties/{propertyName}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "propertyName", request.propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/images/{index}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "index", request.index)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/images/{index}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "index", request.index)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/images"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "placeholderIndex", request.placeholderIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Placeholder>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/placeholders"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Placeholders>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/textItems"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": request.withEmpty, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/protectionProperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProtectionProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/background"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/comments"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideComments>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/images"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slideProperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/textItems"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": request.withEmpty, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/theme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Theme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/theme/colorScheme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ColorScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/theme/fontScheme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/theme/formatScheme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FormatScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/viewProperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ViewProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/storage/file/move/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName, 
            "versionId": request.versionId
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
        var path = "/slides/storage/folder/move/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
        var path = "/slides/storage/exist/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "versionId": request.versionId
        ])

        let requestBuilder: RequestBuilder<ObjectExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "shapeToClone": request.shapeToClone?.encodeToJSON(), 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "shapeToClone": request.shapeToClone?.encodeToJSON(), 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.category)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "seriesIndex", request.seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dataPoint)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.series)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/layoutSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": request.cloneFrom, 
            "cloneFromPosition": request.cloneFromPosition.encodeToJSON(), 
            "cloneFromStorage": request.cloneFromStorage, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "cloneFromPassword": request.cloneFromPassword,
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/masterSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": request.cloneFrom, 
            "cloneFromPosition": request.cloneFromPosition.encodeToJSON(), 
            "cloneFromStorage": request.cloneFromStorage, 
            "applyToAll": request.applyToAll, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "cloneFromPassword": request.cloneFromPassword,
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "document": request.document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/slides/{slideIndex}/notesSlide/exist"
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "document": request.document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EntityExists>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/slides/{slideIndex}/notesSlide/{format}"
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "document": request.document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "shapeToClone": request.shapeToClone?.encodeToJSON(), 
            "position": request.position?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/merge"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.request)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/sections"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sectionName": request.sectionName, 
            "slideIndex": request.slideIndex.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/sections/{sectionIndex}/move"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "sectionIndex", request.sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "newPosition": request.newPosition.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.sequence)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": request.position?.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage, 
            "layoutAlias": request.layoutAlias
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/convert/{format}"
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "document": request.document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/copy"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slideToCopy": request.slideToCopy.encodeToJSON(), 
            "position": request.position?.encodeToJSON(), 
            "source": request.source, 
            "sourceStorage": request.sourceStorage, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "sourcePassword": request.sourcePassword,
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "data": request.data
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "inputPassword": request.inputPassword,
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/fromHtml"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.html)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/fromPdf"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "pdf": request.pdf
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/fromSource"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sourcePath": request.sourcePath, 
            "sourceStorage": request.sourceStorage, 
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "sourcePassword": request.sourcePassword,
            "password": request.password
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
        var path = "/slides/{name}/fromTemplate"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.data)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "templatePath": request.templatePath, 
            "templateStorage": request.templateStorage, 
            "isImageDataEmbedded": request.isImageDataEmbedded, 
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "templatePassword": request.templatePassword,
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        let path = "/slides/pipeline"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.pipeline)
        let files = request.files ?? []

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: files)
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
        var path = "/slides/{name}/replaceText"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": request.oldValue, 
            "newValue": request.newValue, 
            "ignoreCase": request.ignoreCase, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/move"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "newPosition": request.newPosition.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/reorder"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldPositions": request.oldPositions, 
            "newPositions": request.newPositions, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/documentproperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.properties)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/replaceText"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": request.oldValue, 
            "newValue": request.newValue, 
            "ignoreCase": request.ignoreCase, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/split"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "format": request.format, 
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "to": request.to?.encodeToJSON(), 
            "from": request.from?.encodeToJSON(), 
            "destFolder": request.destFolder, 
            "storage": request.storage, 
            "folder": request.folder, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SplitDocumentResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "categoryIndex", request.categoryIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.category)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "seriesIndex", request.seriesIndex)
        path = APIHelper.replacePathParameter(path, "pointIndex", request.pointIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dataPoint)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "seriesIndex", request.seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.series)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/layoutSlides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.slideDto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlideHeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

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
        var path = "/slides/{name}/merge"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.request)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/sections/{sectionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "sectionIndex", request.sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sectionName": request.sectionName, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/sections"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.sections)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/animation"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.animation)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/headerFooter"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<HeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "folder": request.folder, 
            "storage": request.storage, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/convert/{format}"
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "document": request.document
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/fromHtml"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.html)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
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
        var path = "/slides/{name}/headerFooter"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/protectionProperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProtectionProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "storage": request.storage, 
            "folder": request.folder, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

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
        var path = "/slides/{name}/documentproperties/{propertyName}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "propertyName", request.propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.property)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.slideDto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/background"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.background)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/backgroundColor"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "color": request.color, 
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/slideProperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slideSize"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": request.storage, 
            "folder": request.folder, 
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "sizeType": request.sizeType, 
            "scaleType": request.scaleType
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
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
        var path = "/slides/{name}/viewProperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ViewProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

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
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "storage": request.storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": request.password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
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
        var path = "/slides/storage/{storageName}/exist"
        path = APIHelper.replacePathParameter(path, "storageName", request.storageName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StorageExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
        var path = "/slides/storage/file/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "file": request.file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<FilesUploadResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
