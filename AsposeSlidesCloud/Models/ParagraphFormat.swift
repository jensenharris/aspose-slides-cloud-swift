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


/** Paragraph formatting properties. */
public class ParagraphFormat: Codable {

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
    public enum RightToLeft: String, Codable { 
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
    public enum HangingPunctuation: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
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
    /** Depth. */
    public var depth: Int?
    /** Text alignment. */
    public var alignment: Alignment?
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
    /** Font alignment. */
    public var fontAlignment: FontAlignment?
    /** First line indent. */
    public var indent: Double?
    /** Determines whether the Right to Left writing is used in a paragraph. No inheritance applied. */
    public var rightToLeft: RightToLeft?
    /** Determines whether the East Asian line break is used in a paragraph. No inheritance applied. */
    public var eastAsianLineBreak: EastAsianLineBreak?
    /** Determines whether the Latin line break is used in a paragraph. No inheritance applied. */
    public var latinLineBreak: LatinLineBreak?
    /** Determines whether the hanging punctuation is used in a paragraph. No inheritance applied. */
    public var hangingPunctuation: HangingPunctuation?
    /** Returns or sets default tabulation size with no inheritance. */
    public var defaultTabSize: Double?
    /** Default portion format. */
    public var defaultPortionFormat: PortionFormat?
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
    /** Bullet fill format. */
    public var bulletFillFormat: FillFormat?

    func fillValues(_ source: [String:Any]) throws {
        let depthValue = source["depth"] ?? source["Depth"]
        if depthValue != nil {
            self.depth = depthValue! as? Int
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
        let indentValue = source["indent"] ?? source["Indent"]
        if indentValue != nil {
            self.indent = indentValue! as? Double
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
        let defaultTabSizeValue = source["defaultTabSize"] ?? source["DefaultTabSize"]
        if defaultTabSizeValue != nil {
            self.defaultTabSize = defaultTabSizeValue! as? Double
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
        let bulletFillFormatValue = source["bulletFillFormat"] ?? source["BulletFillFormat"]
        if bulletFillFormatValue != nil {
            let bulletFillFormatDictionaryValue = bulletFillFormatValue! as? [String:Any]
            if bulletFillFormatDictionaryValue != nil {
                let (bulletFillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, bulletFillFormatDictionaryValue!)
                if error == nil && bulletFillFormatInstance != nil {
                    self.bulletFillFormat = bulletFillFormatInstance! as? FillFormat
                }
            }
        }
    }

    public init(depth: Int? = nil, alignment: Alignment? = nil, marginLeft: Double? = nil, marginRight: Double? = nil, spaceBefore: Double? = nil, spaceAfter: Double? = nil, spaceWithin: Double? = nil, fontAlignment: FontAlignment? = nil, indent: Double? = nil, rightToLeft: RightToLeft? = nil, eastAsianLineBreak: EastAsianLineBreak? = nil, latinLineBreak: LatinLineBreak? = nil, hangingPunctuation: HangingPunctuation? = nil, defaultTabSize: Double? = nil, defaultPortionFormat: PortionFormat? = nil, bulletChar: String? = nil, bulletHeight: Double? = nil, bulletType: BulletType? = nil, numberedBulletStartWith: Int? = nil, numberedBulletStyle: NumberedBulletStyle? = nil, bulletFillFormat: FillFormat? = nil) {
        self.depth = depth
        self.alignment = alignment
        self.marginLeft = marginLeft
        self.marginRight = marginRight
        self.spaceBefore = spaceBefore
        self.spaceAfter = spaceAfter
        self.spaceWithin = spaceWithin
        self.fontAlignment = fontAlignment
        self.indent = indent
        self.rightToLeft = rightToLeft
        self.eastAsianLineBreak = eastAsianLineBreak
        self.latinLineBreak = latinLineBreak
        self.hangingPunctuation = hangingPunctuation
        self.defaultTabSize = defaultTabSize
        self.defaultPortionFormat = defaultPortionFormat
        self.bulletChar = bulletChar
        self.bulletHeight = bulletHeight
        self.bulletType = bulletType
        self.numberedBulletStartWith = numberedBulletStartWith
        self.numberedBulletStyle = numberedBulletStyle
        self.bulletFillFormat = bulletFillFormat
    }

    private enum CodingKeys: String, CodingKey {
        case depth
        case alignment
        case marginLeft
        case marginRight
        case spaceBefore
        case spaceAfter
        case spaceWithin
        case fontAlignment
        case indent
        case rightToLeft
        case eastAsianLineBreak
        case latinLineBreak
        case hangingPunctuation
        case defaultTabSize
        case defaultPortionFormat
        case bulletChar
        case bulletHeight
        case bulletType
        case numberedBulletStartWith
        case numberedBulletStyle
        case bulletFillFormat
    }

}

