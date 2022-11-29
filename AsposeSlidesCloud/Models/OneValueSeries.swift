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


/** One value series. */
public class OneValueSeries: Series {

    public enum QuartileMethod: String, Codable { 
        case exclusive = "Exclusive"
        case inclusive = "Inclusive"
    }
    /** Gets or sets the values. */
    public var dataPoints: [OneValueChartDataPoint]?
    /** The number format for the series values. */
    public var numberFormatOfValues: String?
    /** Data source type for values. */
    public var dataSourceForValues: DataSource?
    /** True if inner points are shown. Applied to Waterfall series only. */
    public var showConnectorLines: Bool?
    /** Quartile method. Applied to BoxAndWhisker series only. */
    public var quartileMethod: QuartileMethod?
    /** True if inner points are shown. Applied to BoxAndWhisker series only. */
    public var showInnerPoints: Bool?
    /** True if mean line is shown. Applied to BoxAndWhisker series only. */
    public var showMeanLine: Bool?
    /** True if mean markers are shown. Applied to BoxAndWhisker series only. */
    public var showMeanMarkers: Bool?
    /** True if outlier points are shown. Applied to BoxAndWhisker series only. */
    public var showOutlierPoints: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let dataPointsValue = source["dataPoints"] ?? source["DataPoints"]
        if dataPointsValue != nil {
            var dataPointsArray: [OneValueChartDataPoint] = []
            let dataPointsDictionaryValue = dataPointsValue! as? [Any]
            if dataPointsDictionaryValue != nil {
                dataPointsDictionaryValue!.forEach { dataPointsAnyItem in
                    let dataPointsItem = dataPointsAnyItem as? [String:Any]
                    var added = false
                    if dataPointsItem != nil {
                        let (dataPointsInstance, error) = ClassRegistry.getClassFromDictionary(OneValueChartDataPoint.self, dataPointsItem!)
                        if error == nil && dataPointsInstance != nil {
                            let dataPointsArrayItem = dataPointsInstance! as? OneValueChartDataPoint
                            if dataPointsArrayItem != nil {
                                dataPointsArray.append(dataPointsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        dataPointsArray.append(OneValueChartDataPoint())
                    }
                }
            }
            self.dataPoints = dataPointsArray
        }
        let numberFormatOfValuesValue = source["numberFormatOfValues"] ?? source["NumberFormatOfValues"]
        if numberFormatOfValuesValue != nil {
            self.numberFormatOfValues = numberFormatOfValuesValue! as? String
        }
        let dataSourceForValuesValue = source["dataSourceForValues"] ?? source["DataSourceForValues"]
        if dataSourceForValuesValue != nil {
            let dataSourceForValuesDictionaryValue = dataSourceForValuesValue! as? [String:Any]
            if dataSourceForValuesDictionaryValue != nil {
                let (dataSourceForValuesInstance, error) = ClassRegistry.getClassFromDictionary(DataSource.self, dataSourceForValuesDictionaryValue!)
                if error == nil && dataSourceForValuesInstance != nil {
                    self.dataSourceForValues = dataSourceForValuesInstance! as? DataSource
                }
            }
        }
        let showConnectorLinesValue = source["showConnectorLines"] ?? source["ShowConnectorLines"]
        if showConnectorLinesValue != nil {
            self.showConnectorLines = showConnectorLinesValue! as? Bool
        }
        let quartileMethodValue = source["quartileMethod"] ?? source["QuartileMethod"]
        if quartileMethodValue != nil {
            let quartileMethodStringValue = quartileMethodValue! as? String
            if quartileMethodStringValue != nil {
                let quartileMethodEnumValue = QuartileMethod(rawValue: quartileMethodStringValue!)
                if quartileMethodEnumValue != nil {
                    self.quartileMethod = quartileMethodEnumValue!
                }
            }
        }
        let showInnerPointsValue = source["showInnerPoints"] ?? source["ShowInnerPoints"]
        if showInnerPointsValue != nil {
            self.showInnerPoints = showInnerPointsValue! as? Bool
        }
        let showMeanLineValue = source["showMeanLine"] ?? source["ShowMeanLine"]
        if showMeanLineValue != nil {
            self.showMeanLine = showMeanLineValue! as? Bool
        }
        let showMeanMarkersValue = source["showMeanMarkers"] ?? source["ShowMeanMarkers"]
        if showMeanMarkersValue != nil {
            self.showMeanMarkers = showMeanMarkersValue! as? Bool
        }
        let showOutlierPointsValue = source["showOutlierPoints"] ?? source["ShowOutlierPoints"]
        if showOutlierPointsValue != nil {
            self.showOutlierPoints = showOutlierPointsValue! as? Bool
        }
    }

    public init(type: ModelType? = nil, name: String? = nil, dataSourceForSeriesName: DataSource? = nil, isColorVaried: Bool? = nil, invertedSolidFillColor: String? = nil, smooth: Bool? = nil, plotOnSecondAxis: Bool? = nil, order: Int? = nil, invertIfNegative: Bool? = nil, explosion: Int? = nil, marker: SeriesMarker? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPointType: DataPointType? = nil, dataPoints: [OneValueChartDataPoint]? = nil, numberFormatOfValues: String? = nil, dataSourceForValues: DataSource? = nil, showConnectorLines: Bool? = nil, quartileMethod: QuartileMethod? = nil, showInnerPoints: Bool? = nil, showMeanLine: Bool? = nil, showMeanMarkers: Bool? = nil, showOutlierPoints: Bool? = nil) {
        super.init(type: type, name: name, dataSourceForSeriesName: dataSourceForSeriesName, isColorVaried: isColorVaried, invertedSolidFillColor: invertedSolidFillColor, smooth: smooth, plotOnSecondAxis: plotOnSecondAxis, order: order, invertIfNegative: invertIfNegative, explosion: explosion, marker: marker, fillFormat: fillFormat, effectFormat: effectFormat, lineFormat: lineFormat, dataPointType: dataPointType)
        self.dataPoints = dataPoints
        self.numberFormatOfValues = numberFormatOfValues
        self.dataSourceForValues = dataSourceForValues
        self.showConnectorLines = showConnectorLines
        self.quartileMethod = quartileMethod
        self.showInnerPoints = showInnerPoints
        self.showMeanLine = showMeanLine
        self.showMeanMarkers = showMeanMarkers
        self.showOutlierPoints = showOutlierPoints
        self.dataPointType = DataPointType.oneValue
    }

    private enum CodingKeys: String, CodingKey {
        case dataPoints
        case numberFormatOfValues
        case dataSourceForValues
        case showConnectorLines
        case quartileMethod
        case showInnerPoints
        case showMeanLine
        case showMeanMarkers
        case showOutlierPoints
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dataPoints = try? values.decode([OneValueChartDataPoint].self, forKey: .dataPoints)
        numberFormatOfValues = try? values.decode(String.self, forKey: .numberFormatOfValues)
        dataSourceForValues = try? values.decode(DataSource.self, forKey: .dataSourceForValues)
        showConnectorLines = try? values.decode(Bool.self, forKey: .showConnectorLines)
        quartileMethod = try? values.decode(QuartileMethod.self, forKey: .quartileMethod)
        showInnerPoints = try? values.decode(Bool.self, forKey: .showInnerPoints)
        showMeanLine = try? values.decode(Bool.self, forKey: .showMeanLine)
        showMeanMarkers = try? values.decode(Bool.self, forKey: .showMeanMarkers)
        showOutlierPoints = try? values.decode(Bool.self, forKey: .showOutlierPoints)
        self.dataPointType = DataPointType.oneValue
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (dataPoints != nil) {
            try? container.encode(dataPoints, forKey: .dataPoints)
        }
        if (numberFormatOfValues != nil) {
            try? container.encode(numberFormatOfValues, forKey: .numberFormatOfValues)
        }
        if (dataSourceForValues != nil) {
            try? container.encode(dataSourceForValues, forKey: .dataSourceForValues)
        }
        if (showConnectorLines != nil) {
            try? container.encode(showConnectorLines, forKey: .showConnectorLines)
        }
        if (quartileMethod != nil) {
            try? container.encode(quartileMethod, forKey: .quartileMethod)
        }
        if (showInnerPoints != nil) {
            try? container.encode(showInnerPoints, forKey: .showInnerPoints)
        }
        if (showMeanLine != nil) {
            try? container.encode(showMeanLine, forKey: .showMeanLine)
        }
        if (showMeanMarkers != nil) {
            try? container.encode(showMeanMarkers, forKey: .showMeanMarkers)
        }
        if (showOutlierPoints != nil) {
            try? container.encode(showOutlierPoints, forKey: .showOutlierPoints)
        }
    }

}

