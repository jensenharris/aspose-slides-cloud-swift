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


/** Represents one cell of table. */
public class TableCell: Codable {

    public enum TextAnchorType: String, Codable { 
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
        case justified = "Justified"
        case distributed = "Distributed"
        case notDefined = "NotDefined"
    }
    public enum TextVerticalType: String, Codable { 
        case horizontal = "Horizontal"
        case vertical = "Vertical"
        case vertical270 = "Vertical270"
        case wordArtVertical = "WordArtVertical"
        case eastAsianVertical = "EastAsianVertical"
        case mongolianVertical = "MongolianVertical"
        case wordArtVerticalRightToLeft = "WordArtVerticalRightToLeft"
        case notDefined = "NotDefined"
    }
    /** Cell text. */
    public var text: String?
    /** The number of rows spanned by a merged cell. */
    public var rowSpan: Int?
    /** The number of columns spanned by a merged cell. */
    public var colSpan: Int?
    /** The top margin of the cell. */
    public var marginTop: Double?
    /** The right margin of the cell. */
    public var marginRight: Double?
    /** The left margin of the cell. */
    public var marginLeft: Double?
    /** The bottom margin of the cell. */
    public var marginBottom: Double?
    /** Text anchor type. */
    public var textAnchorType: TextAnchorType?
    /** The type of vertical text. */
    public var textVerticalType: TextVerticalType?
    /** Fill properties set of the cell. */
    public var fillFormat: FillFormat?
    /** Line properties set for the top border of the cell. */
    public var borderTop: LineFormat?
    /** Line properties set for the right border of the cell. */
    public var borderRight: LineFormat?
    /** Line properties set for the left border of the cell. */
    public var borderLeft: LineFormat?
    /** Line properties set for the bottom border of the cell. */
    public var borderBottom: LineFormat?
    /** Line properties set for the diagonal up border of the cell. */
    public var borderDiagonalUp: LineFormat?
    /** Line properties set for the diagonal down border of the cell. */
    public var borderDiagonalDown: LineFormat?
    /** Cell column index */
    public var columnIndex: Int?
    /** Cell row index */
    public var rowIndex: Int?

    private enum CodingKeys: String, CodingKey {
        case text
        case rowSpan
        case colSpan
        case marginTop
        case marginRight
        case marginLeft
        case marginBottom
        case textAnchorType
        case textVerticalType
        case fillFormat
        case borderTop
        case borderRight
        case borderLeft
        case borderBottom
        case borderDiagonalUp
        case borderDiagonalDown
        case columnIndex
        case rowIndex
    }

    public init(text: String? = nil, rowSpan: Int? = nil, colSpan: Int? = nil, marginTop: Double? = nil, marginRight: Double? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, textAnchorType: TextAnchorType? = nil, textVerticalType: TextVerticalType? = nil, fillFormat: FillFormat? = nil, borderTop: LineFormat? = nil, borderRight: LineFormat? = nil, borderLeft: LineFormat? = nil, borderBottom: LineFormat? = nil, borderDiagonalUp: LineFormat? = nil, borderDiagonalDown: LineFormat? = nil, columnIndex: Int? = nil, rowIndex: Int? = nil) {
        self.text = text
        self.rowSpan = rowSpan
        self.colSpan = colSpan
        self.marginTop = marginTop
        self.marginRight = marginRight
        self.marginLeft = marginLeft
        self.marginBottom = marginBottom
        self.textAnchorType = textAnchorType
        self.textVerticalType = textVerticalType
        self.fillFormat = fillFormat
        self.borderTop = borderTop
        self.borderRight = borderRight
        self.borderLeft = borderLeft
        self.borderBottom = borderBottom
        self.borderDiagonalUp = borderDiagonalUp
        self.borderDiagonalDown = borderDiagonalDown
        self.columnIndex = columnIndex
        self.rowIndex = rowIndex
    }


}

