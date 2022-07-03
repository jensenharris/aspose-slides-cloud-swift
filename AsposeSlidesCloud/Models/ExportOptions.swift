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


/** Represents export options for whole presentation. */
public class ExportOptions: Codable {

    /** Default regular font for rendering the presentation.  */
    public var defaultRegularFont: String?
    /** Gets of sets list of font fallback rules. */
    public var fontFallbackRules: [FontFallbackRule]?
    public var format: String?

    func fillValues(_ source: [String:Any]) throws {
        let defaultRegularFontValue = source["defaultRegularFont"]
        if defaultRegularFontValue != nil {
            self.defaultRegularFont = defaultRegularFontValue! as? String
        }
        let fontFallbackRulesValue = source["fontFallbackRules"]
        if fontFallbackRulesValue != nil {
            var fontFallbackRulesArray: [FontFallbackRule] = []
            let fontFallbackRulesDictionaryValue = fontFallbackRulesValue! as? [Any]
            if fontFallbackRulesDictionaryValue != nil {
                fontFallbackRulesDictionaryValue!.forEach { fontFallbackRulesAnyItem in
                    let fontFallbackRulesItem = fontFallbackRulesAnyItem as? [String:Any]
                    var added = false
                    if fontFallbackRulesItem != nil {
                        let (fontFallbackRulesInstance, error) = ClassRegistry.getClassFromDictionary(FontFallbackRule.self, fontFallbackRulesItem!)
                        if error == nil && fontFallbackRulesInstance != nil {
                            let fontFallbackRulesArrayItem = fontFallbackRulesInstance! as? FontFallbackRule
                            if fontFallbackRulesArrayItem != nil {
                                fontFallbackRulesArray.append(fontFallbackRulesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        fontFallbackRulesArray.append(FontFallbackRule())
                    }
                }
            }
            self.fontFallbackRules = fontFallbackRulesArray
        }
        let formatValue = source["format"]
        if formatValue != nil {
            self.format = formatValue! as? String
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, format: String? = nil) {
        self.defaultRegularFont = defaultRegularFont
        self.fontFallbackRules = fontFallbackRules
        self.format = format
    }

    private enum CodingKeys: String, CodingKey {
        case defaultRegularFont
        case fontFallbackRules
        case format
    }

}

