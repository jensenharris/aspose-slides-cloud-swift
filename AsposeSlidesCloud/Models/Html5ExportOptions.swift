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

    private enum CodingKeys: String, CodingKey {
        case animateTransitions
        case animateShapes
    }

    public init(defaultRegularFont: String? = nil, height: Int? = nil, width: Int? = nil, format: String? = nil, animateTransitions: Bool? = nil, animateShapes: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, height: height, width: width, format: format)
        self.animateTransitions = animateTransitions
        self.animateShapes = animateShapes
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        animateTransitions = try values.decode(Bool?.self, forKey: .animateTransitions)
        animateShapes = try values.decode(Bool?.self, forKey: .animateShapes)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(animateTransitions, forKey: .animateTransitions)
        try container.encode(animateShapes, forKey: .animateShapes)
    }


}

