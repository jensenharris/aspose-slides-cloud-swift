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


/** Represents font substitution rule. */
public class FontSubstRule: Codable {

    /** Font to substitute. */
    public var sourceFont: String?
    /** Substitution font. */
    public var targetFont: String?
    /** Substitute when font is not found. Default: true. */
    public var notFoundOnly: Bool?

    func fillValues(_ source: [String:Any]) throws {
        let sourceFontValue = source["sourceFont"] ?? source["SourceFont"]
        if sourceFontValue != nil {
            self.sourceFont = sourceFontValue! as? String
        }
        let targetFontValue = source["targetFont"] ?? source["TargetFont"]
        if targetFontValue != nil {
            self.targetFont = targetFontValue! as? String
        }
        let notFoundOnlyValue = source["notFoundOnly"] ?? source["NotFoundOnly"]
        if notFoundOnlyValue != nil {
            self.notFoundOnly = notFoundOnlyValue! as? Bool
        }
    }

    public init(sourceFont: String? = nil, targetFont: String? = nil, notFoundOnly: Bool? = nil) {
        self.sourceFont = sourceFont
        self.targetFont = targetFont
        self.notFoundOnly = notFoundOnly
    }

    private enum CodingKeys: String, CodingKey {
        case sourceFont
        case targetFont
        case notFoundOnly
    }

}

