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


/** MoveTo segment of the geometry path */
public class MoveToPathSegment: PathSegment {

    /** X coordinate of the point. */
    public var x: Double?
    /** Y coordinate of the point. */
    public var y: Double?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let xValue = source["x"] ?? source["X"]
        if xValue != nil {
            self.x = xValue! as? Double
        }
        let yValue = source["y"] ?? source["Y"]
        if yValue != nil {
            self.y = yValue! as? Double
        }
    }

    public init(type: ModelType? = nil, x: Double? = nil, y: Double? = nil) {
        super.init(type: type)
        self.x = x
        self.y = y
        self.type = ModelType.moveTo
    }

    private enum CodingKeys: String, CodingKey {
        case x
        case y
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        x = try? values.decode(Double.self, forKey: .x)
        y = try? values.decode(Double.self, forKey: .y)
        self.type = ModelType.moveTo
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (x != nil) {
            try? container.encode(x, forKey: .x)
        }
        if (y != nil) {
            try? container.encode(y, forKey: .y)
        }
    }

}

