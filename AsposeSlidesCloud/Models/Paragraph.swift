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


/** Represents paragraph resource */
public class Paragraph: ResourceBase {

    public enum Alignment: String, Codable { 
        case _left = "Left"
        case center = "Center"
        case _right = "Right"
        case justify = "Justify"
        case justifyLow = "JustifyLow"
        case distributed = "Distributed"
        case notDefined = "NotDefined"
    }
    public enum FontAlignment: String, Codable { 
        case automatic = "Automatic"
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
        case baseline = "Baseline"
        case _default = "Default"
    }
    public enum BulletType: String, Codable { 
        case _none = "None"
        case symbol = "Symbol"
        case numbered = "Numbered"
        case picture = "Picture"
        case notDefined = "NotDefined"
    }
    public enum NumberedBulletStyle: String, Codable { 
        case bulletAlphaLCPeriod = "BulletAlphaLCPeriod"
        case bulletAlphaUCPeriod = "BulletAlphaUCPeriod"
        case bulletArabicParenRight = "BulletArabicParenRight"
        case bulletArabicPeriod = "BulletArabicPeriod"
        case bulletRomanLCParenBoth = "BulletRomanLCParenBoth"
        case bulletRomanLCParenRight = "BulletRomanLCParenRight"
        case bulletRomanLCPeriod = "BulletRomanLCPeriod"
        case bulletRomanUCPeriod = "BulletRomanUCPeriod"
        case bulletAlphaLCParenBoth = "BulletAlphaLCParenBoth"
        case bulletAlphaLCParenRight = "BulletAlphaLCParenRight"
        case bulletAlphaUCParenBoth = "BulletAlphaUCParenBoth"
        case bulletAlphaUCParenRight = "BulletAlphaUCParenRight"
        case bulletArabicParenBoth = "BulletArabicParenBoth"
        case bulletArabicPlain = "BulletArabicPlain"
        case bulletRomanUCParenBoth = "BulletRomanUCParenBoth"
        case bulletRomanUCParenRight = "BulletRomanUCParenRight"
        case bulletSimpChinPlain = "BulletSimpChinPlain"
        case bulletSimpChinPeriod = "BulletSimpChinPeriod"
        case bulletCircleNumDBPlain = "BulletCircleNumDBPlain"
        case bulletCircleNumWDWhitePlain = "BulletCircleNumWDWhitePlain"
        case bulletCircleNumWDBlackPlain = "BulletCircleNumWDBlackPlain"
        case bulletTradChinPlain = "BulletTradChinPlain"
        case bulletTradChinPeriod = "BulletTradChinPeriod"
        case bulletArabicAlphaDash = "BulletArabicAlphaDash"
        case bulletArabicAbjadDash = "BulletArabicAbjadDash"
        case bulletHebrewAlphaDash = "BulletHebrewAlphaDash"
        case bulletKanjiKoreanPlain = "BulletKanjiKoreanPlain"
        case bulletKanjiKoreanPeriod = "BulletKanjiKoreanPeriod"
        case bulletArabicDBPlain = "BulletArabicDBPlain"
        case bulletArabicDBPeriod = "BulletArabicDBPeriod"
        case bulletThaiAlphaPeriod = "BulletThaiAlphaPeriod"
        case bulletThaiAlphaParenRight = "BulletThaiAlphaParenRight"
        case bulletThaiAlphaParenBoth = "BulletThaiAlphaParenBoth"
        case bulletThaiNumPeriod = "BulletThaiNumPeriod"
        case bulletThaiNumParenRight = "BulletThaiNumParenRight"
        case bulletThaiNumParenBoth = "BulletThaiNumParenBoth"
        case bulletHindiAlphaPeriod = "BulletHindiAlphaPeriod"
        case bulletHindiNumPeriod = "BulletHindiNumPeriod"
        case bulletKanjiSimpChinDBPeriod = "BulletKanjiSimpChinDBPeriod"
        case bulletHindiNumParenRight = "BulletHindiNumParenRight"
        case bulletHindiAlpha1Period = "BulletHindiAlpha1Period"
        case notDefined = "NotDefined"
    }
    public enum HangingPunctuation: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum EastAsianLineBreak: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum LatinLineBreak: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum RightToLeft: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    /** Left margin. */
    public var marginLeft: Double?
    /** Right margin. */
    public var marginRight: Double?
    /** Left spacing. */
    public var spaceBefore: Double?
    /** Right spacing. */
    public var spaceAfter: Double?
    /** Spacing between lines. */
    public var spaceWithin: Double?
    /** First line indent. */
    public var indent: Double?
    /** Text alignment. */
    public var alignment: Alignment?
    /** Font alignment. */
    public var fontAlignment: FontAlignment?
    /** Default tabulation size. */
    public var defaultTabSize: Double?
    /** Depth. */
    public var depth: Int?
    /** Bullet char. */
    public var bulletChar: String?
    /** Bullet height. */
    public var bulletHeight: Double?
    /** Bullet type. */
    public var bulletType: BulletType?
    /** Starting number for a numbered bullet. */
    public var numberedBulletStartWith: Int?
    /** Numbered bullet style. */
    public var numberedBulletStyle: NumberedBulletStyle?
    /** True if hanging punctuation is used with the paragraph. */
    public var hangingPunctuation: HangingPunctuation?
    /** True if East Asian line break is used with the paragraph. */
    public var eastAsianLineBreak: EastAsianLineBreak?
    /** True if Latin line break is used with the paragraph. */
    public var latinLineBreak: LatinLineBreak?
    /** True if right to left direction is used with the paragraph. */
    public var rightToLeft: RightToLeft?
    /** List of portion links. */
    public var portionList: [Portion]?
    /** Default portion format. */
    public var defaultPortionFormat: PortionFormat?

