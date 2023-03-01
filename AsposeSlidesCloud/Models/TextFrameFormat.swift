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


/** Contains the TextFrame&#39;s formatting properties. */
public class TextFrameFormat: Codable {

    public enum Transform: String, Codable { 
        case _none = "None"
        case plain = "Plain"
        case stop = "Stop"
        case triangle = "Triangle"
        case triangleInverted = "TriangleInverted"
        case chevron = "Chevron"
        case chevronInverted = "ChevronInverted"
        case ringInside = "RingInside"
        case ringOutside = "RingOutside"
        case archUp = "ArchUp"
        case archDown = "ArchDown"
        case circle = "Circle"
        case button = "Button"
        case archUpPour = "ArchUpPour"
        case archDownPour = "ArchDownPour"
        case circlePour = "CirclePour"
        case buttonPour = "ButtonPour"
        case curveUp = "CurveUp"
        case curveDown = "CurveDown"
        case canUp = "CanUp"
        case canDown = "CanDown"
        case wave1 = "Wave1"
        case wave2 = "Wave2"
        case doubleWave1 = "DoubleWave1"
        case wave4 = "Wave4"
        case inflate = "Inflate"
        case deflate = "Deflate"
        case inflateBottom = "InflateBottom"
        case deflateBottom = "DeflateBottom"
        case inflateTop = "InflateTop"
        case deflateTop = "DeflateTop"
        case deflateInflate = "DeflateInflate"
        case deflateInflateDeflate = "DeflateInflateDeflate"
        case fadeRight = "FadeRight"
        case fadeLeft = "FadeLeft"
        case fadeUp = "FadeUp"
        case fadeDown = "FadeDown"
        case slantUp = "SlantUp"
        case slantDown = "SlantDown"
        case cascadeUp = "CascadeUp"
        case cascadeDown = "CascadeDown"
        case custom = "Custom"
        case notDefined = "NotDefined"
    }
    public enum WrapText: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum AnchoringType: String, Codable { 
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
        case justified = "Justified"
        case distributed = "Distributed"
        case notDefined = "NotDefined"
    }
    public enum CenterText: String, Codable { 
        case _false = "False"
        case _true = "True"
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
    public enum AutofitType: String, Codable { 
        case _none = "None"
        case normal = "Normal"
        case shape = "Shape"
        case notDefined = "NotDefined"
    }
    /** Represents 3d effect properties for a text. */
    public var threeDFormat: ThreeDFormat?
    /** Gets or sets text wrapping shape. */
    public var transform: Transform?
    /** Left margin. Left margin. */
    public var marginLeft: Double?
    /** Right margin. */
    public var marginRight: Double?
    /** Top margin. */
    public var marginTop: Double?
    /** Bottom margin. */
    public var marginBottom: Double?
    /** True if text is wrapped at TextFrame&#39;s margins. */
    public var wrapText: WrapText?
    /** Returns or sets vertical anchor text in a TextFrame. */
    public var anchoringType: AnchoringType?
    /** If True then text should be centered in box horizontally. */
    public var centerText: CenterText?
    /** Determines text orientation. The resulted value of visual text rotation summarized from this property and custom angle in property RotationAngle. */
    public var textVerticalType: TextVerticalType?
    /** Returns or sets text&#39;s auto-fit mode. */
    public var autofitType: AutofitType?
    /** Returns or sets number of columns in the text area. This value must be a positive number. Otherwise, the value will be set to zero.  Value 0 means undefined value. */
    public var columnCount: Int?
    /** Returns or sets the space between text columns in the text area (in points). This should only apply  when there is more than 1 column present. This value must be a positive number. Otherwise, the value will be set to zero.  */
    public var columnSpacing: Double?
    /** Returns or set keeping text out of 3D scene entirely. */
    public var keepTextFlat: Bool?
    /** Specifies the custom rotation that is being applied to the text within the bounding box. */
    public var rotationAngle: Double?
    /** Default portion format. */
    public var defaultParagraphFormat: ParagraphFormat?

