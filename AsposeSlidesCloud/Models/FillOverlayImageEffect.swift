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


/** Represents a Fill Overlay effect. A fill overlay may be used to specify an additional fill for an object and blend the two fills together. */
public class FillOverlayImageEffect: ImageTransformEffect {

    public enum Blend: String, Codable { 
        case darken = "Darken"
        case lighten = "Lighten"
        case multiply = "Multiply"
        case overlay = "Overlay"
        case screen = "Screen"
    }
    /** FillBlendMode. */
    public var blend: Blend?
    /** Fill format. */
    public var fillFormat: FillFormat?

    private enum CodingKeys: String, CodingKey {
        case blend
        case fillFormat
    }

    public init(type: ModelType? = nil, blend: Blend? = nil, fillFormat: FillFormat? = nil) {
        super.init(type: type)
        self.blend = blend
        self.fillFormat = fillFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        blend = try values.decode(Blend?.self, forKey: .blend)
        fillFormat = try values.decode(FillFormat?.self, forKey: .fillFormat)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(blend, forKey: .blend)
        try container.encode(fillFormat, forKey: .fillFormat)
    }


}

