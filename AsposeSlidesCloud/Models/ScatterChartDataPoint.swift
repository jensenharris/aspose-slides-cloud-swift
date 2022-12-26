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
    /** Spreadsheet formula in A1-style. */
    public var xValueFormula: String?
    /** Spreadsheet formula in A1-style. */
    public var yValueFormula: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let xValueValue = source["xValue"] ?? source["XValue"]
        if xValueValue != nil {
            self.xValue = xValueValue! as? Double
        }
        let yValueValue = source["yValue"] ?? source["YValue"]
        if yValueValue != nil {
            self.yValue = yValueValue! as? Double
        }
        let xValueFormulaValue = source["xValueFormula"] ?? source["XValueFormula"]
        if xValueFormulaValue != nil {
            self.xValueFormula = xValueFormulaValue! as? String
        }
        let yValueFormulaValue = source["yValueFormula"] ?? source["YValueFormula"]
        if yValueFormulaValue != nil {
            self.yValueFormula = yValueFormulaValue! as? String
        }
    }

    public init(fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, type: ModelType? = nil, xValue: Double? = nil, yValue: Double? = nil, xValueFormula: String? = nil, yValueFormula: String? = nil) {
        super.init(fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, type: type)
        self.xValue = xValue
        self.yValue = yValue
        self.xValueFormula = xValueFormula
        self.yValueFormula = yValueFormula
        self.type = ModelType.scatter
    }

    private enum CodingKeys: String, CodingKey {
        case xValue
        case yValue
        case xValueFormula
        case yValueFormula
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        xValue = try? values.decode(Double.self, forKey: .xValue)
        yValue = try? values.decode(Double.self, forKey: .yValue)
        xValueFormula = try? values.decode(String.self, forKey: .xValueFormula)
        yValueFormula = try? values.decode(String.self, forKey: .yValueFormula)
        self.type = ModelType.scatter
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
        if (xValueFormula != nil) {
            try? container.encode(xValueFormula, forKey: .xValueFormula)
        }
        if (yValueFormula != nil) {
            try? container.encode(yValueFormula, forKey: .yValueFormula)
        }
    }

}

