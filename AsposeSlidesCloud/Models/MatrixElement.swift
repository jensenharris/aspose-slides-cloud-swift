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


/** Specifies the Matrix object, */
public class MatrixElement: MathElement {

    public enum BaseJustification: String, Codable { 
        case notDefined = "NotDefined"
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
    }
    public enum ColumnGapRule: String, Codable { 
        case singleSpacingGap = "SingleSpacingGap"
        case oneAndHalfSpacingGap = "OneAndHalfSpacingGap"
        case doubleSpacingGap = "DoubleSpacingGap"
        case exactly = "Exactly"
        case multiple = "Multiple"
    }
    public enum RowGapRule: String, Codable { 
        case singleSpacingGap = "SingleSpacingGap"
        case oneAndHalfSpacingGap = "OneAndHalfSpacingGap"
        case doubleSpacingGap = "DoubleSpacingGap"
        case exactly = "Exactly"
        case multiple = "Multiple"
    }
    /** Hide the placeholders for empty matrix elements */
    public var hidePlaceholders: Bool?
    /** Specifies the vertical justification respect to surrounding text.  */
    public var baseJustification: BaseJustification?
    /** Minimum column width in twips (1/20th of a point) */
    public var minColumnWidth: Int?
    /** The type of horizontal spacing between columns of a matrix. */
    public var columnGapRule: ColumnGapRule?
    /** The value of horizontal spacing between columns of a matrix */
    public var columnGap: Int?
    /** The type of vertical spacing between rows of a matrix */
    public var rowGapRule: RowGapRule?
    /** The value of vertical spacing between rows of a matrix;              */
    public var rowGap: Int?
    /** Matrix items */
    public var items: [[MathElement]]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let hidePlaceholdersValue = source["hidePlaceholders"] ?? source["HidePlaceholders"]
        if hidePlaceholdersValue != nil {
            self.hidePlaceholders = hidePlaceholdersValue! as? Bool
        }
        let baseJustificationValue = source["baseJustification"] ?? source["BaseJustification"]
        if baseJustificationValue != nil {
            let baseJustificationStringValue = baseJustificationValue! as? String
            if baseJustificationStringValue != nil {
                let baseJustificationEnumValue = BaseJustification(rawValue: baseJustificationStringValue!)
                if baseJustificationEnumValue != nil {
                    self.baseJustification = baseJustificationEnumValue!
                }
            }
        }
        let minColumnWidthValue = source["minColumnWidth"] ?? source["MinColumnWidth"]
        if minColumnWidthValue != nil {
            self.minColumnWidth = minColumnWidthValue! as? Int
        }
        let columnGapRuleValue = source["columnGapRule"] ?? source["ColumnGapRule"]
        if columnGapRuleValue != nil {
            let columnGapRuleStringValue = columnGapRuleValue! as? String
            if columnGapRuleStringValue != nil {
                let columnGapRuleEnumValue = ColumnGapRule(rawValue: columnGapRuleStringValue!)
                if columnGapRuleEnumValue != nil {
                    self.columnGapRule = columnGapRuleEnumValue!
                }
            }
        }
        let columnGapValue = source["columnGap"] ?? source["ColumnGap"]
        if columnGapValue != nil {
            self.columnGap = columnGapValue! as? Int
        }
        let rowGapRuleValue = source["rowGapRule"] ?? source["RowGapRule"]
        if rowGapRuleValue != nil {
            let rowGapRuleStringValue = rowGapRuleValue! as? String
            if rowGapRuleStringValue != nil {
                let rowGapRuleEnumValue = RowGapRule(rawValue: rowGapRuleStringValue!)
                if rowGapRuleEnumValue != nil {
                    self.rowGapRule = rowGapRuleEnumValue!
                }
            }
        }
        let rowGapValue = source["rowGap"] ?? source["RowGap"]
        if rowGapValue != nil {
            self.rowGap = rowGapValue! as? Int
        }
        let itemsValue = source["items"] ?? source["Items"]
        if itemsValue != nil {
        }
    }

    public init(type: ModelType? = nil, hidePlaceholders: Bool? = nil, baseJustification: BaseJustification? = nil, minColumnWidth: Int? = nil, columnGapRule: ColumnGapRule? = nil, columnGap: Int? = nil, rowGapRule: RowGapRule? = nil, rowGap: Int? = nil, items: [[MathElement]]? = nil) {
        super.init(type: type)
        self.hidePlaceholders = hidePlaceholders
        self.baseJustification = baseJustification
        self.minColumnWidth = minColumnWidth
        self.columnGapRule = columnGapRule
        self.columnGap = columnGap
        self.rowGapRule = rowGapRule
        self.rowGap = rowGap
        self.items = items
        self.type = ModelType.matrix
    }

    private enum CodingKeys: String, CodingKey {
        case hidePlaceholders
        case baseJustification
        case minColumnWidth
        case columnGapRule
        case columnGap
        case rowGapRule
        case rowGap
        case items
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        hidePlaceholders = try? values.decode(Bool.self, forKey: .hidePlaceholders)
        baseJustification = try? values.decode(BaseJustification.self, forKey: .baseJustification)
        minColumnWidth = try? values.decode(Int.self, forKey: .minColumnWidth)
        columnGapRule = try? values.decode(ColumnGapRule.self, forKey: .columnGapRule)
        columnGap = try? values.decode(Int.self, forKey: .columnGap)
        rowGapRule = try? values.decode(RowGapRule.self, forKey: .rowGapRule)
        rowGap = try? values.decode(Int.self, forKey: .rowGap)
        items = try? values.decode([[MathElement]].self, forKey: .items)
        self.type = ModelType.matrix
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (hidePlaceholders != nil) {
            try? container.encode(hidePlaceholders, forKey: .hidePlaceholders)
        }
        if (baseJustification != nil) {
            try? container.encode(baseJustification, forKey: .baseJustification)
        }
        if (minColumnWidth != nil) {
            try? container.encode(minColumnWidth, forKey: .minColumnWidth)
        }
        if (columnGapRule != nil) {
            try? container.encode(columnGapRule, forKey: .columnGapRule)
        }
        if (columnGap != nil) {
            try? container.encode(columnGap, forKey: .columnGap)
        }
        if (rowGapRule != nil) {
            try? container.encode(rowGapRule, forKey: .rowGapRule)
        }
        if (rowGap != nil) {
            try? container.encode(rowGap, forKey: .rowGap)
        }
        if (items != nil) {
            try? container.encode(items, forKey: .items)
        }
    }

}

