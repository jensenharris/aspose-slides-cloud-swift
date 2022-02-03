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


/** An array of elements. */
public class ArrayElement: MathElement {

    public enum BaseJustification: String, Codable { 
        case notDefined = "NotDefined"
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
    }
    public enum RowSpacingRule: String, Codable { 
        case singleLineGap = "SingleLineGap"
        case oneAndAHalfLineGap = "OneAndAHalfLineGap"
        case twoLineGap = "TwoLineGap"
        case exactly = "Exactly"
        case multiple = "Multiple"
    }
    /** Arguments */
    public var arguments: [MathElement]?
    /** Specifies alignment of the array relative to surrounding text */
    public var baseJustification: BaseJustification?
    /** Maximum Distribution */
    public var maximumDistribution: Bool?
    /** Object Distribution */
    public var objectDistribution: Bool?
    /** The type of vertical spacing between array elements */
    public var rowSpacingRule: RowSpacingRule?
    /** Spacing between rows of an array */
    public var rowSpacing: Int?

    private enum CodingKeys: String, CodingKey {
        case arguments
        case baseJustification
        case maximumDistribution
        case objectDistribution
        case rowSpacingRule
        case rowSpacing
    }

    public init(type: ModelType? = nil, arguments: [MathElement]? = nil, baseJustification: BaseJustification? = nil, maximumDistribution: Bool? = nil, objectDistribution: Bool? = nil, rowSpacingRule: RowSpacingRule? = nil, rowSpacing: Int? = nil) {
        super.init(type: type)
        self.arguments = arguments
        self.baseJustification = baseJustification
        self.maximumDistribution = maximumDistribution
        self.objectDistribution = objectDistribution
        self.rowSpacingRule = rowSpacingRule
        self.rowSpacing = rowSpacing
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        arguments = try values.decode([MathElement]?.self, forKey: .arguments)
        baseJustification = try values.decode(BaseJustification?.self, forKey: .baseJustification)
        maximumDistribution = try values.decode(Bool?.self, forKey: .maximumDistribution)
        objectDistribution = try values.decode(Bool?.self, forKey: .objectDistribution)
        rowSpacingRule = try values.decode(RowSpacingRule?.self, forKey: .rowSpacingRule)
        rowSpacing = try values.decode(Int?.self, forKey: .rowSpacing)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(arguments, forKey: .arguments)
        try container.encode(baseJustification, forKey: .baseJustification)
        try container.encode(maximumDistribution, forKey: .maximumDistribution)
        try container.encode(objectDistribution, forKey: .objectDistribution)
        try container.encode(rowSpacingRule, forKey: .rowSpacingRule)
        try container.encode(rowSpacing, forKey: .rowSpacing)
    }


}

