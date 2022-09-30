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


/** Represents a Color Change effect. */
public class ColorChangeEffect: ImageTransformEffect {

    /** Color which will be replaced. */
    public var fromColor: String?
    /** Color which will replace. */
    public var toColor: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let fromColorValue = source["fromColor"] ?? source["FromColor"]
        if fromColorValue != nil {
            self.fromColor = fromColorValue! as? String
        }
        let toColorValue = source["toColor"] ?? source["ToColor"]
        if toColorValue != nil {
            self.toColor = toColorValue! as? String
        }
    }

    public init(type: ModelType? = nil, fromColor: String? = nil, toColor: String? = nil) {
        super.init(type: type)
        self.fromColor = fromColor
        self.toColor = toColor
        self.type = ModelType.colorChange
    }

    private enum CodingKeys: String, CodingKey {
        case fromColor
        case toColor
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fromColor = try? values.decode(String.self, forKey: .fromColor)
        toColor = try? values.decode(String.self, forKey: .toColor)
        self.type = ModelType.colorChange
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (fromColor != nil) {
            try? container.encode(fromColor, forKey: .fromColor)
        }
        if (toColor != nil) {
            try? container.encode(toColor, forKey: .toColor)
        }
    }

}

