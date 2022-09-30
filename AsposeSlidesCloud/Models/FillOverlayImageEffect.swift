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

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let blendValue = source["blend"] ?? source["Blend"]
        if blendValue != nil {
            let blendStringValue = blendValue! as? String
            if blendStringValue != nil {
                let blendEnumValue = Blend(rawValue: blendStringValue!)
                if blendEnumValue != nil {
                    self.blend = blendEnumValue!
                }
            }
        }
        let fillFormatValue = source["fillFormat"] ?? source["FillFormat"]
        if fillFormatValue != nil {
            let fillFormatDictionaryValue = fillFormatValue! as? [String:Any]
            if fillFormatDictionaryValue != nil {
                let (fillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, fillFormatDictionaryValue!)
                if error == nil && fillFormatInstance != nil {
                    self.fillFormat = fillFormatInstance! as? FillFormat
                }
            }
        }
    }

    public init(type: ModelType? = nil, blend: Blend? = nil, fillFormat: FillFormat? = nil) {
        super.init(type: type)
        self.blend = blend
        self.fillFormat = fillFormat
        self.type = ModelType.fillOverlay
    }

    private enum CodingKeys: String, CodingKey {
        case blend
        case fillFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        blend = try? values.decode(Blend.self, forKey: .blend)
        fillFormat = try? values.decode(FillFormat.self, forKey: .fillFormat)
        self.type = ModelType.fillOverlay
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (blend != nil) {
            try? container.encode(blend, forKey: .blend)
        }
        if (fillFormat != nil) {
            try? container.encode(fillFormat, forKey: .fillFormat)
        }
    }

}

