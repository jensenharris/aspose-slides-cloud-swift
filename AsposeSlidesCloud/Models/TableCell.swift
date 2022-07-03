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

    func fillValues(_ source: [String:Any]) throws {
        let textValue = source["text"]
        if textValue != nil {
            self.text = textValue! as? String
        }
        let rowSpanValue = source["rowSpan"]
        if rowSpanValue != nil {
            self.rowSpan = rowSpanValue! as? Int
        }
        let colSpanValue = source["colSpan"]
        if colSpanValue != nil {
            self.colSpan = colSpanValue! as? Int
        }
        let marginTopValue = source["marginTop"]
        if marginTopValue != nil {
            self.marginTop = marginTopValue! as? Double
        }
        let marginRightValue = source["marginRight"]
        if marginRightValue != nil {
            self.marginRight = marginRightValue! as? Double
        }
        let marginLeftValue = source["marginLeft"]
        if marginLeftValue != nil {
            self.marginLeft = marginLeftValue! as? Double
        }
        let marginBottomValue = source["marginBottom"]
        if marginBottomValue != nil {
            self.marginBottom = marginBottomValue! as? Double
        }
        let textAnchorTypeValue = source["textAnchorType"]
        if textAnchorTypeValue != nil {
            let textAnchorTypeStringValue = textAnchorTypeValue! as? String
            if textAnchorTypeStringValue != nil {
                let textAnchorTypeEnumValue = TextAnchorType(rawValue: textAnchorTypeStringValue!)
                if textAnchorTypeEnumValue != nil {
                    self.textAnchorType = textAnchorTypeEnumValue!
                }
            }
        }
        let textVerticalTypeValue = source["textVerticalType"]
        if textVerticalTypeValue != nil {
            let textVerticalTypeStringValue = textVerticalTypeValue! as? String
            if textVerticalTypeStringValue != nil {
                let textVerticalTypeEnumValue = TextVerticalType(rawValue: textVerticalTypeStringValue!)
                if textVerticalTypeEnumValue != nil {
                    self.textVerticalType = textVerticalTypeEnumValue!
                }
            }
        }
        let fillFormatValue = source["fillFormat"]
        if fillFormatValue != nil {
            let fillFormatDictionaryValue = fillFormatValue! as? [String:Any]
            if fillFormatDictionaryValue != nil {
                let (fillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, fillFormatDictionaryValue!)
                if error == nil && fillFormatInstance != nil {
                    self.fillFormat = fillFormatInstance! as? FillFormat
                }
            }
        }
        let borderTopValue = source["borderTop"]
        if borderTopValue != nil {
            let borderTopDictionaryValue = borderTopValue! as? [String:Any]
            if borderTopDictionaryValue != nil {
                let (borderTopInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, borderTopDictionaryValue!)
                if error == nil && borderTopInstance != nil {
                    self.borderTop = borderTopInstance! as? LineFormat
                }
            }
        }
        let borderRightValue = source["borderRight"]
        if borderRightValue != nil {
            let borderRightDictionaryValue = borderRightValue! as? [String:Any]
            if borderRightDictionaryValue != nil {
                let (borderRightInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, borderRightDictionaryValue!)
                if error == nil && borderRightInstance != nil {
                    self.borderRight = borderRightInstance! as? LineFormat
                }
            }
        }
        let borderLeftValue = source["borderLeft"]
        if borderLeftValue != nil {
            let borderLeftDictionaryValue = borderLeftValue! as? [String:Any]
            if borderLeftDictionaryValue != nil {
                let (borderLeftInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, borderLeftDictionaryValue!)
                if error == nil && borderLeftInstance != nil {
                    self.borderLeft = borderLeftInstance! as? LineFormat
                }
            }
        }
        let borderBottomValue = source["borderBottom"]
        if borderBottomValue != nil {
            let borderBottomDictionaryValue = borderBottomValue! as? [String:Any]
            if borderBottomDictionaryValue != nil {
                let (borderBottomInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, borderBottomDictionaryValue!)
                if error == nil && borderBottomInstance != nil {
                    self.borderBottom = borderBottomInstance! as? LineFormat
                }
            }
        }
        let borderDiagonalUpValue = source["borderDiagonalUp"]
        if borderDiagonalUpValue != nil {
            let borderDiagonalUpDictionaryValue = borderDiagonalUpValue! as? [String:Any]
            if borderDiagonalUpDictionaryValue != nil {
                let (borderDiagonalUpInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, borderDiagonalUpDictionaryValue!)
                if error == nil && borderDiagonalUpInstance != nil {
                    self.borderDiagonalUp = borderDiagonalUpInstance! as? LineFormat
                }
            }
        }
        let borderDiagonalDownValue = source["borderDiagonalDown"]
        if borderDiagonalDownValue != nil {
            let borderDiagonalDownDictionaryValue = borderDiagonalDownValue! as? [String:Any]
            if borderDiagonalDownDictionaryValue != nil {
                let (borderDiagonalDownInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, borderDiagonalDownDictionaryValue!)
                if error == nil && borderDiagonalDownInstance != nil {
                    self.borderDiagonalDown = borderDiagonalDownInstance! as? LineFormat
                }
            }
        }
        let columnIndexValue = source["columnIndex"]
        if columnIndexValue != nil {
            self.columnIndex = columnIndexValue! as? Int
        }
        let rowIndexValue = source["rowIndex"]
        if rowIndexValue != nil {
            self.rowIndex = rowIndexValue! as? Int
        }
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

}

