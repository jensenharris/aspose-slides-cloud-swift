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


/** Bubble chart data point. */
public class BubbleChartDataPoint: ScatterChartDataPoint {

    /** Bubble size. */
    public var bubbleSize: Double?
    /** Spreadsheet formula in A1-style. */
    public var bubbleSizeFormula: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let bubbleSizeValue = source["bubbleSize"] ?? source["BubbleSize"]
        if bubbleSizeValue != nil {
            self.bubbleSize = bubbleSizeValue! as? Double
        }
        let bubbleSizeFormulaValue = source["bubbleSizeFormula"] ?? source["BubbleSizeFormula"]
        if bubbleSizeFormulaValue != nil {
            self.bubbleSizeFormula = bubbleSizeFormulaValue! as? String
        }
    }

    public init(fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, type: ModelType? = nil, xValue: Double? = nil, yValue: Double? = nil, xValueFormula: String? = nil, yValueFormula: String? = nil, bubbleSize: Double? = nil, bubbleSizeFormula: String? = nil) {
        super.init(fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, type: type, xValue: xValue, yValue: yValue, xValueFormula: xValueFormula, yValueFormula: yValueFormula)
        self.bubbleSize = bubbleSize
        self.bubbleSizeFormula = bubbleSizeFormula
        self.type = ModelType.bubble
    }

    private enum CodingKeys: String, CodingKey {
        case bubbleSize
        case bubbleSizeFormula
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bubbleSize = try? values.decode(Double.self, forKey: .bubbleSize)
        bubbleSizeFormula = try? values.decode(String.self, forKey: .bubbleSizeFormula)
        self.type = ModelType.bubble
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (bubbleSize != nil) {
            try? container.encode(bubbleSize, forKey: .bubbleSize)
        }
        if (bubbleSizeFormula != nil) {
            try? container.encode(bubbleSizeFormula, forKey: .bubbleSizeFormula)
        }
    }

}

