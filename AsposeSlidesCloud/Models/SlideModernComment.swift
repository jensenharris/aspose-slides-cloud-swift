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


/** Represents modern comment of slide */
public class SlideModernComment: SlideCommentBase {

    public enum Status: String, Codable { 
        case notDefined = "NotDefined"
        case active = "Active"
        case resolved = "Resolved"
        case closed = "Closed"
    }
    /** Returns or sets starting position of text selection in text frame if the comment associated with AutoShape. Read/write Int32. */
    public var textSelectionStart: Int?
    /** Returns or sets text selection length in text frame if the comment associated with AutoShape. Read/write Int32. */
    public var textSelectionLength: Int?
    /** Returns or sets the status of the comment. Read/write ModernCommentStatus. */
    public var status: Status?

    private enum CodingKeys: String, CodingKey {
        case textSelectionStart
        case textSelectionLength
        case status
    }

    public init(author: String? = nil, text: String? = nil, createdTime: String? = nil, childComments: [SlideCommentBase]? = nil, type: ModelType? = nil, textSelectionStart: Int? = nil, textSelectionLength: Int? = nil, status: Status? = nil) {
        super.init(author: author, text: text, createdTime: createdTime, childComments: childComments, type: type)
        self.textSelectionStart = textSelectionStart
        self.textSelectionLength = textSelectionLength
        self.status = status
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        textSelectionStart = try values.decode(Int?.self, forKey: .textSelectionStart)
        textSelectionLength = try values.decode(Int?.self, forKey: .textSelectionLength)
        status = try values.decode(Status?.self, forKey: .status)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(textSelectionStart, forKey: .textSelectionStart)
        try container.encode(textSelectionLength, forKey: .textSelectionLength)
        try container.encode(status, forKey: .status)
    }


}

