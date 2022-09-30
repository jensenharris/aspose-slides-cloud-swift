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


/** Represents slide comment */
public class SlideCommentBase: Codable {

    public enum ModelType: String, Codable { 
        case regular = "Regular"
        case modern = "Modern"
    }
    /** Author. */
    public var author: String?
    /** Text. */
    public var text: String?
    /** Creation time. */
    public var createdTime: String?
    /** Child comments. */
    public var childComments: [SlideCommentBase]?
    public var type: ModelType?

    func fillValues(_ source: [String:Any]) throws {
        let authorValue = source["author"] ?? source["Author"]
        if authorValue != nil {
            self.author = authorValue! as? String
        }
        let textValue = source["text"] ?? source["Text"]
        if textValue != nil {
            self.text = textValue! as? String
        }
        let createdTimeValue = source["createdTime"] ?? source["CreatedTime"]
        if createdTimeValue != nil {
            self.createdTime = createdTimeValue! as? String
        }
        let childCommentsValue = source["childComments"] ?? source["ChildComments"]
        if childCommentsValue != nil {
            var childCommentsArray: [SlideCommentBase] = []
            let childCommentsDictionaryValue = childCommentsValue! as? [Any]
            if childCommentsDictionaryValue != nil {
                childCommentsDictionaryValue!.forEach { childCommentsAnyItem in
                    let childCommentsItem = childCommentsAnyItem as? [String:Any]
                    var added = false
                    if childCommentsItem != nil {
                        let (childCommentsInstance, error) = ClassRegistry.getClassFromDictionary(SlideCommentBase.self, childCommentsItem!)
                        if error == nil && childCommentsInstance != nil {
                            let childCommentsArrayItem = childCommentsInstance! as? SlideCommentBase
                            if childCommentsArrayItem != nil {
                                childCommentsArray.append(childCommentsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        childCommentsArray.append(SlideCommentBase())
                    }
                }
            }
            self.childComments = childCommentsArray
        }
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

    public init(author: String? = nil, text: String? = nil, createdTime: String? = nil, childComments: [SlideCommentBase]? = nil, type: ModelType? = nil) {
        self.author = author
        self.text = text
        self.createdTime = createdTime
        self.childComments = childComments
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case author
        case text
        case createdTime
        case childComments
        case type
    }

}

