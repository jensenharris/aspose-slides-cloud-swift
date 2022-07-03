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


/** Provides options that control how a presentation is saved in Html5 format. */
public class Html5ExportOptions: ExportOptions {

    /** Gets or sets transitions animation option. */
    public var animateTransitions: Bool?
    /** Gets or sets shapes animation option. */
    public var animateShapes: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let animateTransitionsValue = source["animateTransitions"]
        if animateTransitionsValue != nil {
            self.animateTransitions = animateTransitionsValue! as? Bool
        }
        let animateShapesValue = source["animateShapes"]
        if animateShapesValue != nil {
            self.animateShapes = animateShapesValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, format: String? = nil, animateTransitions: Bool? = nil, animateShapes: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, format: format)
        self.animateTransitions = animateTransitions
        self.animateShapes = animateShapes
        self.format = "html5"
    }

    private enum CodingKeys: String, CodingKey {
        case animateTransitions
        case animateShapes
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        animateTransitions = try? values.decode(Bool.self, forKey: .animateTransitions)
        animateShapes = try? values.decode(Bool.self, forKey: .animateShapes)
        self.format = "html5"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (animateTransitions != nil) {
            try? container.encode(animateTransitions, forKey: .animateTransitions)
        }
        if (animateShapes != nil) {
            try? container.encode(animateShapes, forKey: .animateShapes)
        }
    }

}

