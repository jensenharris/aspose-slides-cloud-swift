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


/** Replace text task. */
public class ReplaceText: Task {

    /** Text to be replaced. */
    public var oldText: String?
    /** Text to replace with. */
    public var newText: String?
    /** True to ignore case in replace pattern search. */
    public var ignoreCase: Bool?
    /** One-based position of the slide to perform the replace in. 0 to make the replace throughout the presentation. */
    public var slidePosition: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let oldTextValue = source["oldText"] ?? source["OldText"]
        if oldTextValue != nil {
            self.oldText = oldTextValue! as? String
        }
        let newTextValue = source["newText"] ?? source["NewText"]
        if newTextValue != nil {
            self.newText = newTextValue! as? String
        }
        let ignoreCaseValue = source["ignoreCase"] ?? source["IgnoreCase"]
        if ignoreCaseValue != nil {
            self.ignoreCase = ignoreCaseValue! as? Bool
        }
        let slidePositionValue = source["slidePosition"] ?? source["SlidePosition"]
        if slidePositionValue != nil {
            self.slidePosition = slidePositionValue! as? Int
        }
    }

    public init(type: ModelType? = nil, oldText: String? = nil, newText: String? = nil, ignoreCase: Bool? = nil, slidePosition: Int? = nil) {
        super.init(type: type)
        self.oldText = oldText
        self.newText = newText
        self.ignoreCase = ignoreCase
        self.slidePosition = slidePosition
        self.type = ModelType.replaceText
    }

    private enum CodingKeys: String, CodingKey {
        case oldText
        case newText
        case ignoreCase
        case slidePosition
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        oldText = try? values.decode(String.self, forKey: .oldText)
        newText = try? values.decode(String.self, forKey: .newText)
        ignoreCase = try? values.decode(Bool.self, forKey: .ignoreCase)
        slidePosition = try? values.decode(Int.self, forKey: .slidePosition)
        self.type = ModelType.replaceText
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (oldText != nil) {
            try? container.encode(oldText, forKey: .oldText)
        }
        if (newText != nil) {
            try? container.encode(newText, forKey: .newText)
        }
        if (ignoreCase != nil) {
            try? container.encode(ignoreCase, forKey: .ignoreCase)
        }
        if (slidePosition != nil) {
            try? container.encode(slidePosition, forKey: .slidePosition)
        }
    }

}

