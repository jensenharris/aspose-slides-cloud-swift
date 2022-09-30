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


/** Represents a Duotone effect. */
public class DuotoneEffect: ImageTransformEffect {

    /** Returns target color format for dark pixels. */
    public var color1: String?
    /** Returns target color format for light pixels. */
    public var color2: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let color1Value = source["color1"] ?? source["Color1"]
        if color1Value != nil {
            self.color1 = color1Value! as? String
        }
        let color2Value = source["color2"] ?? source["Color2"]
        if color2Value != nil {
            self.color2 = color2Value! as? String
        }
    }

    public init(type: ModelType? = nil, color1: String? = nil, color2: String? = nil) {
        super.init(type: type)
        self.color1 = color1
        self.color2 = color2
        self.type = ModelType.duotone
    }

    private enum CodingKeys: String, CodingKey {
        case color1
        case color2
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        color1 = try? values.decode(String.self, forKey: .color1)
        color2 = try? values.decode(String.self, forKey: .color2)
        self.type = ModelType.duotone
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (color1 != nil) {
            try? container.encode(color1, forKey: .color1)
        }
        if (color2 != nil) {
            try? container.encode(color2, forKey: .color2)
        }
    }

}

