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

    private enum CodingKeys: String, CodingKey {
        case author
        case text
        case createdTime
        case childComments
        case type
    }

    public init(author: String? = nil, text: String? = nil, createdTime: String? = nil, childComments: [SlideCommentBase]? = nil, type: ModelType? = nil) {
        self.author = author
        self.text = text
        self.createdTime = createdTime
        self.childComments = childComments
        self.type = type
    }


}