    func fillValues(_ source: [String:Any]) throws {
        let threeDFormatValue = source["threeDFormat"] ?? source["ThreeDFormat"]
        if threeDFormatValue != nil {
            let threeDFormatDictionaryValue = threeDFormatValue! as? [String:Any]
            if threeDFormatDictionaryValue != nil {
                let (threeDFormatInstance, error) = ClassRegistry.getClassFromDictionary(ThreeDFormat.self, threeDFormatDictionaryValue!)
                if error == nil && threeDFormatInstance != nil {
                    self.threeDFormat = threeDFormatInstance! as? ThreeDFormat
                }
            }
        }
        let transformValue = source["transform"] ?? source["Transform"]
        if transformValue != nil {
            let transformStringValue = transformValue! as? String
            if transformStringValue != nil {
                let transformEnumValue = Transform(rawValue: transformStringValue!)
                if transformEnumValue != nil {
                    self.transform = transformEnumValue!
                }
            }
        }
        let marginLeftValue = source["marginLeft"] ?? source["MarginLeft"]
        if marginLeftValue != nil {
            self.marginLeft = marginLeftValue! as? Double
        }
        let marginRightValue = source["marginRight"] ?? source["MarginRight"]
        if marginRightValue != nil {
            self.marginRight = marginRightValue! as? Double
        }
        let marginTopValue = source["marginTop"] ?? source["MarginTop"]
        if marginTopValue != nil {
            self.marginTop = marginTopValue! as? Double
        }
        let marginBottomValue = source["marginBottom"] ?? source["MarginBottom"]
        if marginBottomValue != nil {
            self.marginBottom = marginBottomValue! as? Double
        }
        let wrapTextValue = source["wrapText"] ?? source["WrapText"]
        if wrapTextValue != nil {
            let wrapTextStringValue = wrapTextValue! as? String
            if wrapTextStringValue != nil {
                let wrapTextEnumValue = WrapText(rawValue: wrapTextStringValue!)
                if wrapTextEnumValue != nil {
                    self.wrapText = wrapTextEnumValue!
                }
            }
        }
        let anchoringTypeValue = source["anchoringType"] ?? source["AnchoringType"]
        if anchoringTypeValue != nil {
            let anchoringTypeStringValue = anchoringTypeValue! as? String
            if anchoringTypeStringValue != nil {
                let anchoringTypeEnumValue = AnchoringType(rawValue: anchoringTypeStringValue!)
                if anchoringTypeEnumValue != nil {
                    self.anchoringType = anchoringTypeEnumValue!
                }
            }
        }
        let centerTextValue = source["centerText"] ?? source["CenterText"]
        if centerTextValue != nil {
            let centerTextStringValue = centerTextValue! as? String
            if centerTextStringValue != nil {
                let centerTextEnumValue = CenterText(rawValue: centerTextStringValue!)
                if centerTextEnumValue != nil {
                    self.centerText = centerTextEnumValue!
                }
            }
        }
        let textVerticalTypeValue = source["textVerticalType"] ?? source["TextVerticalType"]
        if textVerticalTypeValue != nil {
            let textVerticalTypeStringValue = textVerticalTypeValue! as? String
            if textVerticalTypeStringValue != nil {
                let textVerticalTypeEnumValue = TextVerticalType(rawValue: textVerticalTypeStringValue!)
                if textVerticalTypeEnumValue != nil {
                    self.textVerticalType = textVerticalTypeEnumValue!
                }
            }
        }
        let autofitTypeValue = source["autofitType"] ?? source["AutofitType"]
        if autofitTypeValue != nil {
            let autofitTypeStringValue = autofitTypeValue! as? String
            if autofitTypeStringValue != nil {
                let autofitTypeEnumValue = AutofitType(rawValue: autofitTypeStringValue!)
                if autofitTypeEnumValue != nil {
                    self.autofitType = autofitTypeEnumValue!
                }
            }
        }
        let columnCountValue = source["columnCount"] ?? source["ColumnCount"]
        if columnCountValue != nil {
            self.columnCount = columnCountValue! as? Int
        }
        let columnSpacingValue = source["columnSpacing"] ?? source["ColumnSpacing"]
        if columnSpacingValue != nil {
            self.columnSpacing = columnSpacingValue! as? Double
        }
        let keepTextFlatValue = source["keepTextFlat"] ?? source["KeepTextFlat"]
        if keepTextFlatValue != nil {
            self.keepTextFlat = keepTextFlatValue! as? Bool
        }
        let rotationAngleValue = source["rotationAngle"] ?? source["RotationAngle"]
        if rotationAngleValue != nil {
            self.rotationAngle = rotationAngleValue! as? Double
        }
        let defaultParagraphFormatValue = source["defaultParagraphFormat"] ?? source["DefaultParagraphFormat"]
        if defaultParagraphFormatValue != nil {
            let defaultParagraphFormatDictionaryValue = defaultParagraphFormatValue! as? [String:Any]
            if defaultParagraphFormatDictionaryValue != nil {
                let (defaultParagraphFormatInstance, error) = ClassRegistry.getClassFromDictionary(ParagraphFormat.self, defaultParagraphFormatDictionaryValue!)
                if error == nil && defaultParagraphFormatInstance != nil {
                    self.defaultParagraphFormat = defaultParagraphFormatInstance! as? ParagraphFormat
                }
            }
        }
    }

    public init(threeDFormat: ThreeDFormat? = nil, transform: Transform? = nil, marginLeft: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, marginBottom: Double? = nil, wrapText: WrapText? = nil, anchoringType: AnchoringType? = nil, centerText: CenterText? = nil, textVerticalType: TextVerticalType? = nil, autofitType: AutofitType? = nil, columnCount: Int? = nil, columnSpacing: Double? = nil, keepTextFlat: Bool? = nil, rotationAngle: Double? = nil, defaultParagraphFormat: ParagraphFormat? = nil) {
        self.threeDFormat = threeDFormat
        self.transform = transform
        self.marginLeft = marginLeft
        self.marginRight = marginRight
        self.marginTop = marginTop
        self.marginBottom = marginBottom
        self.wrapText = wrapText
        self.anchoringType = anchoringType
        self.centerText = centerText
        self.textVerticalType = textVerticalType
        self.autofitType = autofitType
        self.columnCount = columnCount
        self.columnSpacing = columnSpacing
        self.keepTextFlat = keepTextFlat
        self.rotationAngle = rotationAngle
        self.defaultParagraphFormat = defaultParagraphFormat
    }

    private enum CodingKeys: String, CodingKey {
        case threeDFormat
        case transform
        case marginLeft
        case marginRight
        case marginTop
        case marginBottom
        case wrapText
        case anchoringType
        case centerText
        case textVerticalType
        case autofitType
        case columnCount
        case columnSpacing
        case keepTextFlat
        case rotationAngle
        case defaultParagraphFormat
    }

}

