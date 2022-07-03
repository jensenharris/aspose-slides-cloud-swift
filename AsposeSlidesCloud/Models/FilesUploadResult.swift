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


/** File upload result */
public class FilesUploadResult: Codable {

    /** List of uploaded file names */
    public var uploaded: [String]?
    /** List of errors. */
    public var errors: [ModelError]?

    func fillValues(_ source: [String:Any]) throws {
        let uploadedValue = source["uploaded"]
        if uploadedValue != nil {
            self.uploaded = uploadedValue! as? [String]
        }
        let errorsValue = source["errors"]
        if errorsValue != nil {
            var errorsArray: [ModelError] = []
            let errorsDictionaryValue = errorsValue! as? [Any]
            if errorsDictionaryValue != nil {
                errorsDictionaryValue!.forEach { errorsAnyItem in
                    let errorsItem = errorsAnyItem as? [String:Any]
                    var added = false
                    if errorsItem != nil {
                        let (errorsInstance, error) = ClassRegistry.getClassFromDictionary(ModelError.self, errorsItem!)
                        if error == nil && errorsInstance != nil {
                            let errorsArrayItem = errorsInstance! as? ModelError
                            if errorsArrayItem != nil {
                                errorsArray.append(errorsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        errorsArray.append(ModelError())
                    }
                }
            }
            self.errors = errorsArray
        }
    }

    public init(uploaded: [String]? = nil, errors: [ModelError]? = nil) {
        self.uploaded = uploaded
        self.errors = errors
    }

    private enum CodingKeys: String, CodingKey {
        case uploaded
        case errors
    }

}

