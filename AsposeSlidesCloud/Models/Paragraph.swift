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

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let marginLeftValue = source["marginLeft"] ?? source["MarginLeft"]
        if marginLeftValue != nil {
            self.marginLeft = marginLeftValue! as? Double
        }
        let marginRightValue = source["marginRight"] ?? source["MarginRight"]
        if marginRightValue != nil {
            self.marginRight = marginRightValue! as? Double
        }
        let spaceBeforeValue = source["spaceBefore"] ?? source["SpaceBefore"]
        if spaceBeforeValue != nil {
            self.spaceBefore = spaceBeforeValue! as? Double
        }
        let spaceAfterValue = source["spaceAfter"] ?? source["SpaceAfter"]
        if spaceAfterValue != nil {
            self.spaceAfter = spaceAfterValue! as? Double
        }
        let spaceWithinValue = source["spaceWithin"] ?? source["SpaceWithin"]
        if spaceWithinValue != nil {
            self.spaceWithin = spaceWithinValue! as? Double
        }
        let indentValue = source["indent"] ?? source["Indent"]
        if indentValue != nil {
            self.indent = indentValue! as? Double
        }
        let alignmentValue = source["alignment"] ?? source["Alignment"]
        if alignmentValue != nil {
            let alignmentStringValue = alignmentValue! as? String
            if alignmentStringValue != nil {
                let alignmentEnumValue = Alignment(rawValue: alignmentStringValue!)
                if alignmentEnumValue != nil {
                    self.alignment = alignmentEnumValue!
                }
            }
        }
        let fontAlignmentValue = source["fontAlignment"] ?? source["FontAlignment"]
        if fontAlignmentValue != nil {
            let fontAlignmentStringValue = fontAlignmentValue! as? String
            if fontAlignmentStringValue != nil {
                let fontAlignmentEnumValue = FontAlignment(rawValue: fontAlignmentStringValue!)
                if fontAlignmentEnumValue != nil {
                    self.fontAlignment = fontAlignmentEnumValue!
                }
            }
        }
        let defaultTabSizeValue = source["defaultTabSize"] ?? source["DefaultTabSize"]
        if defaultTabSizeValue != nil {
            self.defaultTabSize = defaultTabSizeValue! as? Double
        }
        let depthValue = source["depth"] ?? source["Depth"]
        if depthValue != nil {
            self.depth = depthValue! as? Int
        }
        let bulletCharValue = source["bulletChar"] ?? source["BulletChar"]
        if bulletCharValue != nil {
            self.bulletChar = bulletCharValue! as? String
        }
        let bulletHeightValue = source["bulletHeight"] ?? source["BulletHeight"]
        if bulletHeightValue != nil {
            self.bulletHeight = bulletHeightValue! as? Double
        }
        let bulletTypeValue = source["bulletType"] ?? source["BulletType"]
        if bulletTypeValue != nil {
            let bulletTypeStringValue = bulletTypeValue! as? String
            if bulletTypeStringValue != nil {
                let bulletTypeEnumValue = BulletType(rawValue: bulletTypeStringValue!)
                if bulletTypeEnumValue != nil {
                    self.bulletType = bulletTypeEnumValue!
                }
            }
        }
        let numberedBulletStartWithValue = source["numberedBulletStartWith"] ?? source["NumberedBulletStartWith"]
        if numberedBulletStartWithValue != nil {
            self.numberedBulletStartWith = numberedBulletStartWithValue! as? Int
        }
        let numberedBulletStyleValue = source["numberedBulletStyle"] ?? source["NumberedBulletStyle"]
        if numberedBulletStyleValue != nil {
            let numberedBulletStyleStringValue = numberedBulletStyleValue! as? String
            if numberedBulletStyleStringValue != nil {
                let numberedBulletStyleEnumValue = NumberedBulletStyle(rawValue: numberedBulletStyleStringValue!)
                if numberedBulletStyleEnumValue != nil {
                    self.numberedBulletStyle = numberedBulletStyleEnumValue!
                }
            }
        }
        let hangingPunctuationValue = source["hangingPunctuation"] ?? source["HangingPunctuation"]
        if hangingPunctuationValue != nil {
            let hangingPunctuationStringValue = hangingPunctuationValue! as? String
            if hangingPunctuationStringValue != nil {
                let hangingPunctuationEnumValue = HangingPunctuation(rawValue: hangingPunctuationStringValue!)
                if hangingPunctuationEnumValue != nil {
                    self.hangingPunctuation = hangingPunctuationEnumValue!
                }
            }
        }
        let eastAsianLineBreakValue = source["eastAsianLineBreak"] ?? source["EastAsianLineBreak"]
        if eastAsianLineBreakValue != nil {
            let eastAsianLineBreakStringValue = eastAsianLineBreakValue! as? String
            if eastAsianLineBreakStringValue != nil {
                let eastAsianLineBreakEnumValue = EastAsianLineBreak(rawValue: eastAsianLineBreakStringValue!)
                if eastAsianLineBreakEnumValue != nil {
                    self.eastAsianLineBreak = eastAsianLineBreakEnumValue!
                }
            }
        }
        let latinLineBreakValue = source["latinLineBreak"] ?? source["LatinLineBreak"]
        if latinLineBreakValue != nil {
            let latinLineBreakStringValue = latinLineBreakValue! as? String
            if latinLineBreakStringValue != nil {
                let latinLineBreakEnumValue = LatinLineBreak(rawValue: latinLineBreakStringValue!)
                if latinLineBreakEnumValue != nil {
                    self.latinLineBreak = latinLineBreakEnumValue!
                }
            }
        }
        let rightToLeftValue = source["rightToLeft"] ?? source["RightToLeft"]
        if rightToLeftValue != nil {
            let rightToLeftStringValue = rightToLeftValue! as? String
            if rightToLeftStringValue != nil {
                let rightToLeftEnumValue = RightToLeft(rawValue: rightToLeftStringValue!)
                if rightToLeftEnumValue != nil {
                    self.rightToLeft = rightToLeftEnumValue!
                }
            }
        }
        let portionListValue = source["portionList"] ?? source["PortionList"]
        if portionListValue != nil {
            var portionListArray: [Portion] = []
            let portionListDictionaryValue = portionListValue! as? [Any]
            if portionListDictionaryValue != nil {
                portionListDictionaryValue!.forEach { portionListAnyItem in
                    let portionListItem = portionListAnyItem as? [String:Any]
                    var added = false
                    if portionListItem != nil {
                        let (portionListInstance, error) = ClassRegistry.getClassFromDictionary(Portion.self, portionListItem!)
                        if error == nil && portionListInstance != nil {
                            let portionListArrayItem = portionListInstance! as? Portion
                            if portionListArrayItem != nil {
                                portionListArray.append(portionListArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        portionListArray.append(Portion())
                    }
                }
            }
            self.portionList = portionListArray
        }
        let defaultPortionFormatValue = source["defaultPortionFormat"] ?? source["DefaultPortionFormat"]
        if defaultPortionFormatValue != nil {
            let defaultPortionFormatDictionaryValue = defaultPortionFormatValue! as? [String:Any]
            if defaultPortionFormatDictionaryValue != nil {
                let (defaultPortionFormatInstance, error) = ClassRegistry.getClassFromDictionary(PortionFormat.self, defaultPortionFormatDictionaryValue!)
                if error == nil && defaultPortionFormatInstance != nil {
                    self.defaultPortionFormat = defaultPortionFormatInstance! as? PortionFormat
                }
            }
        }
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

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        marginLeft = try? values.decode(Double.self, forKey: .marginLeft)
        marginRight = try? values.decode(Double.self, forKey: .marginRight)
        spaceBefore = try? values.decode(Double.self, forKey: .spaceBefore)
        spaceAfter = try? values.decode(Double.self, forKey: .spaceAfter)
        spaceWithin = try? values.decode(Double.self, forKey: .spaceWithin)
        indent = try? values.decode(Double.self, forKey: .indent)
        alignment = try? values.decode(Alignment.self, forKey: .alignment)
        fontAlignment = try? values.decode(FontAlignment.self, forKey: .fontAlignment)
        defaultTabSize = try? values.decode(Double.self, forKey: .defaultTabSize)
        depth = try? values.decode(Int.self, forKey: .depth)
        bulletChar = try? values.decode(String.self, forKey: .bulletChar)
        bulletHeight = try? values.decode(Double.self, forKey: .bulletHeight)
        bulletType = try? values.decode(BulletType.self, forKey: .bulletType)
        numberedBulletStartWith = try? values.decode(Int.self, forKey: .numberedBulletStartWith)
        numberedBulletStyle = try? values.decode(NumberedBulletStyle.self, forKey: .numberedBulletStyle)
        hangingPunctuation = try? values.decode(HangingPunctuation.self, forKey: .hangingPunctuation)
        eastAsianLineBreak = try? values.decode(EastAsianLineBreak.self, forKey: .eastAsianLineBreak)
        latinLineBreak = try? values.decode(LatinLineBreak.self, forKey: .latinLineBreak)
        rightToLeft = try? values.decode(RightToLeft.self, forKey: .rightToLeft)
        portionList = try? values.decode([Portion].self, forKey: .portionList)
        defaultPortionFormat = try? values.decode(PortionFormat.self, forKey: .defaultPortionFormat)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (marginLeft != nil) {
            try? container.encode(marginLeft, forKey: .marginLeft)
        }
        if (marginRight != nil) {
            try? container.encode(marginRight, forKey: .marginRight)
        }
        if (spaceBefore != nil) {
            try? container.encode(spaceBefore, forKey: .spaceBefore)
        }
        if (spaceAfter != nil) {
            try? container.encode(spaceAfter, forKey: .spaceAfter)
        }
        if (spaceWithin != nil) {
            try? container.encode(spaceWithin, forKey: .spaceWithin)
        }
        if (indent != nil) {
            try? container.encode(indent, forKey: .indent)
        }
        if (alignment != nil) {
            try? container.encode(alignment, forKey: .alignment)
        }
        if (fontAlignment != nil) {
            try? container.encode(fontAlignment, forKey: .fontAlignment)
        }
        if (defaultTabSize != nil) {
            try? container.encode(defaultTabSize, forKey: .defaultTabSize)
        }
        if (depth != nil) {
            try? container.encode(depth, forKey: .depth)
        }
        if (bulletChar != nil) {
            try? container.encode(bulletChar, forKey: .bulletChar)
        }
        if (bulletHeight != nil) {
            try? container.encode(bulletHeight, forKey: .bulletHeight)
        }
        if (bulletType != nil) {
            try? container.encode(bulletType, forKey: .bulletType)
        }
        if (numberedBulletStartWith != nil) {
            try? container.encode(numberedBulletStartWith, forKey: .numberedBulletStartWith)
        }
        if (numberedBulletStyle != nil) {
            try? container.encode(numberedBulletStyle, forKey: .numberedBulletStyle)
        }
        if (hangingPunctuation != nil) {
            try? container.encode(hangingPunctuation, forKey: .hangingPunctuation)
        }
        if (eastAsianLineBreak != nil) {
            try? container.encode(eastAsianLineBreak, forKey: .eastAsianLineBreak)
        }
        if (latinLineBreak != nil) {
            try? container.encode(latinLineBreak, forKey: .latinLineBreak)
        }
        if (rightToLeft != nil) {
            try? container.encode(rightToLeft, forKey: .rightToLeft)
        }
        if (portionList != nil) {
            try? container.encode(portionList, forKey: .portionList)
        }
        if (defaultPortionFormat != nil) {
            try? container.encode(defaultPortionFormat, forKey: .defaultPortionFormat)
        }
    }

}

