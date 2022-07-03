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


/** Line segment of the geometry path */
public class LineToPathSegment: PathSegment {

    /** X coordinate of the end point of the line */
    public var X: Double?
    /** Y coordinate of the end point of the line */
    public var Y: Double?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let XValue = source["X"]
        if XValue != nil {
            self.X = XValue! as? Double
        }
        let YValue = source["Y"]
        if YValue != nil {
            self.Y = YValue! as? Double
        }
    }

    public init(type: ModelType? = nil, X: Double? = nil, Y: Double? = nil) {
        super.init(type: type)
        self.X = X
        self.Y = Y
        self.type = ModelType.lineTo
    }

    private enum CodingKeys: String, CodingKey {
        case X
        case Y
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        X = try? values.decode(Double.self, forKey: .X)
        Y = try? values.decode(Double.self, forKey: .Y)
        self.type = ModelType.lineTo
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (X != nil) {
            try? container.encode(X, forKey: .X)
        }
        if (Y != nil) {
            try? container.encode(Y, forKey: .Y)
        }
    }

}

