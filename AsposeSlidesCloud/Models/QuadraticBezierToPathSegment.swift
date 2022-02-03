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


/** Quadratic Bezier curve segment of the geometry path */
public class QuadraticBezierToPathSegment: PathSegment {

    /** X coordinate of direction point */
    public var x1: Double?
    /** Y coordinate of direction point */
    public var y1: Double?
    /** X coordinate of end point */
    public var x2: Double?
    /** Y coordinate of end point */
    public var y2: Double?

    private enum CodingKeys: String, CodingKey {
        case x1
        case y1
        case x2
        case y2
    }

    public init(type: ModelType? = nil, x1: Double? = nil, y1: Double? = nil, x2: Double? = nil, y2: Double? = nil) {
        super.init(type: type)
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        x1 = try values.decode(Double?.self, forKey: .x1)
        y1 = try values.decode(Double?.self, forKey: .y1)
        x2 = try values.decode(Double?.self, forKey: .x2)
        y2 = try values.decode(Double?.self, forKey: .y2)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x1, forKey: .x1)
        try container.encode(y1, forKey: .y1)
        try container.encode(x2, forKey: .x2)
        try container.encode(y2, forKey: .y2)
    }


}

