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


/** A chart series. */
public class Series: Codable {

    public enum ModelType: String, Codable { 
        case clusteredColumn = "ClusteredColumn"
        case stackedColumn = "StackedColumn"
        case percentsStackedColumn = "PercentsStackedColumn"
        case clusteredColumn3D = "ClusteredColumn3D"
        case stackedColumn3D = "StackedColumn3D"
        case percentsStackedColumn3D = "PercentsStackedColumn3D"
        case column3D = "Column3D"
        case clusteredCylinder = "ClusteredCylinder"
        case stackedCylinder = "StackedCylinder"
        case percentsStackedCylinder = "PercentsStackedCylinder"
        case cylinder3D = "Cylinder3D"
        case clusteredCone = "ClusteredCone"
        case stackedCone = "StackedCone"
        case percentsStackedCone = "PercentsStackedCone"
        case cone3D = "Cone3D"
        case clusteredPyramid = "ClusteredPyramid"
        case stackedPyramid = "StackedPyramid"
        case percentsStackedPyramid = "PercentsStackedPyramid"
        case pyramid3D = "Pyramid3D"
        case line = "Line"
        case stackedLine = "StackedLine"
        case percentsStackedLine = "PercentsStackedLine"
        case lineWithMarkers = "LineWithMarkers"
        case stackedLineWithMarkers = "StackedLineWithMarkers"
        case percentsStackedLineWithMarkers = "PercentsStackedLineWithMarkers"
        case line3D = "Line3D"
        case pie = "Pie"
        case pie3D = "Pie3D"
        case pieOfPie = "PieOfPie"
        case explodedPie = "ExplodedPie"
        case explodedPie3D = "ExplodedPie3D"
        case barOfPie = "BarOfPie"
        case percentsStackedBar = "PercentsStackedBar"
        case clusteredBar3D = "ClusteredBar3D"
        case clusteredBar = "ClusteredBar"
        case stackedBar = "StackedBar"
        case stackedBar3D = "StackedBar3D"
        case percentsStackedBar3D = "PercentsStackedBar3D"
        case clusteredHorizontalCylinder = "ClusteredHorizontalCylinder"
        case stackedHorizontalCylinder = "StackedHorizontalCylinder"
        case percentsStackedHorizontalCylinder = "PercentsStackedHorizontalCylinder"
        case clusteredHorizontalCone = "ClusteredHorizontalCone"
        case stackedHorizontalCone = "StackedHorizontalCone"
        case percentsStackedHorizontalCone = "PercentsStackedHorizontalCone"
        case clusteredHorizontalPyramid = "ClusteredHorizontalPyramid"
        case stackedHorizontalPyramid = "StackedHorizontalPyramid"
        case percentsStackedHorizontalPyramid = "PercentsStackedHorizontalPyramid"
        case area = "Area"
        case stackedArea = "StackedArea"
        case percentsStackedArea = "PercentsStackedArea"
        case area3D = "Area3D"
        case stackedArea3D = "StackedArea3D"
        case percentsStackedArea3D = "PercentsStackedArea3D"
        case scatterWithMarkers = "ScatterWithMarkers"
        case scatterWithSmoothLinesAndMarkers = "ScatterWithSmoothLinesAndMarkers"
        case scatterWithSmoothLines = "ScatterWithSmoothLines"
        case scatterWithStraightLinesAndMarkers = "ScatterWithStraightLinesAndMarkers"
        case scatterWithStraightLines = "ScatterWithStraightLines"
        case highLowClose = "HighLowClose"
        case openHighLowClose = "OpenHighLowClose"
        case volumeHighLowClose = "VolumeHighLowClose"
        case volumeOpenHighLowClose = "VolumeOpenHighLowClose"
        case surface3D = "Surface3D"
        case wireframeSurface3D = "WireframeSurface3D"
        case contour = "Contour"
        case wireframeContour = "WireframeContour"
        case doughnut = "Doughnut"
        case explodedDoughnut = "ExplodedDoughnut"
        case bubble = "Bubble"
        case bubbleWith3D = "BubbleWith3D"
        case radar = "Radar"
        case radarWithMarkers = "RadarWithMarkers"
        case filledRadar = "FilledRadar"
        case seriesOfMixedTypes = "SeriesOfMixedTypes"
        case treemap = "Treemap"
        case sunburst = "Sunburst"
        case histogram = "Histogram"
        case paretoLine = "ParetoLine"
        case boxAndWhisker = "BoxAndWhisker"
        case waterfall = "Waterfall"
        case funnel = "Funnel"
        case map = "Map"
    }
    public enum DataPointType: String, Codable { 
        case oneValue = "OneValue"
        case scatter = "Scatter"
        case bubble = "Bubble"
    }
    /** Series type. */
    public var type: ModelType?
    /** Series name. */
    public var name: String?
    /** Series name data source. */
    public var dataSourceForSeriesName: DataSource?
    /** True if each data marker in the series has a different color. */
    public var isColorVaried: Bool?
    /** Invert solid color for the series. */
    public var invertedSolidFillColor: String?
    /** True if curve smoothing is turned on. Applies only to line and scatter connected by lines charts. */
    public var smooth: Bool?
    /** True if the series is plotted on second value axis. */
    public var plotOnSecondAxis: Bool?
    /** Series order. */
    public var order: Int?
    /** True if the series shall invert its colors if the value is negative. Applies to bar, column and bubble series. */
    public var invertIfNegative: Bool?
    /** The distance of an open pie slice from the center of the pie chart is expressed as a percentage of the pie diameter. */
    public var explosion: Int?
    /** Series marker. */
    public var marker: SeriesMarker?
    /** Fill properties set for the series. */
    public var fillFormat: FillFormat?
    /** Effect properties set for the series. */
    public var effectFormat: EffectFormat?
    /** Line properties set for the series. */
    public var lineFormat: LineFormat?
    public var dataPointType: DataPointType?

