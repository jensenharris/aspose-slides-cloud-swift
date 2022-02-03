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


/** Arc segment of the geometry path */
public class ArcToPathSegment: PathSegment {

    /** Width of the rectangle */
    public var width: Double?
    /** Height of the rectangle */
    public var height: Double?
    /** Start angle */
    public var startAngle: Double?
    /** Sweep angle */
    public var sweepAngle: Double?

    private enum CodingKeys: String, CodingKey {
        case width
        case height
        case startAngle
        case sweepAngle
    }

    public init(type: ModelType? = nil, width: Double? = nil, height: Double? = nil, startAngle: Double? = nil, sweepAngle: Double? = nil) {
        super.init(type: type)
        self.width = width
        self.height = height
        self.startAngle = startAngle
        self.sweepAngle = sweepAngle
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        width = try values.decode(Double?.self, forKey: .width)
        height = try values.decode(Double?.self, forKey: .height)
        startAngle = try values.decode(Double?.self, forKey: .startAngle)
        sweepAngle = try values.decode(Double?.self, forKey: .sweepAngle)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(width, forKey: .width)
        try container.encode(height, forKey: .height)
        try container.encode(startAngle, forKey: .startAngle)
        try container.encode(sweepAngle, forKey: .sweepAngle)
    }


}

