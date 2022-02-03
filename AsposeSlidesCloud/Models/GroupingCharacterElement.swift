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


/** Specifies a grouping symbol above or below an expression, usually to highlight the relationship between elements  */
public class GroupingCharacterElement: MathElement {

    public enum Position: String, Codable { 
        case notDefined = "NotDefined"
        case top = "Top"
        case bottom = "Bottom"
    }
    public enum VerticalJustification: String, Codable { 
        case notDefined = "NotDefined"
        case top = "Top"
        case bottom = "Bottom"
    }
    /** Base */
    public var base: MathElement?
    /** Grouping character */
    public var character: String?
    /** Position of grouping character. */
    public var position: Position?
    /** Vertical justification of group character. */
    public var verticalJustification: VerticalJustification?

    private enum CodingKeys: String, CodingKey {
        case base
        case character
        case position
        case verticalJustification
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, character: String? = nil, position: Position? = nil, verticalJustification: VerticalJustification? = nil) {
        super.init(type: type)
        self.base = base
        self.character = character
        self.position = position
        self.verticalJustification = verticalJustification
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try values.decode(MathElement?.self, forKey: .base)
        character = try values.decode(String?.self, forKey: .character)
        position = try values.decode(Position?.self, forKey: .position)
        verticalJustification = try values.decode(VerticalJustification?.self, forKey: .verticalJustification)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(base, forKey: .base)
        try container.encode(character, forKey: .character)
        try container.encode(position, forKey: .position)
        try container.encode(verticalJustification, forKey: .verticalJustification)
    }


}

