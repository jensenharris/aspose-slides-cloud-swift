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


/** Represents task for pipeline. */
public class Task: Codable {

    public enum ModelType: String, Codable { 
        case save = "Save"
        case saveSlide = "SaveSlide"
        case saveShape = "SaveShape"
        case addSlide = "AddSlide"
        case addMasterSlide = "AddMasterSlide"
        case addLayoutSlide = "AddLayoutSlide"
        case removeSlide = "RemoveSlide"
        case reoderSlide = "ReoderSlide"
        case merge = "Merge"
        case updateBackground = "UpdateBackground"
        case resetSlide = "ResetSlide"
        case addShape = "AddShape"
        case removeShape = "RemoveShape"
        case updateShape = "UpdateShape"
        case replaceText = "ReplaceText"
    }
    public var type: ModelType?

    func fillValues(_ source: [String:Any]) throws {
        let typeValue = source["type"] ?? source["Type"]
        if typeValue != nil {
            let typeStringValue = typeValue! as? String
            if typeStringValue != nil {
                let typeEnumValue = ModelType(rawValue: typeStringValue!)
                if typeEnumValue != nil {
                    self.type = typeEnumValue!
                }
            }
        }
    }

    public init(type: ModelType? = nil) {
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case type
    }

}

