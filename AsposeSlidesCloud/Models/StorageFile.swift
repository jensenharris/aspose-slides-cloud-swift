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


/** File or folder information */
public class StorageFile: Codable {

    /** File or folder name. */
    public var name: String?
    /** True if it is a folder. */
    public var isFolder: Bool?
    /** File or folder last modified DateTime. */
    public var modifiedDate: Date?
    /** File or folder size. */
    public var size: Int64?
    /** File or folder path. */
    public var path: String?

    func fillValues(_ source: [String:Any]) throws {
        let nameValue = source["name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
        let isFolderValue = source["isFolder"]
        if isFolderValue != nil {
            self.isFolder = isFolderValue! as? Bool
        }
        let modifiedDateValue = source["modifiedDate"]
        if modifiedDateValue != nil {
            let modifiedDateDictionaryValue = modifiedDateValue! as? [String:Any]
            if modifiedDateDictionaryValue != nil {
                let (modifiedDateInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, modifiedDateDictionaryValue!)
                if error == nil && modifiedDateInstance != nil {
                    self.modifiedDate = modifiedDateInstance! as? Date
                }
            }
        }
        let sizeValue = source["size"]
        if sizeValue != nil {
            self.size = sizeValue! as? Int64
        }
        let pathValue = source["path"]
        if pathValue != nil {
            self.path = pathValue! as? String
        }
    }

    public init(name: String? = nil, isFolder: Bool? = nil, modifiedDate: Date? = nil, size: Int64? = nil, path: String? = nil) {
        self.name = name
        self.isFolder = isFolder
        self.modifiedDate = modifiedDate
        self.size = size
        self.path = path
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case isFolder
        case modifiedDate
        case size
        case path
    }

}

