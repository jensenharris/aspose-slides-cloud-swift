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


/** Cubic Bezier curve segment of the geometry path */
public class CubicBezierToPathSegment: PathSegment {

    /** X coordinate of the first direction point */
    public var x1: Double?
    /** Y coordinate of the first direction point */
    public var y1: Double?
    /** X coordinate of the second direction point */
    public var x2: Double?
    /** Y coordinate of the second direction point */
    public var y2: Double?
    /** X coordinate of end point */
    public var x3: Double?
    /** Y coordinate of end point */
    public var y3: Double?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let x1Value = source["x1"]
        if x1Value != nil {
            self.x1 = x1Value! as? Double
        }
        let y1Value = source["y1"]
        if y1Value != nil {
            self.y1 = y1Value! as? Double
        }
        let x2Value = source["x2"]
        if x2Value != nil {
            self.x2 = x2Value! as? Double
        }
        let y2Value = source["y2"]
        if y2Value != nil {
            self.y2 = y2Value! as? Double
        }
        let x3Value = source["x3"]
        if x3Value != nil {
            self.x3 = x3Value! as? Double
        }
        let y3Value = source["y3"]
        if y3Value != nil {
            self.y3 = y3Value! as? Double
        }
    }

    public init(type: ModelType? = nil, x1: Double? = nil, y1: Double? = nil, x2: Double? = nil, y2: Double? = nil, x3: Double? = nil, y3: Double? = nil) {
        super.init(type: type)
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        self.x3 = x3
        self.y3 = y3
        self.type = ModelType.cubicBezierTo
    }

    private enum CodingKeys: String, CodingKey {
        case x1
        case y1
        case x2
        case y2
        case x3
        case y3
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        x1 = try? values.decode(Double.self, forKey: .x1)
        y1 = try? values.decode(Double.self, forKey: .y1)
        x2 = try? values.decode(Double.self, forKey: .x2)
        y2 = try? values.decode(Double.self, forKey: .y2)
        x3 = try? values.decode(Double.self, forKey: .x3)
        y3 = try? values.decode(Double.self, forKey: .y3)
        self.type = ModelType.cubicBezierTo
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (x1 != nil) {
            try? container.encode(x1, forKey: .x1)
        }
        if (y1 != nil) {
            try? container.encode(y1, forKey: .y1)
        }
        if (x2 != nil) {
            try? container.encode(x2, forKey: .x2)
        }
        if (y2 != nil) {
            try? container.encode(y2, forKey: .y2)
        }
        if (x3 != nil) {
            try? container.encode(x3, forKey: .x3)
        }
        if (y3 != nil) {
            try? container.encode(y3, forKey: .y3)
        }
    }

}