    private enum CodingKeys: String, CodingKey {
        case marginLeft
        case marginRight
        case spaceBefore
        case spaceAfter
        case spaceWithin
        case indent
        case alignment
        case fontAlignment
        case defaultTabSize
        case depth
        case bulletChar
        case bulletHeight
        case bulletType
        case numberedBulletStartWith
        case numberedBulletStyle
        case hangingPunctuation
        case eastAsianLineBreak
        case latinLineBreak
        case rightToLeft
        case portionList
        case defaultPortionFormat
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, marginLeft: Double? = nil, marginRight: Double? = nil, spaceBefore: Double? = nil, spaceAfter: Double? = nil, spaceWithin: Double? = nil, indent: Double? = nil, alignment: Alignment? = nil, fontAlignment: FontAlignment? = nil, defaultTabSize: Double? = nil, depth: Int? = nil, bulletChar: String? = nil, bulletHeight: Double? = nil, bulletType: BulletType? = nil, numberedBulletStartWith: Int? = nil, numberedBulletStyle: NumberedBulletStyle? = nil, hangingPunctuation: HangingPunctuation? = nil, eastAsianLineBreak: EastAsianLineBreak? = nil, latinLineBreak: LatinLineBreak? = nil, rightToLeft: RightToLeft? = nil, portionList: [Portion]? = nil, defaultPortionFormat: PortionFormat? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.marginLeft = marginLeft
        self.marginRight = marginRight
        self.spaceBefore = spaceBefore
        self.spaceAfter = spaceAfter
        self.spaceWithin = spaceWithin
        self.indent = indent
        self.alignment = alignment
        self.fontAlignment = fontAlignment
        self.defaultTabSize = defaultTabSize
        self.depth = depth
        self.bulletChar = bulletChar
        self.bulletHeight = bulletHeight
        self.bulletType = bulletType
        self.numberedBulletStartWith = numberedBulletStartWith
        self.numberedBulletStyle = numberedBulletStyle
        self.hangingPunctuation = hangingPunctuation
        self.eastAsianLineBreak = eastAsianLineBreak
        self.latinLineBreak = latinLineBreak
        self.rightToLeft = rightToLeft
        self.portionList = portionList
        self.defaultPortionFormat = defaultPortionFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        marginLeft = try values.decode(Double?.self, forKey: .marginLeft)
        marginRight = try values.decode(Double?.self, forKey: .marginRight)
        spaceBefore = try values.decode(Double?.self, forKey: .spaceBefore)
        spaceAfter = try values.decode(Double?.self, forKey: .spaceAfter)
        spaceWithin = try values.decode(Double?.self, forKey: .spaceWithin)
        indent = try values.decode(Double?.self, forKey: .indent)
        alignment = try values.decode(Alignment?.self, forKey: .alignment)
        fontAlignment = try values.decode(FontAlignment?.self, forKey: .fontAlignment)
        defaultTabSize = try values.decode(Double?.self, forKey: .defaultTabSize)
        depth = try values.decode(Int?.self, forKey: .depth)
        bulletChar = try values.decode(String?.self, forKey: .bulletChar)
        bulletHeight = try values.decode(Double?.self, forKey: .bulletHeight)
        bulletType = try values.decode(BulletType?.self, forKey: .bulletType)
        numberedBulletStartWith = try values.decode(Int?.self, forKey: .numberedBulletStartWith)
        numberedBulletStyle = try values.decode(NumberedBulletStyle?.self, forKey: .numberedBulletStyle)
        hangingPunctuation = try values.decode(HangingPunctuation?.self, forKey: .hangingPunctuation)
        eastAsianLineBreak = try values.decode(EastAsianLineBreak?.self, forKey: .eastAsianLineBreak)
        latinLineBreak = try values.decode(LatinLineBreak?.self, forKey: .latinLineBreak)
        rightToLeft = try values.decode(RightToLeft?.self, forKey: .rightToLeft)
        portionList = try values.decode([Portion]?.self, forKey: .portionList)
        defaultPortionFormat = try values.decode(PortionFormat?.self, forKey: .defaultPortionFormat)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(marginLeft, forKey: .marginLeft)
        try container.encode(marginRight, forKey: .marginRight)
        try container.encode(spaceBefore, forKey: .spaceBefore)
        try container.encode(spaceAfter, forKey: .spaceAfter)
        try container.encode(spaceWithin, forKey: .spaceWithin)
        try container.encode(indent, forKey: .indent)
        try container.encode(alignment, forKey: .alignment)
        try container.encode(fontAlignment, forKey: .fontAlignment)
        try container.encode(defaultTabSize, forKey: .defaultTabSize)
        try container.encode(depth, forKey: .depth)
        try container.encode(bulletChar, forKey: .bulletChar)
        try container.encode(bulletHeight, forKey: .bulletHeight)
        try container.encode(bulletType, forKey: .bulletType)
        try container.encode(numberedBulletStartWith, forKey: .numberedBulletStartWith)
        try container.encode(numberedBulletStyle, forKey: .numberedBulletStyle)
        try container.encode(hangingPunctuation, forKey: .hangingPunctuation)
        try container.encode(eastAsianLineBreak, forKey: .eastAsianLineBreak)
        try container.encode(latinLineBreak, forKey: .latinLineBreak)
        try container.encode(rightToLeft, forKey: .rightToLeft)
        try container.encode(portionList, forKey: .portionList)
        try container.encode(defaultPortionFormat, forKey: .defaultPortionFormat)
    }


}

