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


/** Delimiter element */
public class DelimiterElement: MathElement {

    public enum DelimiterShape: String, Codable { 
        case centered = "Centered"
        case match = "Match"
    }
    /** Arguments */
    public var arguments: [MathElement]?
    /** Beginning character */
    public var beginningCharacter: String?
    /** Separator character */
    public var separatorCharacter: String?
    /** Ending character */
    public var endingCharacter: String?
    /** Grow to match operand height */
    public var growToMatchOperandHeight: Bool?
    /** Delimiter shape */
    public var delimiterShape: DelimiterShape?

    private enum CodingKeys: String, CodingKey {
        case arguments
        case beginningCharacter
        case separatorCharacter
        case endingCharacter
        case growToMatchOperandHeight
        case delimiterShape
    }

    public init(type: ModelType? = nil, arguments: [MathElement]? = nil, beginningCharacter: String? = nil, separatorCharacter: String? = nil, endingCharacter: String? = nil, growToMatchOperandHeight: Bool? = nil, delimiterShape: DelimiterShape? = nil) {
        super.init(type: type)
        self.arguments = arguments
        self.beginningCharacter = beginningCharacter
        self.separatorCharacter = separatorCharacter
        self.endingCharacter = endingCharacter
        self.growToMatchOperandHeight = growToMatchOperandHeight
        self.delimiterShape = delimiterShape
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        arguments = try values.decode([MathElement]?.self, forKey: .arguments)
        beginningCharacter = try values.decode(String?.self, forKey: .beginningCharacter)
        separatorCharacter = try values.decode(String?.self, forKey: .separatorCharacter)
        endingCharacter = try values.decode(String?.self, forKey: .endingCharacter)
        growToMatchOperandHeight = try values.decode(Bool?.self, forKey: .growToMatchOperandHeight)
        delimiterShape = try values.decode(DelimiterShape?.self, forKey: .delimiterShape)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(arguments, forKey: .arguments)
        try container.encode(beginningCharacter, forKey: .beginningCharacter)
        try container.encode(separatorCharacter, forKey: .separatorCharacter)
        try container.encode(endingCharacter, forKey: .endingCharacter)
        try container.encode(growToMatchOperandHeight, forKey: .growToMatchOperandHeight)
        try container.encode(delimiterShape, forKey: .delimiterShape)
    }


}

