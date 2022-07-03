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


/** Represents portion format. */
public class PortionFormat: Codable {

    public enum FontBold: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum FontItalic: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum FontUnderline: String, Codable { 
        case _none = "None"
        case words = "Words"
        case single = "Single"
        case double = "Double"
        case heavy = "Heavy"
        case dotted = "Dotted"
        case heavyDotted = "HeavyDotted"
        case dashed = "Dashed"
        case heavyDashed = "HeavyDashed"
        case longDashed = "LongDashed"
        case heavyLongDashed = "HeavyLongDashed"
        case dotDash = "DotDash"
        case heavyDotDash = "HeavyDotDash"
        case dotDotDash = "DotDotDash"
        case heavyDotDotDash = "HeavyDotDotDash"
        case wavy = "Wavy"
        case heavyWavy = "HeavyWavy"
        case doubleWavy = "DoubleWavy"
        case notDefined = "NotDefined"
    }
    public enum StrikethroughType: String, Codable { 
        case _none = "None"
        case single = "Single"
        case double = "Double"
        case notDefined = "NotDefined"
    }
    public enum TextCapType: String, Codable { 
        case _none = "None"
        case small = "Small"
        case all = "All"
        case notDefined = "NotDefined"
    }
    public enum NormaliseHeight: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum ProofDisabled: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum Kumimoji: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum IsHardUnderlineFill: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum IsHardUnderlineLine: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    /** True for bold font. */
    public var fontBold: FontBold?
    /** True for italic font. */
    public var fontItalic: FontItalic?
    /** Text underline type. */
    public var fontUnderline: FontUnderline?
    /** Text strikethrough type. */
    public var strikethroughType: StrikethroughType?
    /** Text capitalization type. */
    public var textCapType: TextCapType?
    /** Superscript or subscript of the text. */
    public var escapement: Double?
    /** Intercharacter spacing increment. */
    public var spacing: Double?
    /** Font color. */
    public var fontColor: String?
    /** Highlight color. */
    public var highlightColor: String?
    /** Font height. */
    public var fontHeight: Double?
    /** True to normalize the text. */
    public var normaliseHeight: NormaliseHeight?
    /** True if the text proof should be disabled. */
    public var proofDisabled: ProofDisabled?
    /** True if smart tag should be cleaned. */
    public var smartTagClean: Bool?
    /** Minimal font size for kerning. */
    public var kerningMinimalSize: Double?
    /** True if numbers should ignore East-Asian specific vertical text layout. */
    public var kumimoji: Kumimoji?
    /** Proving language ID. */
    public var languageId: String?
    /** Alternative proving language ID. */
    public var alternativeLanguageId: String?
    /** True if underline style has own FillFormat properties. */
    public var isHardUnderlineFill: IsHardUnderlineFill?
    /** True if underline style has own LineFormat properties. */
    public var isHardUnderlineLine: IsHardUnderlineLine?
    /** Fill format. */
    public var fillFormat: FillFormat?
    /** Effect format. */
    public var effectFormat: EffectFormat?
    /** Line format. */
    public var lineFormat: LineFormat?
    /** Underline fill format. */
    public var underlineFillFormat: FillFormat?
    /** Underline line format. */
    public var underlineLineFormat: LineFormat?
    /** Hyperlink defined for mouse click. */
    public var hyperlinkClick: Hyperlink?
    /** Hyperlink defined for mouse over. */
    public var hyperlinkMouseOver: Hyperlink?
    /** Returns or sets the Latin font info. */
    public var latinFont: String?
    /** Returns or sets the East Asian font info. */
    public var eastAsianFont: String?
    /** Returns or sets the complex script font info. */
    public var complexScriptFont: String?

