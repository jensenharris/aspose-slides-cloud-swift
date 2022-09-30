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


/** Provides options that control how a presentation is saved in PPTX format. */
public class PptxExportOptions: ExportOptions {

    public enum Conformance: String, Codable { 
        case ecma376 = "Ecma376"
        case iso29500Transitional = "Iso29500Transitional"
        case iso29500Strict = "Iso29500Strict"
    }
    /** The conformance class to which the PresentationML document conforms. Read/write Conformance. */
    public var conformance: Conformance?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let conformanceValue = source["conformance"] ?? source["Conformance"]
        if conformanceValue != nil {
            let conformanceStringValue = conformanceValue! as? String
            if conformanceStringValue != nil {
                let conformanceEnumValue = Conformance(rawValue: conformanceStringValue!)
                if conformanceEnumValue != nil {
                    self.conformance = conformanceEnumValue!
                }
            }
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, conformance: Conformance? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.conformance = conformance
        self.format = "pptx"
    }

    private enum CodingKeys: String, CodingKey {
        case conformance
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        conformance = try? values.decode(Conformance.self, forKey: .conformance)
        self.format = "pptx"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (conformance != nil) {
            try? container.encode(conformance, forKey: .conformance)
        }
    }

}

