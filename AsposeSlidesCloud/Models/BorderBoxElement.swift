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


/** Rectangular or some other border around the MathElement.  */
public class BorderBoxElement: MathElement {

    /** Base */
    public var base: MathElement?
    /** Hide Top Edge */
    public var hideTop: Bool?
    /** Hide Bottom Edge */
    public var hideBottom: Bool?
    /** Hide Left Edge */
    public var hideLeft: Bool?
    /** Hide Right Edge */
    public var hideRight: Bool?
    /** Strikethrough Horizontal */
    public var strikethroughHorizontal: Bool?
    /** Strikethrough Vertical */
    public var strikethroughVertical: Bool?
    /** Strikethrough Bottom-Left to Top-Right */
    public var strikethroughBottomLeftToTopRight: Bool?
    /** Strikethrough Top-Left to Bottom-Right. */
    public var strikethroughTopLeftToBottomRight: Bool?

    private enum CodingKeys: String, CodingKey {
        case base
        case hideTop
        case hideBottom
        case hideLeft
        case hideRight
        case strikethroughHorizontal
        case strikethroughVertical
        case strikethroughBottomLeftToTopRight
        case strikethroughTopLeftToBottomRight
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, hideTop: Bool? = nil, hideBottom: Bool? = nil, hideLeft: Bool? = nil, hideRight: Bool? = nil, strikethroughHorizontal: Bool? = nil, strikethroughVertical: Bool? = nil, strikethroughBottomLeftToTopRight: Bool? = nil, strikethroughTopLeftToBottomRight: Bool? = nil) {
        super.init(type: type)
        self.base = base
        self.hideTop = hideTop
        self.hideBottom = hideBottom
        self.hideLeft = hideLeft
        self.hideRight = hideRight
        self.strikethroughHorizontal = strikethroughHorizontal
        self.strikethroughVertical = strikethroughVertical
        self.strikethroughBottomLeftToTopRight = strikethroughBottomLeftToTopRight
        self.strikethroughTopLeftToBottomRight = strikethroughTopLeftToBottomRight
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try values.decode(MathElement?.self, forKey: .base)
        hideTop = try values.decode(Bool?.self, forKey: .hideTop)
        hideBottom = try values.decode(Bool?.self, forKey: .hideBottom)
        hideLeft = try values.decode(Bool?.self, forKey: .hideLeft)
        hideRight = try values.decode(Bool?.self, forKey: .hideRight)
        strikethroughHorizontal = try values.decode(Bool?.self, forKey: .strikethroughHorizontal)
        strikethroughVertical = try values.decode(Bool?.self, forKey: .strikethroughVertical)
        strikethroughBottomLeftToTopRight = try values.decode(Bool?.self, forKey: .strikethroughBottomLeftToTopRight)
        strikethroughTopLeftToBottomRight = try values.decode(Bool?.self, forKey: .strikethroughTopLeftToBottomRight)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(base, forKey: .base)
        try container.encode(hideTop, forKey: .hideTop)
        try container.encode(hideBottom, forKey: .hideBottom)
        try container.encode(hideLeft, forKey: .hideLeft)
        try container.encode(hideRight, forKey: .hideRight)
        try container.encode(strikethroughHorizontal, forKey: .strikethroughHorizontal)
        try container.encode(strikethroughVertical, forKey: .strikethroughVertical)
        try container.encode(strikethroughBottomLeftToTopRight, forKey: .strikethroughBottomLeftToTopRight)
        try container.encode(strikethroughTopLeftToBottomRight, forKey: .strikethroughTopLeftToBottomRight)
    }


}