    func fillValues(_ source: [String:Any]) throws {
        let fontBoldValue = source["fontBold"]
        if fontBoldValue != nil {
            let fontBoldStringValue = fontBoldValue! as? String
            if fontBoldStringValue != nil {
                let fontBoldEnumValue = FontBold(rawValue: fontBoldStringValue!)
                if fontBoldEnumValue != nil {
                    self.fontBold = fontBoldEnumValue!
                }
            }
        }
        let fontItalicValue = source["fontItalic"]
        if fontItalicValue != nil {
            let fontItalicStringValue = fontItalicValue! as? String
            if fontItalicStringValue != nil {
                let fontItalicEnumValue = FontItalic(rawValue: fontItalicStringValue!)
                if fontItalicEnumValue != nil {
                    self.fontItalic = fontItalicEnumValue!
                }
            }
        }
        let fontUnderlineValue = source["fontUnderline"]
        if fontUnderlineValue != nil {
            let fontUnderlineStringValue = fontUnderlineValue! as? String
            if fontUnderlineStringValue != nil {
                let fontUnderlineEnumValue = FontUnderline(rawValue: fontUnderlineStringValue!)
                if fontUnderlineEnumValue != nil {
                    self.fontUnderline = fontUnderlineEnumValue!
                }
            }
        }
        let strikethroughTypeValue = source["strikethroughType"]
        if strikethroughTypeValue != nil {
            let strikethroughTypeStringValue = strikethroughTypeValue! as? String
            if strikethroughTypeStringValue != nil {
                let strikethroughTypeEnumValue = StrikethroughType(rawValue: strikethroughTypeStringValue!)
                if strikethroughTypeEnumValue != nil {
                    self.strikethroughType = strikethroughTypeEnumValue!
                }
            }
        }
        let textCapTypeValue = source["textCapType"]
        if textCapTypeValue != nil {
            let textCapTypeStringValue = textCapTypeValue! as? String
            if textCapTypeStringValue != nil {
                let textCapTypeEnumValue = TextCapType(rawValue: textCapTypeStringValue!)
                if textCapTypeEnumValue != nil {
                    self.textCapType = textCapTypeEnumValue!
                }
            }
        }
        let escapementValue = source["escapement"]
        if escapementValue != nil {
            self.escapement = escapementValue! as? Double
        }
        let spacingValue = source["spacing"]
        if spacingValue != nil {
            self.spacing = spacingValue! as? Double
        }
        let fontColorValue = source["fontColor"]
        if fontColorValue != nil {
            self.fontColor = fontColorValue! as? String
        }
        let highlightColorValue = source["highlightColor"]
        if highlightColorValue != nil {
            self.highlightColor = highlightColorValue! as? String
        }
        let fontHeightValue = source["fontHeight"]
        if fontHeightValue != nil {
            self.fontHeight = fontHeightValue! as? Double
        }
        let normaliseHeightValue = source["normaliseHeight"]
        if normaliseHeightValue != nil {
            let normaliseHeightStringValue = normaliseHeightValue! as? String
            if normaliseHeightStringValue != nil {
                let normaliseHeightEnumValue = NormaliseHeight(rawValue: normaliseHeightStringValue!)
                if normaliseHeightEnumValue != nil {
                    self.normaliseHeight = normaliseHeightEnumValue!
                }
            }
        }
        let proofDisabledValue = source["proofDisabled"]
        if proofDisabledValue != nil {
            let proofDisabledStringValue = proofDisabledValue! as? String
            if proofDisabledStringValue != nil {
                let proofDisabledEnumValue = ProofDisabled(rawValue: proofDisabledStringValue!)
                if proofDisabledEnumValue != nil {
                    self.proofDisabled = proofDisabledEnumValue!
                }
            }
        }
        let smartTagCleanValue = source["smartTagClean"]
        if smartTagCleanValue != nil {
            self.smartTagClean = smartTagCleanValue! as? Bool
        }
        let kerningMinimalSizeValue = source["kerningMinimalSize"]
        if kerningMinimalSizeValue != nil {
            self.kerningMinimalSize = kerningMinimalSizeValue! as? Double
        }
        let kumimojiValue = source["kumimoji"]
        if kumimojiValue != nil {
            let kumimojiStringValue = kumimojiValue! as? String
            if kumimojiStringValue != nil {
                let kumimojiEnumValue = Kumimoji(rawValue: kumimojiStringValue!)
                if kumimojiEnumValue != nil {
                    self.kumimoji = kumimojiEnumValue!
                }
            }
        }
        let languageIdValue = source["languageId"]
        if languageIdValue != nil {
            self.languageId = languageIdValue! as? String
        }
        let alternativeLanguageIdValue = source["alternativeLanguageId"]
        if alternativeLanguageIdValue != nil {
            self.alternativeLanguageId = alternativeLanguageIdValue! as? String
        }
        let isHardUnderlineFillValue = source["isHardUnderlineFill"]
        if isHardUnderlineFillValue != nil {
            let isHardUnderlineFillStringValue = isHardUnderlineFillValue! as? String
            if isHardUnderlineFillStringValue != nil {
                let isHardUnderlineFillEnumValue = IsHardUnderlineFill(rawValue: isHardUnderlineFillStringValue!)
                if isHardUnderlineFillEnumValue != nil {
                    self.isHardUnderlineFill = isHardUnderlineFillEnumValue!
                }
            }
        }
        let isHardUnderlineLineValue = source["isHardUnderlineLine"]
        if isHardUnderlineLineValue != nil {
            let isHardUnderlineLineStringValue = isHardUnderlineLineValue! as? String
            if isHardUnderlineLineStringValue != nil {
                let isHardUnderlineLineEnumValue = IsHardUnderlineLine(rawValue: isHardUnderlineLineStringValue!)
                if isHardUnderlineLineEnumValue != nil {
                    self.isHardUnderlineLine = isHardUnderlineLineEnumValue!
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
        let effectFormatValue = source["effectFormat"]
        if effectFormatValue != nil {
            let effectFormatDictionaryValue = effectFormatValue! as? [String:Any]
            if effectFormatDictionaryValue != nil {
                let (effectFormatInstance, error) = ClassRegistry.getClassFromDictionary(EffectFormat.self, effectFormatDictionaryValue!)
                if error == nil && effectFormatInstance != nil {
                    self.effectFormat = effectFormatInstance! as? EffectFormat
                }
            }
        }
        let lineFormatValue = source["lineFormat"]
        if lineFormatValue != nil {
            let lineFormatDictionaryValue = lineFormatValue! as? [String:Any]
            if lineFormatDictionaryValue != nil {
                let (lineFormatInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, lineFormatDictionaryValue!)
                if error == nil && lineFormatInstance != nil {
                    self.lineFormat = lineFormatInstance! as? LineFormat
                }
            }
        }
        let underlineFillFormatValue = source["underlineFillFormat"]
        if underlineFillFormatValue != nil {
            let underlineFillFormatDictionaryValue = underlineFillFormatValue! as? [String:Any]
            if underlineFillFormatDictionaryValue != nil {
                let (underlineFillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, underlineFillFormatDictionaryValue!)
                if error == nil && underlineFillFormatInstance != nil {
                    self.underlineFillFormat = underlineFillFormatInstance! as? FillFormat
                }
            }
        }
        let underlineLineFormatValue = source["underlineLineFormat"]
        if underlineLineFormatValue != nil {
            let underlineLineFormatDictionaryValue = underlineLineFormatValue! as? [String:Any]
            if underlineLineFormatDictionaryValue != nil {
                let (underlineLineFormatInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, underlineLineFormatDictionaryValue!)
                if error == nil && underlineLineFormatInstance != nil {
                    self.underlineLineFormat = underlineLineFormatInstance! as? LineFormat
                }
            }
        }
        let hyperlinkClickValue = source["hyperlinkClick"]
        if hyperlinkClickValue != nil {
            let hyperlinkClickDictionaryValue = hyperlinkClickValue! as? [String:Any]
            if hyperlinkClickDictionaryValue != nil {
                let (hyperlinkClickInstance, error) = ClassRegistry.getClassFromDictionary(Hyperlink.self, hyperlinkClickDictionaryValue!)
                if error == nil && hyperlinkClickInstance != nil {
                    self.hyperlinkClick = hyperlinkClickInstance! as? Hyperlink
                }
            }
        }
        let hyperlinkMouseOverValue = source["hyperlinkMouseOver"]
        if hyperlinkMouseOverValue != nil {
            let hyperlinkMouseOverDictionaryValue = hyperlinkMouseOverValue! as? [String:Any]
            if hyperlinkMouseOverDictionaryValue != nil {
                let (hyperlinkMouseOverInstance, error) = ClassRegistry.getClassFromDictionary(Hyperlink.self, hyperlinkMouseOverDictionaryValue!)
                if error == nil && hyperlinkMouseOverInstance != nil {
                    self.hyperlinkMouseOver = hyperlinkMouseOverInstance! as? Hyperlink
                }
            }
        }
        let latinFontValue = source["latinFont"]
        if latinFontValue != nil {
            self.latinFont = latinFontValue! as? String
        }
        let eastAsianFontValue = source["eastAsianFont"]
        if eastAsianFontValue != nil {
            self.eastAsianFont = eastAsianFontValue! as? String
        }
        let complexScriptFontValue = source["complexScriptFont"]
        if complexScriptFontValue != nil {
            self.complexScriptFont = complexScriptFontValue! as? String
        }
    }

    public init(fontBold: FontBold? = nil, fontItalic: FontItalic? = nil, fontUnderline: FontUnderline? = nil, strikethroughType: StrikethroughType? = nil, textCapType: TextCapType? = nil, escapement: Double? = nil, spacing: Double? = nil, fontColor: String? = nil, highlightColor: String? = nil, fontHeight: Double? = nil, normaliseHeight: NormaliseHeight? = nil, proofDisabled: ProofDisabled? = nil, smartTagClean: Bool? = nil, kerningMinimalSize: Double? = nil, kumimoji: Kumimoji? = nil, languageId: String? = nil, alternativeLanguageId: String? = nil, isHardUnderlineFill: IsHardUnderlineFill? = nil, isHardUnderlineLine: IsHardUnderlineLine? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, underlineFillFormat: FillFormat? = nil, underlineLineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, latinFont: String? = nil, eastAsianFont: String? = nil, complexScriptFont: String? = nil) {
        self.fontBold = fontBold
        self.fontItalic = fontItalic
        self.fontUnderline = fontUnderline
        self.strikethroughType = strikethroughType
        self.textCapType = textCapType
        self.escapement = escapement
        self.spacing = spacing
        self.fontColor = fontColor
        self.highlightColor = highlightColor
        self.fontHeight = fontHeight
        self.normaliseHeight = normaliseHeight
        self.proofDisabled = proofDisabled
        self.smartTagClean = smartTagClean
        self.kerningMinimalSize = kerningMinimalSize
        self.kumimoji = kumimoji
        self.languageId = languageId
        self.alternativeLanguageId = alternativeLanguageId
        self.isHardUnderlineFill = isHardUnderlineFill
        self.isHardUnderlineLine = isHardUnderlineLine
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
        self.underlineFillFormat = underlineFillFormat
        self.underlineLineFormat = underlineLineFormat
        self.hyperlinkClick = hyperlinkClick
        self.hyperlinkMouseOver = hyperlinkMouseOver
        self.latinFont = latinFont
        self.eastAsianFont = eastAsianFont
        self.complexScriptFont = complexScriptFont
    }

    private enum CodingKeys: String, CodingKey {
        case fontBold
        case fontItalic
        case fontUnderline
        case strikethroughType
        case textCapType
        case escapement
        case spacing
        case fontColor
        case highlightColor
        case fontHeight
        case normaliseHeight
        case proofDisabled
        case smartTagClean
        case kerningMinimalSize
        case kumimoji
        case languageId
        case alternativeLanguageId
        case isHardUnderlineFill
        case isHardUnderlineLine
        case fillFormat
        case effectFormat
        case lineFormat
        case underlineFillFormat
        case underlineLineFormat
        case hyperlinkClick
        case hyperlinkMouseOver
        case latinFont
        case eastAsianFont
        case complexScriptFont
    }

}