    func fillValues(_ source: [String:Any]) throws {
        let typeValue = source["type"] ?? source["Type"]
        if typeValue != nil {
            let typeStringValue = typeValue! as? String
            if typeStringValue != nil {
                let typeEnumValue = ModelType(rawValue: typeStringValue!)
                if typeEnumValue != nil {
                    self.type = typeEnumValue!
                }
            }
        }
        let nameValue = source["name"] ?? source["Name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
        let dataSourceForSeriesNameValue = source["dataSourceForSeriesName"] ?? source["DataSourceForSeriesName"]
        if dataSourceForSeriesNameValue != nil {
            let dataSourceForSeriesNameDictionaryValue = dataSourceForSeriesNameValue! as? [String:Any]
            if dataSourceForSeriesNameDictionaryValue != nil {
                let (dataSourceForSeriesNameInstance, error) = ClassRegistry.getClassFromDictionary(DataSource.self, dataSourceForSeriesNameDictionaryValue!)
                if error == nil && dataSourceForSeriesNameInstance != nil {
                    self.dataSourceForSeriesName = dataSourceForSeriesNameInstance! as? DataSource
                }
            }
        }
        let isColorVariedValue = source["isColorVaried"] ?? source["IsColorVaried"]
        if isColorVariedValue != nil {
            self.isColorVaried = isColorVariedValue! as? Bool
        }
        let invertedSolidFillColorValue = source["invertedSolidFillColor"] ?? source["InvertedSolidFillColor"]
        if invertedSolidFillColorValue != nil {
            self.invertedSolidFillColor = invertedSolidFillColorValue! as? String
        }
        let smoothValue = source["smooth"] ?? source["Smooth"]
        if smoothValue != nil {
            self.smooth = smoothValue! as? Bool
        }
        let plotOnSecondAxisValue = source["plotOnSecondAxis"] ?? source["PlotOnSecondAxis"]
        if plotOnSecondAxisValue != nil {
            self.plotOnSecondAxis = plotOnSecondAxisValue! as? Bool
        }
        let orderValue = source["order"] ?? source["Order"]
        if orderValue != nil {
            self.order = orderValue! as? Int
        }
        let invertIfNegativeValue = source["invertIfNegative"] ?? source["InvertIfNegative"]
        if invertIfNegativeValue != nil {
            self.invertIfNegative = invertIfNegativeValue! as? Bool
        }
        let explosionValue = source["explosion"] ?? source["Explosion"]
        if explosionValue != nil {
            self.explosion = explosionValue! as? Int
        }
        let markerValue = source["marker"] ?? source["Marker"]
        if markerValue != nil {
            let markerDictionaryValue = markerValue! as? [String:Any]
            if markerDictionaryValue != nil {
                let (markerInstance, error) = ClassRegistry.getClassFromDictionary(SeriesMarker.self, markerDictionaryValue!)
                if error == nil && markerInstance != nil {
                    self.marker = markerInstance! as? SeriesMarker
                }
            }
        }
        let fillFormatValue = source["fillFormat"] ?? source["FillFormat"]
        if fillFormatValue != nil {
            let fillFormatDictionaryValue = fillFormatValue! as? [String:Any]
            if fillFormatDictionaryValue != nil {
                let (fillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, fillFormatDictionaryValue!)
                if error == nil && fillFormatInstance != nil {
                    self.fillFormat = fillFormatInstance! as? FillFormat
                }
            }
        }
        let effectFormatValue = source["effectFormat"] ?? source["EffectFormat"]
        if effectFormatValue != nil {
            let effectFormatDictionaryValue = effectFormatValue! as? [String:Any]
            if effectFormatDictionaryValue != nil {
                let (effectFormatInstance, error) = ClassRegistry.getClassFromDictionary(EffectFormat.self, effectFormatDictionaryValue!)
                if error == nil && effectFormatInstance != nil {
                    self.effectFormat = effectFormatInstance! as? EffectFormat
                }
            }
        }
        let lineFormatValue = source["lineFormat"] ?? source["LineFormat"]
        if lineFormatValue != nil {
            let lineFormatDictionaryValue = lineFormatValue! as? [String:Any]
            if lineFormatDictionaryValue != nil {
                let (lineFormatInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, lineFormatDictionaryValue!)
                if error == nil && lineFormatInstance != nil {
                    self.lineFormat = lineFormatInstance! as? LineFormat
                }
            }
        }
        let dataPointTypeValue = source["dataPointType"] ?? source["DataPointType"]
        if dataPointTypeValue != nil {
            let dataPointTypeStringValue = dataPointTypeValue! as? String
            if dataPointTypeStringValue != nil {
                let dataPointTypeEnumValue = DataPointType(rawValue: dataPointTypeStringValue!)
                if dataPointTypeEnumValue != nil {
                    self.dataPointType = dataPointTypeEnumValue!
                }
            }
        }
    }

    public init(type: ModelType? = nil, name: String? = nil, dataSourceForSeriesName: DataSource? = nil, isColorVaried: Bool? = nil, invertedSolidFillColor: String? = nil, smooth: Bool? = nil, plotOnSecondAxis: Bool? = nil, order: Int? = nil, invertIfNegative: Bool? = nil, explosion: Int? = nil, marker: SeriesMarker? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPointType: DataPointType? = nil) {
        self.type = type
        self.name = name
        self.dataSourceForSeriesName = dataSourceForSeriesName
        self.isColorVaried = isColorVaried
        self.invertedSolidFillColor = invertedSolidFillColor
        self.smooth = smooth
        self.plotOnSecondAxis = plotOnSecondAxis
        self.order = order
        self.invertIfNegative = invertIfNegative
        self.explosion = explosion
        self.marker = marker
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
        self.dataPointType = dataPointType
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case name
        case dataSourceForSeriesName
        case isColorVaried
        case invertedSolidFillColor
        case smooth
        case plotOnSecondAxis
        case order
        case invertIfNegative
        case explosion
        case marker
        case fillFormat
        case effectFormat
        case lineFormat
        case dataPointType
    }

}

