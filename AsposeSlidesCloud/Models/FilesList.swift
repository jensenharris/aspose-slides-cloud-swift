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


/** Files list */
public class FilesList: Codable {

    /** Files and folders contained by folder StorageFile. */
    public var value: [StorageFile]?

    func fillValues(_ source: [String:Any]) throws {
        let valueValue = source["value"]
        if valueValue != nil {
            var valueArray: [StorageFile] = []
            let valueDictionaryValue = valueValue! as? [Any]
            if valueDictionaryValue != nil {
                valueDictionaryValue!.forEach { valueAnyItem in
                    let valueItem = valueAnyItem as? [String:Any]
                    var added = false
                    if valueItem != nil {
                        let (valueInstance, error) = ClassRegistry.getClassFromDictionary(StorageFile.self, valueItem!)
                        if error == nil && valueInstance != nil {
                            let valueArrayItem = valueInstance! as? StorageFile
                            if valueArrayItem != nil {
                                valueArray.append(valueArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        valueArray.append(StorageFile())
                    }
                }
            }
            self.value = valueArray
        }
    }

    public init(value: [StorageFile]? = nil) {
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case value
    }

}

