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


/** Represents portion resource */
public class Portion: ResourceBase {

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
    /** Text. */
    public var text: String?
    /** Math paragraph. */
    public var mathParagraph: MathParagraph?
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

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let textValue = source["text"] ?? source["Text"]
        if textValue != nil {
            self.text = textValue! as? String
        }
        let mathParagraphValue = source["mathParagraph"] ?? source["MathParagraph"]
        if mathParagraphValue != nil {
            let mathParagraphDictionaryValue = mathParagraphValue! as? [String:Any]
            if mathParagraphDictionaryValue != nil {
                let (mathParagraphInstance, error) = ClassRegistry.getClassFromDictionary(MathParagraph.self, mathParagraphDictionaryValue!)
                if error == nil && mathParagraphInstance != nil {
                    self.mathParagraph = mathParagraphInstance! as? MathParagraph
                }
            }
        }
        let fontBoldValue = source["fontBold"] ?? source["FontBold"]
        if fontBoldValue != nil {
            let fontBoldStringValue = fontBoldValue! as? String
            if fontBoldStringValue != nil {
                let fontBoldEnumValue = FontBold(rawValue: fontBoldStringValue!)
                if fontBoldEnumValue != nil {
                    self.fontBold = fontBoldEnumValue!
                }
            }
        }
        let fontItalicValue = source["fontItalic"] ?? source["FontItalic"]
        if fontItalicValue != nil {
            let fontItalicStringValue = fontItalicValue! as? String
            if fontItalicStringValue != nil {
                let fontItalicEnumValue = FontItalic(rawValue: fontItalicStringValue!)
                if fontItalicEnumValue != nil {
                    self.fontItalic = fontItalicEnumValue!
                }
            }
        }
        let fontUnderlineValue = source["fontUnderline"] ?? source["FontUnderline"]
        if fontUnderlineValue != nil {
            let fontUnderlineStringValue = fontUnderlineValue! as? String
            if fontUnderlineStringValue != nil {
                let fontUnderlineEnumValue = FontUnderline(rawValue: fontUnderlineStringValue!)
                if fontUnderlineEnumValue != nil {
                    self.fontUnderline = fontUnderlineEnumValue!
                }
            }
        }
        let strikethroughTypeValue = source["strikethroughType"] ?? source["StrikethroughType"]
        if strikethroughTypeValue != nil {
            let strikethroughTypeStringValue = strikethroughTypeValue! as? String
            if strikethroughTypeStringValue != nil {
                let strikethroughTypeEnumValue = StrikethroughType(rawValue: strikethroughTypeStringValue!)
                if strikethroughTypeEnumValue != nil {
                    self.strikethroughType = strikethroughTypeEnumValue!
                }
            }
        }
        let textCapTypeValue = source["textCapType"] ?? source["TextCapType"]
        if textCapTypeValue != nil {
            let textCapTypeStringValue = textCapTypeValue! as? String
            if textCapTypeStringValue != nil {
                let textCapTypeEnumValue = TextCapType(rawValue: textCapTypeStringValue!)
                if textCapTypeEnumValue != nil {
                    self.textCapType = textCapTypeEnumValue!
                }
            }
        }
        let escapementValue = source["escapement"] ?? source["Escapement"]
        if escapementValue != nil {
            self.escapement = escapementValue! as? Double
        }
        let spacingValue = source["spacing"] ?? source["Spacing"]
        if spacingValue != nil {
            self.spacing = spacingValue! as? Double
        }
        let fontColorValue = source["fontColor"] ?? source["FontColor"]
        if fontColorValue != nil {
            self.fontColor = fontColorValue! as? String
        }
        let highlightColorValue = source["highlightColor"] ?? source["HighlightColor"]
        if highlightColorValue != nil {
            self.highlightColor = highlightColorValue! as? String
        }
        let fontHeightValue = source["fontHeight"] ?? source["FontHeight"]
        if fontHeightValue != nil {
            self.fontHeight = fontHeightValue! as? Double
        }
        let normaliseHeightValue = source["normaliseHeight"] ?? source["NormaliseHeight"]
        if normaliseHeightValue != nil {
            let normaliseHeightStringValue = normaliseHeightValue! as? String
            if normaliseHeightStringValue != nil {
                let normaliseHeightEnumValue = NormaliseHeight(rawValue: normaliseHeightStringValue!)
                if normaliseHeightEnumValue != nil {
                    self.normaliseHeight = normaliseHeightEnumValue!
                }
            }
        }
        let proofDisabledValue = source["proofDisabled"] ?? source["ProofDisabled"]
        if proofDisabledValue != nil {
            let proofDisabledStringValue = proofDisabledValue! as? String
            if proofDisabledStringValue != nil {
                let proofDisabledEnumValue = ProofDisabled(rawValue: proofDisabledStringValue!)
                if proofDisabledEnumValue != nil {
                    self.proofDisabled = proofDisabledEnumValue!
                }
            }
        }
        let smartTagCleanValue = source["smartTagClean"] ?? source["SmartTagClean"]
        if smartTagCleanValue != nil {
            self.smartTagClean = smartTagCleanValue! as? Bool
        }
        let kerningMinimalSizeValue = source["kerningMinimalSize"] ?? source["KerningMinimalSize"]
        if kerningMinimalSizeValue != nil {
            self.kerningMinimalSize = kerningMinimalSizeValue! as? Double
        }
        let kumimojiValue = source["kumimoji"] ?? source["Kumimoji"]
        if kumimojiValue != nil {
            let kumimojiStringValue = kumimojiValue! as? String
            if kumimojiStringValue != nil {
                let kumimojiEnumValue = Kumimoji(rawValue: kumimojiStringValue!)
                if kumimojiEnumValue != nil {
                    self.kumimoji = kumimojiEnumValue!
                }
            }
        }
        let languageIdValue = source["languageId"] ?? source["LanguageId"]
        if languageIdValue != nil {
            self.languageId = languageIdValue! as? String
        }
        let alternativeLanguageIdValue = source["alternativeLanguageId"] ?? source["AlternativeLanguageId"]
        if alternativeLanguageIdValue != nil {
            self.alternativeLanguageId = alternativeLanguageIdValue! as? String
        }
        let isHardUnderlineFillValue = source["isHardUnderlineFill"] ?? source["IsHardUnderlineFill"]
        if isHardUnderlineFillValue != nil {
            let isHardUnderlineFillStringValue = isHardUnderlineFillValue! as? String
            if isHardUnderlineFillStringValue != nil {
                let isHardUnderlineFillEnumValue = IsHardUnderlineFill(rawValue: isHardUnderlineFillStringValue!)
                if isHardUnderlineFillEnumValue != nil {
                    self.isHardUnderlineFill = isHardUnderlineFillEnumValue!
                }
            }
        }
        let isHardUnderlineLineValue = source["isHardUnderlineLine"] ?? source["IsHardUnderlineLine"]
        if isHardUnderlineLineValue != nil {
            let isHardUnderlineLineStringValue = isHardUnderlineLineValue! as? String
            if isHardUnderlineLineStringValue != nil {
                let isHardUnderlineLineEnumValue = IsHardUnderlineLine(rawValue: isHardUnderlineLineStringValue!)
                if isHardUnderlineLineEnumValue != nil {
                    self.isHardUnderlineLine = isHardUnderlineLineEnumValue!
                }
            }
        }
        let fillFormatValue = source["fillFormat"] ?? source["FillFormat"]
        if fillFormatValue != nil {
            let fillFormatDictionaryValue = fillFormatValue! as? [String:Any]
            if fillFormatDictionaryValue != nil {
                let (fillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, fillFormatDictionaryValue!)
                if error == nil && fillFormatInstance != nil {
                    self.fillFormat = fillFormatInstance! as? FillFormat
                }
            }
        }
        let effectFormatValue = source["effectFormat"] ?? source["EffectFormat"]
        if effectFormatValue != nil {
            let effectFormatDictionaryValue = effectFormatValue! as? [String:Any]
            if effectFormatDictionaryValue != nil {
                let (effectFormatInstance, error) = ClassRegistry.getClassFromDictionary(EffectFormat.self, effectFormatDictionaryValue!)
                if error == nil && effectFormatInstance != nil {
                    self.effectFormat = effectFormatInstance! as? EffectFormat
                }
            }
        }
        let lineFormatValue = source["lineFormat"] ?? source["LineFormat"]
        if lineFormatValue != nil {
            let lineFormatDictionaryValue = lineFormatValue! as? [String:Any]
            if lineFormatDictionaryValue != nil {
                let (lineFormatInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, lineFormatDictionaryValue!)
                if error == nil && lineFormatInstance != nil {
                    self.lineFormat = lineFormatInstance! as? LineFormat
                }
            }
        }
        let underlineFillFormatValue = source["underlineFillFormat"] ?? source["UnderlineFillFormat"]
        if underlineFillFormatValue != nil {
            let underlineFillFormatDictionaryValue = underlineFillFormatValue! as? [String:Any]
            if underlineFillFormatDictionaryValue != nil {
                let (underlineFillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, underlineFillFormatDictionaryValue!)
                if error == nil && underlineFillFormatInstance != nil {
                    self.underlineFillFormat = underlineFillFormatInstance! as? FillFormat
                }
            }
        }
        let underlineLineFormatValue = source["underlineLineFormat"] ?? source["UnderlineLineFormat"]
        if underlineLineFormatValue != nil {
            let underlineLineFormatDictionaryValue = underlineLineFormatValue! as? [String:Any]
            if underlineLineFormatDictionaryValue != nil {
                let (underlineLineFormatInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, underlineLineFormatDictionaryValue!)
                if error == nil && underlineLineFormatInstance != nil {
                    self.underlineLineFormat = underlineLineFormatInstance! as? LineFormat
                }
            }
        }
        let hyperlinkClickValue = source["hyperlinkClick"] ?? source["HyperlinkClick"]
        if hyperlinkClickValue != nil {
            let hyperlinkClickDictionaryValue = hyperlinkClickValue! as? [String:Any]
            if hyperlinkClickDictionaryValue != nil {
                let (hyperlinkClickInstance, error) = ClassRegistry.getClassFromDictionary(Hyperlink.self, hyperlinkClickDictionaryValue!)
                if error == nil && hyperlinkClickInstance != nil {
                    self.hyperlinkClick = hyperlinkClickInstance! as? Hyperlink
                }
            }
        }
        let hyperlinkMouseOverValue = source["hyperlinkMouseOver"] ?? source["HyperlinkMouseOver"]
        if hyperlinkMouseOverValue != nil {
            let hyperlinkMouseOverDictionaryValue = hyperlinkMouseOverValue! as? [String:Any]
            if hyperlinkMouseOverDictionaryValue != nil {
                let (hyperlinkMouseOverInstance, error) = ClassRegistry.getClassFromDictionary(Hyperlink.self, hyperlinkMouseOverDictionaryValue!)
                if error == nil && hyperlinkMouseOverInstance != nil {
                    self.hyperlinkMouseOver = hyperlinkMouseOverInstance! as? Hyperlink
                }
            }
        }
        let latinFontValue = source["latinFont"] ?? source["LatinFont"]
        if latinFontValue != nil {
            self.latinFont = latinFontValue! as? String
        }
        let eastAsianFontValue = source["eastAsianFont"] ?? source["EastAsianFont"]
        if eastAsianFontValue != nil {
            self.eastAsianFont = eastAsianFontValue! as? String
        }
        let complexScriptFontValue = source["complexScriptFont"] ?? source["ComplexScriptFont"]
        if complexScriptFontValue != nil {
            self.complexScriptFont = complexScriptFontValue! as? String
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, text: String? = nil, mathParagraph: MathParagraph? = nil, fontBold: FontBold? = nil, fontItalic: FontItalic? = nil, fontUnderline: FontUnderline? = nil, strikethroughType: StrikethroughType? = nil, textCapType: TextCapType? = nil, escapement: Double? = nil, spacing: Double? = nil, fontColor: String? = nil, highlightColor: String? = nil, fontHeight: Double? = nil, normaliseHeight: NormaliseHeight? = nil, proofDisabled: ProofDisabled? = nil, smartTagClean: Bool? = nil, kerningMinimalSize: Double? = nil, kumimoji: Kumimoji? = nil, languageId: String? = nil, alternativeLanguageId: String? = nil, isHardUnderlineFill: IsHardUnderlineFill? = nil, isHardUnderlineLine: IsHardUnderlineLine? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, underlineFillFormat: FillFormat? = nil, underlineLineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, latinFont: String? = nil, eastAsianFont: String? = nil, complexScriptFont: String? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.text = text
        self.mathParagraph = mathParagraph
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
        case text
        case mathParagraph
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

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        text = try? values.decode(String.self, forKey: .text)
        mathParagraph = try? values.decode(MathParagraph.self, forKey: .mathParagraph)
        fontBold = try? values.decode(FontBold.self, forKey: .fontBold)
        fontItalic = try? values.decode(FontItalic.self, forKey: .fontItalic)
        fontUnderline = try? values.decode(FontUnderline.self, forKey: .fontUnderline)
        strikethroughType = try? values.decode(StrikethroughType.self, forKey: .strikethroughType)
        textCapType = try? values.decode(TextCapType.self, forKey: .textCapType)
        escapement = try? values.decode(Double.self, forKey: .escapement)
        spacing = try? values.decode(Double.self, forKey: .spacing)
        fontColor = try? values.decode(String.self, forKey: .fontColor)
        highlightColor = try? values.decode(String.self, forKey: .highlightColor)
        fontHeight = try? values.decode(Double.self, forKey: .fontHeight)
        normaliseHeight = try? values.decode(NormaliseHeight.self, forKey: .normaliseHeight)
        proofDisabled = try? values.decode(ProofDisabled.self, forKey: .proofDisabled)
        smartTagClean = try? values.decode(Bool.self, forKey: .smartTagClean)
        kerningMinimalSize = try? values.decode(Double.self, forKey: .kerningMinimalSize)
        kumimoji = try? values.decode(Kumimoji.self, forKey: .kumimoji)
        languageId = try? values.decode(String.self, forKey: .languageId)
        alternativeLanguageId = try? values.decode(String.self, forKey: .alternativeLanguageId)
        isHardUnderlineFill = try? values.decode(IsHardUnderlineFill.self, forKey: .isHardUnderlineFill)
        isHardUnderlineLine = try? values.decode(IsHardUnderlineLine.self, forKey: .isHardUnderlineLine)
        fillFormat = try? values.decode(FillFormat.self, forKey: .fillFormat)
        effectFormat = try? values.decode(EffectFormat.self, forKey: .effectFormat)
        lineFormat = try? values.decode(LineFormat.self, forKey: .lineFormat)
        underlineFillFormat = try? values.decode(FillFormat.self, forKey: .underlineFillFormat)
        underlineLineFormat = try? values.decode(LineFormat.self, forKey: .underlineLineFormat)
        hyperlinkClick = try? values.decode(Hyperlink.self, forKey: .hyperlinkClick)
        hyperlinkMouseOver = try? values.decode(Hyperlink.self, forKey: .hyperlinkMouseOver)
        latinFont = try? values.decode(String.self, forKey: .latinFont)
        eastAsianFont = try? values.decode(String.self, forKey: .eastAsianFont)
        complexScriptFont = try? values.decode(String.self, forKey: .complexScriptFont)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (text != nil) {
            try? container.encode(text, forKey: .text)
        }
        if (mathParagraph != nil) {
            try? container.encode(mathParagraph, forKey: .mathParagraph)
        }
        if (fontBold != nil) {
            try? container.encode(fontBold, forKey: .fontBold)
        }
        if (fontItalic != nil) {
            try? container.encode(fontItalic, forKey: .fontItalic)
        }
        if (fontUnderline != nil) {
            try? container.encode(fontUnderline, forKey: .fontUnderline)
        }
        if (strikethroughType != nil) {
            try? container.encode(strikethroughType, forKey: .strikethroughType)
        }
        if (textCapType != nil) {
            try? container.encode(textCapType, forKey: .textCapType)
        }
        if (escapement != nil) {
            try? container.encode(escapement, forKey: .escapement)
        }
        if (spacing != nil) {
            try? container.encode(spacing, forKey: .spacing)
        }
        if (fontColor != nil) {
            try? container.encode(fontColor, forKey: .fontColor)
        }
        if (highlightColor != nil) {
            try? container.encode(highlightColor, forKey: .highlightColor)
        }
        if (fontHeight != nil) {
            try? container.encode(fontHeight, forKey: .fontHeight)
        }
        if (normaliseHeight != nil) {
            try? container.encode(normaliseHeight, forKey: .normaliseHeight)
        }
        if (proofDisabled != nil) {
            try? container.encode(proofDisabled, forKey: .proofDisabled)
        }
        if (smartTagClean != nil) {
            try? container.encode(smartTagClean, forKey: .smartTagClean)
        }
        if (kerningMinimalSize != nil) {
            try? container.encode(kerningMinimalSize, forKey: .kerningMinimalSize)
        }
        if (kumimoji != nil) {
            try? container.encode(kumimoji, forKey: .kumimoji)
        }
        if (languageId != nil) {
            try? container.encode(languageId, forKey: .languageId)
        }
        if (alternativeLanguageId != nil) {
            try? container.encode(alternativeLanguageId, forKey: .alternativeLanguageId)
        }
        if (isHardUnderlineFill != nil) {
            try? container.encode(isHardUnderlineFill, forKey: .isHardUnderlineFill)
        }
        if (isHardUnderlineLine != nil) {
            try? container.encode(isHardUnderlineLine, forKey: .isHardUnderlineLine)
        }
        if (fillFormat != nil) {
            try? container.encode(fillFormat, forKey: .fillFormat)
        }
        if (effectFormat != nil) {
            try? container.encode(effectFormat, forKey: .effectFormat)
        }
        if (lineFormat != nil) {
            try? container.encode(lineFormat, forKey: .lineFormat)
        }
        if (underlineFillFormat != nil) {
            try? container.encode(underlineFillFormat, forKey: .underlineFillFormat)
        }
        if (underlineLineFormat != nil) {
            try? container.encode(underlineLineFormat, forKey: .underlineLineFormat)
        }
        if (hyperlinkClick != nil) {
            try? container.encode(hyperlinkClick, forKey: .hyperlinkClick)
        }
        if (hyperlinkMouseOver != nil) {
            try? container.encode(hyperlinkMouseOver, forKey: .hyperlinkMouseOver)
        }
        if (latinFont != nil) {
            try? container.encode(latinFont, forKey: .latinFont)
        }
        if (eastAsianFont != nil) {
            try? container.encode(eastAsianFont, forKey: .eastAsianFont)
        }
        if (complexScriptFont != nil) {
            try? container.encode(complexScriptFont, forKey: .complexScriptFont)
        }
    }

}

