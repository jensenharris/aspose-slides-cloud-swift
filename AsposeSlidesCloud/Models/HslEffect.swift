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


/** Represents a Hue/Saturation/Luminance effect. */
public class HslEffect: ImageTransformEffect {

    /** Hue */
    public var hue: Double?
    /** Saturation */
    public var saturation: Double?
    /** Luminance */
    public var luminance: Double?

    private enum CodingKeys: String, CodingKey {
        case hue
        case saturation
        case luminance
    }

    public init(type: ModelType? = nil, hue: Double? = nil, saturation: Double? = nil, luminance: Double? = nil) {
        super.init(type: type)
        self.hue = hue
        self.saturation = saturation
        self.luminance = luminance
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        hue = try values.decode(Double?.self, forKey: .hue)
        saturation = try values.decode(Double?.self, forKey: .saturation)
        luminance = try values.decode(Double?.self, forKey: .luminance)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hue, forKey: .hue)
        try container.encode(saturation, forKey: .saturation)
        try container.encode(luminance, forKey: .luminance)
    }


}

