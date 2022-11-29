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


/** Common properties for Bubble and Scatter series.  */
public class XYSeries: Series {

    /** The number format for the series y values. */
    public var numberFormatOfYValues: String?
    /** The number format for the series x values. */
    public var numberFormatOfXValues: String?
    /** Data source type for X Values. */
    public var dataSourceForXValues: DataSource?
    /** Data source type for Y Values. */
    public var dataSourceForYValues: DataSource?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let numberFormatOfYValuesValue = source["numberFormatOfYValues"] ?? source["NumberFormatOfYValues"]
        if numberFormatOfYValuesValue != nil {
            self.numberFormatOfYValues = numberFormatOfYValuesValue! as? String
        }
        let numberFormatOfXValuesValue = source["numberFormatOfXValues"] ?? source["NumberFormatOfXValues"]
        if numberFormatOfXValuesValue != nil {
            self.numberFormatOfXValues = numberFormatOfXValuesValue! as? String
        }
        let dataSourceForXValuesValue = source["dataSourceForXValues"] ?? source["DataSourceForXValues"]
        if dataSourceForXValuesValue != nil {
            let dataSourceForXValuesDictionaryValue = dataSourceForXValuesValue! as? [String:Any]
            if dataSourceForXValuesDictionaryValue != nil {
                let (dataSourceForXValuesInstance, error) = ClassRegistry.getClassFromDictionary(DataSource.self, dataSourceForXValuesDictionaryValue!)
                if error == nil && dataSourceForXValuesInstance != nil {
                    self.dataSourceForXValues = dataSourceForXValuesInstance! as? DataSource
                }
            }
        }
        let dataSourceForYValuesValue = source["dataSourceForYValues"] ?? source["DataSourceForYValues"]
        if dataSourceForYValuesValue != nil {
            let dataSourceForYValuesDictionaryValue = dataSourceForYValuesValue! as? [String:Any]
            if dataSourceForYValuesDictionaryValue != nil {
                let (dataSourceForYValuesInstance, error) = ClassRegistry.getClassFromDictionary(DataSource.self, dataSourceForYValuesDictionaryValue!)
                if error == nil && dataSourceForYValuesInstance != nil {
                    self.dataSourceForYValues = dataSourceForYValuesInstance! as? DataSource
                }
            }
        }
    }

    public init(type: ModelType? = nil, name: String? = nil, dataSourceForSeriesName: DataSource? = nil, isColorVaried: Bool? = nil, invertedSolidFillColor: String? = nil, smooth: Bool? = nil, plotOnSecondAxis: Bool? = nil, order: Int? = nil, invertIfNegative: Bool? = nil, explosion: Int? = nil, marker: SeriesMarker? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPointType: DataPointType? = nil, numberFormatOfYValues: String? = nil, numberFormatOfXValues: String? = nil, dataSourceForXValues: DataSource? = nil, dataSourceForYValues: DataSource? = nil) {
        super.init(type: type, name: name, dataSourceForSeriesName: dataSourceForSeriesName, isColorVaried: isColorVaried, invertedSolidFillColor: invertedSolidFillColor, smooth: smooth, plotOnSecondAxis: plotOnSecondAxis, order: order, invertIfNegative: invertIfNegative, explosion: explosion, marker: marker, fillFormat: fillFormat, effectFormat: effectFormat, lineFormat: lineFormat, dataPointType: dataPointType)
        self.numberFormatOfYValues = numberFormatOfYValues
        self.numberFormatOfXValues = numberFormatOfXValues
        self.dataSourceForXValues = dataSourceForXValues
        self.dataSourceForYValues = dataSourceForYValues
    }

    private enum CodingKeys: String, CodingKey {
        case numberFormatOfYValues
        case numberFormatOfXValues
        case dataSourceForXValues
        case dataSourceForYValues
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        numberFormatOfYValues = try? values.decode(String.self, forKey: .numberFormatOfYValues)
        numberFormatOfXValues = try? values.decode(String.self, forKey: .numberFormatOfXValues)
        dataSourceForXValues = try? values.decode(DataSource.self, forKey: .dataSourceForXValues)
        dataSourceForYValues = try? values.decode(DataSource.self, forKey: .dataSourceForYValues)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (numberFormatOfYValues != nil) {
            try? container.encode(numberFormatOfYValues, forKey: .numberFormatOfYValues)
        }
        if (numberFormatOfXValues != nil) {
            try? container.encode(numberFormatOfXValues, forKey: .numberFormatOfXValues)
        }
        if (dataSourceForXValues != nil) {
            try? container.encode(dataSourceForXValues, forKey: .dataSourceForXValues)
        }
        if (dataSourceForYValues != nil) {
            try? container.encode(dataSourceForYValues, forKey: .dataSourceForYValues)
        }
    }

}

