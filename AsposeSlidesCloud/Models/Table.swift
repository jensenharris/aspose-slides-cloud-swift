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


/** Represents Table shape resource. */
public class Table: ShapeBase {

    public enum Style: String, Codable { 
        case _none = "None"
        case mediumStyle2Accent1 = "MediumStyle2Accent1"
        case mediumStyle2 = "MediumStyle2"
        case noStyleNoGrid = "NoStyleNoGrid"
        case themedStyle1Accent1 = "ThemedStyle1Accent1"
        case themedStyle1Accent2 = "ThemedStyle1Accent2"
        case themedStyle1Accent3 = "ThemedStyle1Accent3"
        case themedStyle1Accent4 = "ThemedStyle1Accent4"
        case themedStyle1Accent5 = "ThemedStyle1Accent5"
        case themedStyle1Accent6 = "ThemedStyle1Accent6"
        case noStyleTableGrid = "NoStyleTableGrid"
        case themedStyle2Accent1 = "ThemedStyle2Accent1"
        case themedStyle2Accent2 = "ThemedStyle2Accent2"
        case themedStyle2Accent3 = "ThemedStyle2Accent3"
        case themedStyle2Accent4 = "ThemedStyle2Accent4"
        case themedStyle2Accent5 = "ThemedStyle2Accent5"
        case themedStyle2Accent6 = "ThemedStyle2Accent6"
        case lightStyle1 = "LightStyle1"
        case lightStyle1Accent1 = "LightStyle1Accent1"
        case lightStyle1Accent2 = "LightStyle1Accent2"
        case lightStyle1Accent3 = "LightStyle1Accent3"
        case lightStyle1Accent4 = "LightStyle1Accent4"
        case lightStyle2Accent5 = "LightStyle2Accent5"
        case lightStyle1Accent6 = "LightStyle1Accent6"
        case lightStyle2 = "LightStyle2"
        case lightStyle2Accent1 = "LightStyle2Accent1"
        case lightStyle2Accent2 = "LightStyle2Accent2"
        case lightStyle2Accent3 = "LightStyle2Accent3"
        case mediumStyle2Accent3 = "MediumStyle2Accent3"
        case mediumStyle2Accent4 = "MediumStyle2Accent4"
        case mediumStyle2Accent5 = "MediumStyle2Accent5"
        case lightStyle2Accent6 = "LightStyle2Accent6"
        case lightStyle2Accent4 = "LightStyle2Accent4"
        case lightStyle3 = "LightStyle3"
        case lightStyle3Accent1 = "LightStyle3Accent1"
        case mediumStyle2Accent2 = "MediumStyle2Accent2"
        case lightStyle3Accent2 = "LightStyle3Accent2"
        case lightStyle3Accent3 = "LightStyle3Accent3"
        case lightStyle3Accent4 = "LightStyle3Accent4"
        case lightStyle3Accent5 = "LightStyle3Accent5"
        case lightStyle3Accent6 = "LightStyle3Accent6"
        case mediumStyle1 = "MediumStyle1"
        case mediumStyle1Accent1 = "MediumStyle1Accent1"
        case mediumStyle1Accent2 = "MediumStyle1Accent2"
        case mediumStyle1Accent3 = "MediumStyle1Accent3"
        case mediumStyle1Accent4 = "MediumStyle1Accent4"
        case mediumStyle1Accent5 = "MediumStyle1Accent5"
        case mediumStyle1Accent6 = "MediumStyle1Accent6"
        case mediumStyle2Accent6 = "MediumStyle2Accent6"
        case mediumStyle3 = "MediumStyle3"
        case mediumStyle3Accent1 = "MediumStyle3Accent1"
        case mediumStyle3Accent2 = "MediumStyle3Accent2"
        case mediumStyle3Accent3 = "MediumStyle3Accent3"
        case mediumStyle3Accent4 = "MediumStyle3Accent4"
        case mediumStyle3Accent5 = "MediumStyle3Accent5"
        case mediumStyle3Accent6 = "MediumStyle3Accent6"
        case mediumStyle4 = "MediumStyle4"
        case mediumStyle4Accent1 = "MediumStyle4Accent1"
        case mediumStyle4Accent2 = "MediumStyle4Accent2"
        case mediumStyle4Accent3 = "MediumStyle4Accent3"
        case mediumStyle4Accent4 = "MediumStyle4Accent4"
        case mediumStyle4Accent5 = "MediumStyle4Accent5"
        case mediumStyle4Accent6 = "MediumStyle4Accent6"
        case darkStyle1 = "DarkStyle1"
        case darkStyle1Accent1 = "DarkStyle1Accent1"
        case darkStyle1Accent2 = "DarkStyle1Accent2"
        case darkStyle1Accent3 = "DarkStyle1Accent3"
        case darkStyle1Accent4 = "DarkStyle1Accent4"
        case darkStyle1Accent5 = "DarkStyle1Accent5"
        case darkStyle1Accent6 = "DarkStyle1Accent6"
        case darkStyle2 = "DarkStyle2"
        case darkStyle2Accent1Accent2 = "DarkStyle2Accent1Accent2"
        case darkStyle2Accent3Accent4 = "DarkStyle2Accent3Accent4"
        case darkStyle2Accent5Accent6 = "DarkStyle2Accent5Accent6"
        case lightStyle1Accent5 = "LightStyle1Accent5"
        case custom = "Custom"
    }
    /** Builtin table style. */
    public var style: Style?
    /** Rows. */
    public var rows: [TableRow]?
    /** Columns. */
    public var columns: [TableColumn]?
    /** Determines whether the first column of a table has to be drawn with a special formatting. */
    public var firstCol: Bool?
    /** Determines whether the first row of a table has to be drawn with a special formatting. */
    public var firstRow: Bool?
    /** Determines whether the even rows has to be drawn with a different formatting. */
    public var horizontalBanding: Bool?
    /** Determines whether the last column of a table has to be drawn with a special formatting. */
    public var lastCol: Bool?
    /** Determines whether the last row of a table has to be drawn with a special formatting. */
    public var lastRow: Bool?
    /** Determines whether the table has right to left reading order. */
    public var rightToLeft: Bool?
    /** Determines whether the even columns has to be drawn with a different formatting. */
    public var verticalBanding: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let styleValue = source["style"] ?? source["Style"]
        if styleValue != nil {
            let styleStringValue = styleValue! as? String
            if styleStringValue != nil {
                let styleEnumValue = Style(rawValue: styleStringValue!)
                if styleEnumValue != nil {
                    self.style = styleEnumValue!
                }
            }
        }
        let rowsValue = source["rows"] ?? source["Rows"]
        if rowsValue != nil {
            var rowsArray: [TableRow] = []
            let rowsDictionaryValue = rowsValue! as? [Any]
            if rowsDictionaryValue != nil {
                rowsDictionaryValue!.forEach { rowsAnyItem in
                    let rowsItem = rowsAnyItem as? [String:Any]
                    var added = false
                    if rowsItem != nil {
                        let (rowsInstance, error) = ClassRegistry.getClassFromDictionary(TableRow.self, rowsItem!)
                        if error == nil && rowsInstance != nil {
                            let rowsArrayItem = rowsInstance! as? TableRow
                            if rowsArrayItem != nil {
                                rowsArray.append(rowsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        rowsArray.append(TableRow())
                    }
                }
            }
            self.rows = rowsArray
        }
        let columnsValue = source["columns"] ?? source["Columns"]
        if columnsValue != nil {
            var columnsArray: [TableColumn] = []
            let columnsDictionaryValue = columnsValue! as? [Any]
            if columnsDictionaryValue != nil {
                columnsDictionaryValue!.forEach { columnsAnyItem in
                    let columnsItem = columnsAnyItem as? [String:Any]
                    var added = false
                    if columnsItem != nil {
                        let (columnsInstance, error) = ClassRegistry.getClassFromDictionary(TableColumn.self, columnsItem!)
                        if error == nil && columnsInstance != nil {
                            let columnsArrayItem = columnsInstance! as? TableColumn
                            if columnsArrayItem != nil {
                                columnsArray.append(columnsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        columnsArray.append(TableColumn())
                    }
                }
            }
            self.columns = columnsArray
        }
        let firstColValue = source["firstCol"] ?? source["FirstCol"]
        if firstColValue != nil {
            self.firstCol = firstColValue! as? Bool
        }
        let firstRowValue = source["firstRow"] ?? source["FirstRow"]
        if firstRowValue != nil {
            self.firstRow = firstRowValue! as? Bool
        }
        let horizontalBandingValue = source["horizontalBanding"] ?? source["HorizontalBanding"]
        if horizontalBandingValue != nil {
            self.horizontalBanding = horizontalBandingValue! as? Bool
        }
        let lastColValue = source["lastCol"] ?? source["LastCol"]
        if lastColValue != nil {
            self.lastCol = lastColValue! as? Bool
        }
        let lastRowValue = source["lastRow"] ?? source["LastRow"]
        if lastRowValue != nil {
            self.lastRow = lastRowValue! as? Bool
        }
        let rightToLeftValue = source["rightToLeft"] ?? source["RightToLeft"]
        if rightToLeftValue != nil {
            self.rightToLeft = rightToLeftValue! as? Bool
        }
        let verticalBandingValue = source["verticalBanding"] ?? source["VerticalBanding"]
        if verticalBandingValue != nil {
            self.verticalBanding = verticalBandingValue! as? Bool
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, style: Style? = nil, rows: [TableRow]? = nil, columns: [TableColumn]? = nil, firstCol: Bool? = nil, firstRow: Bool? = nil, horizontalBanding: Bool? = nil, lastCol: Bool? = nil, lastRow: Bool? = nil, rightToLeft: Bool? = nil, verticalBanding: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type)
        self.style = style
        self.rows = rows
        self.columns = columns
        self.firstCol = firstCol
        self.firstRow = firstRow
        self.horizontalBanding = horizontalBanding
        self.lastCol = lastCol
        self.lastRow = lastRow
        self.rightToLeft = rightToLeft
        self.verticalBanding = verticalBanding
        self.type = ModelType.table
    }

    private enum CodingKeys: String, CodingKey {
        case style
        case rows
        case columns
        case firstCol
        case firstRow
        case horizontalBanding
        case lastCol
        case lastRow
        case rightToLeft
        case verticalBanding
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        style = try? values.decode(Style.self, forKey: .style)
        rows = try? values.decode([TableRow].self, forKey: .rows)
        columns = try? values.decode([TableColumn].self, forKey: .columns)
        firstCol = try? values.decode(Bool.self, forKey: .firstCol)
        firstRow = try? values.decode(Bool.self, forKey: .firstRow)
        horizontalBanding = try? values.decode(Bool.self, forKey: .horizontalBanding)
        lastCol = try? values.decode(Bool.self, forKey: .lastCol)
        lastRow = try? values.decode(Bool.self, forKey: .lastRow)
        rightToLeft = try? values.decode(Bool.self, forKey: .rightToLeft)
        verticalBanding = try? values.decode(Bool.self, forKey: .verticalBanding)
        self.type = ModelType.table
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (style != nil) {
            try? container.encode(style, forKey: .style)
        }
        if (rows != nil) {
            try? container.encode(rows, forKey: .rows)
        }
        if (columns != nil) {
            try? container.encode(columns, forKey: .columns)
        }
        if (firstCol != nil) {
            try? container.encode(firstCol, forKey: .firstCol)
        }
        if (firstRow != nil) {
            try? container.encode(firstRow, forKey: .firstRow)
        }
        if (horizontalBanding != nil) {
            try? container.encode(horizontalBanding, forKey: .horizontalBanding)
        }
        if (lastCol != nil) {
            try? container.encode(lastCol, forKey: .lastCol)
        }
        if (lastRow != nil) {
            try? container.encode(lastRow, forKey: .lastRow)
        }
        if (rightToLeft != nil) {
            try? container.encode(rightToLeft, forKey: .rightToLeft)
        }
        if (verticalBanding != nil) {
            try? container.encode(verticalBanding, forKey: .verticalBanding)
        }
    }

}

