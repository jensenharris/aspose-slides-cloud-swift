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
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, text: String? = nil, mathParagraph: MathParagraph? = nil, fontBold: FontBold? = nil, fontItalic: FontItalic? = nil, fontUnderline: FontUnderline? = nil, strikethroughType: StrikethroughType? = nil, textCapType: TextCapType? = nil, escapement: Double? = nil, spacing: Double? = nil, fontColor: String? = nil, highlightColor: String? = nil, fontHeight: Double? = nil, normaliseHeight: NormaliseHeight? = nil, proofDisabled: ProofDisabled? = nil, smartTagClean: Bool? = nil, kerningMinimalSize: Double? = nil, kumimoji: Kumimoji? = nil, languageId: String? = nil, alternativeLanguageId: String? = nil, isHardUnderlineFill: IsHardUnderlineFill? = nil, isHardUnderlineLine: IsHardUnderlineLine? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, underlineFillFormat: FillFormat? = nil, underlineLineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil) {
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
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        text = try values.decode(String?.self, forKey: .text)
        mathParagraph = try values.decode(MathParagraph?.self, forKey: .mathParagraph)
        fontBold = try values.decode(FontBold?.self, forKey: .fontBold)
        fontItalic = try values.decode(FontItalic?.self, forKey: .fontItalic)
        fontUnderline = try values.decode(FontUnderline?.self, forKey: .fontUnderline)
        strikethroughType = try values.decode(StrikethroughType?.self, forKey: .strikethroughType)
        textCapType = try values.decode(TextCapType?.self, forKey: .textCapType)
        escapement = try values.decode(Double?.self, forKey: .escapement)
        spacing = try values.decode(Double?.self, forKey: .spacing)
        fontColor = try values.decode(String?.self, forKey: .fontColor)
        highlightColor = try values.decode(String?.self, forKey: .highlightColor)
        fontHeight = try values.decode(Double?.self, forKey: .fontHeight)
        normaliseHeight = try values.decode(NormaliseHeight?.self, forKey: .normaliseHeight)
        proofDisabled = try values.decode(ProofDisabled?.self, forKey: .proofDisabled)
        smartTagClean = try values.decode(Bool?.self, forKey: .smartTagClean)
        kerningMinimalSize = try values.decode(Double?.self, forKey: .kerningMinimalSize)
        kumimoji = try values.decode(Kumimoji?.self, forKey: .kumimoji)
        languageId = try values.decode(String?.self, forKey: .languageId)
        alternativeLanguageId = try values.decode(String?.self, forKey: .alternativeLanguageId)
        isHardUnderlineFill = try values.decode(IsHardUnderlineFill?.self, forKey: .isHardUnderlineFill)
        isHardUnderlineLine = try values.decode(IsHardUnderlineLine?.self, forKey: .isHardUnderlineLine)
        fillFormat = try values.decode(FillFormat?.self, forKey: .fillFormat)
        effectFormat = try values.decode(EffectFormat?.self, forKey: .effectFormat)
        lineFormat = try values.decode(LineFormat?.self, forKey: .lineFormat)
        underlineFillFormat = try values.decode(FillFormat?.self, forKey: .underlineFillFormat)
        underlineLineFormat = try values.decode(LineFormat?.self, forKey: .underlineLineFormat)
        hyperlinkClick = try values.decode(Hyperlink?.self, forKey: .hyperlinkClick)
        hyperlinkMouseOver = try values.decode(Hyperlink?.self, forKey: .hyperlinkMouseOver)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(text, forKey: .text)
        try container.encode(mathParagraph, forKey: .mathParagraph)
        try container.encode(fontBold, forKey: .fontBold)
        try container.encode(fontItalic, forKey: .fontItalic)
        try container.encode(fontUnderline, forKey: .fontUnderline)
        try container.encode(strikethroughType, forKey: .strikethroughType)
        try container.encode(textCapType, forKey: .textCapType)
        try container.encode(escapement, forKey: .escapement)
        try container.encode(spacing, forKey: .spacing)
        try container.encode(fontColor, forKey: .fontColor)
        try container.encode(highlightColor, forKey: .highlightColor)
        try container.encode(fontHeight, forKey: .fontHeight)
        try container.encode(normaliseHeight, forKey: .normaliseHeight)
        try container.encode(proofDisabled, forKey: .proofDisabled)
        try container.encode(smartTagClean, forKey: .smartTagClean)
        try container.encode(kerningMinimalSize, forKey: .kerningMinimalSize)
        try container.encode(kumimoji, forKey: .kumimoji)
        try container.encode(languageId, forKey: .languageId)
        try container.encode(alternativeLanguageId, forKey: .alternativeLanguageId)
        try container.encode(isHardUnderlineFill, forKey: .isHardUnderlineFill)
        try container.encode(isHardUnderlineLine, forKey: .isHardUnderlineLine)
        try container.encode(fillFormat, forKey: .fillFormat)
        try container.encode(effectFormat, forKey: .effectFormat)
        try container.encode(lineFormat, forKey: .lineFormat)
        try container.encode(underlineFillFormat, forKey: .underlineFillFormat)
        try container.encode(underlineLineFormat, forKey: .underlineLineFormat)
        try container.encode(hyperlinkClick, forKey: .hyperlinkClick)
        try container.encode(hyperlinkMouseOver, forKey: .hyperlinkMouseOver)
    }


}

