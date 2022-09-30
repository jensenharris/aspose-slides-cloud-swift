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

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let widthValue = source["width"] ?? source["Width"]
        if widthValue != nil {
            self.width = widthValue! as? Double
        }
        let heightValue = source["height"] ?? source["Height"]
        if heightValue != nil {
            self.height = heightValue! as? Double
        }
        let startAngleValue = source["startAngle"] ?? source["StartAngle"]
        if startAngleValue != nil {
            self.startAngle = startAngleValue! as? Double
        }
        let sweepAngleValue = source["sweepAngle"] ?? source["SweepAngle"]
        if sweepAngleValue != nil {
            self.sweepAngle = sweepAngleValue! as? Double
        }
    }

    public init(type: ModelType? = nil, width: Double? = nil, height: Double? = nil, startAngle: Double? = nil, sweepAngle: Double? = nil) {
        super.init(type: type)
        self.width = width
        self.height = height
        self.startAngle = startAngle
        self.sweepAngle = sweepAngle
        self.type = ModelType.arcTo
    }

    private enum CodingKeys: String, CodingKey {
        case width
        case height
        case startAngle
        case sweepAngle
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        width = try? values.decode(Double.self, forKey: .width)
        height = try? values.decode(Double.self, forKey: .height)
        startAngle = try? values.decode(Double.self, forKey: .startAngle)
        sweepAngle = try? values.decode(Double.self, forKey: .sweepAngle)
        self.type = ModelType.arcTo
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (width != nil) {
            try? container.encode(width, forKey: .width)
        }
        if (height != nil) {
            try? container.encode(height, forKey: .height)
        }
        if (startAngle != nil) {
            try? container.encode(startAngle, forKey: .startAngle)
        }
        if (sweepAngle != nil) {
            try? container.encode(sweepAngle, forKey: .sweepAngle)
        }
    }

}

