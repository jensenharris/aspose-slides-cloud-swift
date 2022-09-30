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


/** Represents a Luminance effect. */
public class LuminanceEffect: ImageTransformEffect {

    /** Brightness */
    public var brightness: Double?
    /** Contrast */
    public var contrast: Double?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let brightnessValue = source["brightness"] ?? source["Brightness"]
        if brightnessValue != nil {
            self.brightness = brightnessValue! as? Double
        }
        let contrastValue = source["contrast"] ?? source["Contrast"]
        if contrastValue != nil {
            self.contrast = contrastValue! as? Double
        }
    }

    public init(type: ModelType? = nil, brightness: Double? = nil, contrast: Double? = nil) {
        super.init(type: type)
        self.brightness = brightness
        self.contrast = contrast
        self.type = ModelType.luminance
    }

    private enum CodingKeys: String, CodingKey {
        case brightness
        case contrast
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        brightness = try? values.decode(Double.self, forKey: .brightness)
        contrast = try? values.decode(Double.self, forKey: .contrast)
        self.type = ModelType.luminance
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (brightness != nil) {
            try? container.encode(brightness, forKey: .brightness)
        }
        if (contrast != nil) {
            try? container.encode(contrast, forKey: .contrast)
        }
    }

}

