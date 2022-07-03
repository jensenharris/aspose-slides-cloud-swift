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


/** A scatter series */
public class ScatterSeries: XYSeries {

    /** Gets or sets the values. */
    public var dataPoints: [ScatterChartDataPoint]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let dataPointsValue = source["dataPoints"]
        if dataPointsValue != nil {
            var dataPointsArray: [ScatterChartDataPoint] = []
            let dataPointsDictionaryValue = dataPointsValue! as? [Any]
            if dataPointsDictionaryValue != nil {
                dataPointsDictionaryValue!.forEach { dataPointsAnyItem in
                    let dataPointsItem = dataPointsAnyItem as? [String:Any]
                    var added = false
                    if dataPointsItem != nil {
                        let (dataPointsInstance, error) = ClassRegistry.getClassFromDictionary(ScatterChartDataPoint.self, dataPointsItem!)
                        if error == nil && dataPointsInstance != nil {
                            let dataPointsArrayItem = dataPointsInstance! as? ScatterChartDataPoint
                            if dataPointsArrayItem != nil {
                                dataPointsArray.append(dataPointsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        dataPointsArray.append(ScatterChartDataPoint())
                    }
                }
            }
            self.dataPoints = dataPointsArray
        }
    }

    public init(type: ModelType? = nil, name: String? = nil, isColorVaried: Bool? = nil, invertedSolidFillColor: String? = nil, smooth: Bool? = nil, plotOnSecondAxis: Bool? = nil, order: Int? = nil, invertIfNegative: Bool? = nil, explosion: Int? = nil, marker: SeriesMarker? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPointType: DataPointType? = nil, numberFormatOfYValues: String? = nil, numberFormatOfXValues: String? = nil, dataPoints: [ScatterChartDataPoint]? = nil) {
        super.init(type: type, name: name, isColorVaried: isColorVaried, invertedSolidFillColor: invertedSolidFillColor, smooth: smooth, plotOnSecondAxis: plotOnSecondAxis, order: order, invertIfNegative: invertIfNegative, explosion: explosion, marker: marker, fillFormat: fillFormat, effectFormat: effectFormat, lineFormat: lineFormat, dataPointType: dataPointType, numberFormatOfYValues: numberFormatOfYValues, numberFormatOfXValues: numberFormatOfXValues)
        self.dataPoints = dataPoints
        self.dataPointType = DataPointType.scatter
    }

    private enum CodingKeys: String, CodingKey {
        case dataPoints
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dataPoints = try? values.decode([ScatterChartDataPoint].self, forKey: .dataPoints)
        self.dataPointType = DataPointType.scatter
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (dataPoints != nil) {
            try? container.encode(dataPoints, forKey: .dataPoints)
        }
    }

}

