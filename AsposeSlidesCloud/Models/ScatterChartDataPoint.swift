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


/** Scatter chart (two-dimensional) data point */
public class ScatterChartDataPoint: DataPoint {

    /** X-value */
    public var xValue: Double?
    /** Y-value */
    public var yValue: Double?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let xValueValue = source["xValue"]
        if xValueValue != nil {
            self.xValue = xValueValue! as? Double
        }
        let yValueValue = source["yValue"]
        if yValueValue != nil {
            self.yValue = yValueValue! as? Double
        }
    }

    public init(xValue: Double? = nil, yValue: Double? = nil) {
        super.init()
        self.xValue = xValue
        self.yValue = yValue
    }

    private enum CodingKeys: String, CodingKey {
        case xValue
        case yValue
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        xValue = try? values.decode(Double.self, forKey: .xValue)
        yValue = try? values.decode(Double.self, forKey: .yValue)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (xValue != nil) {
            try? container.encode(xValue, forKey: .xValue)
        }
        if (yValue != nil) {
            try? container.encode(yValue, forKey: .yValue)
        }
    }

}

