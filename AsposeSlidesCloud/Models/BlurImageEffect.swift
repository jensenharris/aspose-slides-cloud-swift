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


/** Represents a Blur effect that is applied to the entire shape, including its fill. All color channels, including alpha, are affected. */
public class BlurImageEffect: ImageTransformEffect {

    /** Returns or sets blur radius. */
    public var radius: Double?
    /** Determines whether the bounds of the object should be grown as a result of the blurring. True indicates the bounds are grown while false indicates that they are not. */
    public var grow: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let radiusValue = source["radius"] ?? source["Radius"]
        if radiusValue != nil {
            self.radius = radiusValue! as? Double
        }
        let growValue = source["grow"] ?? source["Grow"]
        if growValue != nil {
            self.grow = growValue! as? Bool
        }
    }

    public init(type: ModelType? = nil, radius: Double? = nil, grow: Bool? = nil) {
        super.init(type: type)
        self.radius = radius
        self.grow = grow
        self.type = ModelType.blur
    }

    private enum CodingKeys: String, CodingKey {
        case radius
        case grow
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        radius = try? values.decode(Double.self, forKey: .radius)
        grow = try? values.decode(Bool.self, forKey: .grow)
        self.type = ModelType.blur
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (radius != nil) {
            try? container.encode(radius, forKey: .radius)
        }
        if (grow != nil) {
            try? container.encode(grow, forKey: .grow)
        }
    }

}

