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


/** Chart series group. Defines common properties for a group of series. */
public class ChartSeriesGroup: Codable {

    public enum ModelType: String, Codable { 
        case barOfPieChart = "BarOfPieChart"
        case pieOfPieChart = "PieOfPieChart"
        case doughnutChart = "DoughnutChart"
        case pieChart = "PieChart"
        case areaChartArea = "AreaChartArea"
        case areaChartPercentsStackedArea = "AreaChartPercentsStackedArea"
        case areaChartStackedArea = "AreaChartStackedArea"
        case barChartHorizClustered = "BarChartHorizClustered"
        case barChartHorizStacked = "BarChartHorizStacked"
        case barChartHorizPercentsStacked = "BarChartHorizPercentsStacked"
        case barChartVertClustered = "BarChartVertClustered"
        case barChartVertStacked = "BarChartVertStacked"
        case barChartVertPercentsStacked = "BarChartVertPercentsStacked"
        case lineChartLine = "LineChartLine"
        case lineChartStackedLine = "LineChartStackedLine"
        case lineChartPercentsStackedLine = "LineChartPercentsStackedLine"
        case radarChart = "RadarChart"
        case filledRadarChart = "FilledRadarChart"
        case stockHighLowClose = "StockHighLowClose"
        case stockOpenHighLowClose = "StockOpenHighLowClose"
        case stockVolumeHighLowClose = "StockVolumeHighLowClose"
        case stockVolumeOpenHighLowClose = "StockVolumeOpenHighLowClose"
        case scatterStraightMarker = "ScatterStraightMarker"
        case scatterSmoothMarker = "ScatterSmoothMarker"
        case areaChartArea3D = "AreaChartArea3D"
        case areaChartStackedArea3D = "AreaChartStackedArea3D"
        case areaChartPercentsStackedArea3D = "AreaChartPercentsStackedArea3D"
        case line3DChart = "Line3DChart"
        case pie3DChart = "Pie3DChart"
        case bar3DChartVert = "Bar3DChartVert"
        case bar3DChartVertClustered = "Bar3DChartVertClustered"
        case bar3DChartVertPercentsStackedColumn3D = "Bar3DChartVertPercentsStackedColumn3D"
        case bar3DChartVertPercentsStackedCone = "Bar3DChartVertPercentsStackedCone"
        case bar3DChartVertPercentsStackedCylinder = "Bar3DChartVertPercentsStackedCylinder"
        case bar3DChartVertPercentsStackedPyramid = "Bar3DChartVertPercentsStackedPyramid"
        case bar3DChartVertStackedColumn3D = "Bar3DChartVertStackedColumn3D"
        case bar3DChartVertStackedCone = "Bar3DChartVertStackedCone"
        case bar3DChartVertStackedCylinder = "Bar3DChartVertStackedCylinder"
        case bar3DChartVertStackedPyramid = "Bar3DChartVertStackedPyramid"
        case bar3DChartHorizClustered = "Bar3DChartHorizClustered"
        case bar3DChartHorizStackedBar3D = "Bar3DChartHorizStackedBar3D"
        case bar3DChartHorizStackedCone = "Bar3DChartHorizStackedCone"
        case bar3DChartHorizStackedCylinder = "Bar3DChartHorizStackedCylinder"
        case bar3DChartHorizStackedPyramid = "Bar3DChartHorizStackedPyramid"
        case bar3DChartHorizPercentsStackedBar3D = "Bar3DChartHorizPercentsStackedBar3D"
        case bar3DChartHorizPercentsStackedCone = "Bar3DChartHorizPercentsStackedCone"
        case bar3DChartHorizPercentsStackedCylinder = "Bar3DChartHorizPercentsStackedCylinder"
        case bar3DChartHorizPercentsStackedPyramid = "Bar3DChartHorizPercentsStackedPyramid"
        case surfaceChartContour = "SurfaceChartContour"
        case surfaceChartWireframeContour = "SurfaceChartWireframeContour"
        case surfaceChartSurface3D = "SurfaceChartSurface3D"
        case surfaceChartWireframeSurface3D = "SurfaceChartWireframeSurface3D"
        case bubbleChart = "BubbleChart"
        case histogramChart = "HistogramChart"
        case paretoLineChart = "ParetoLineChart"
        case boxAndWhiskerChart = "BoxAndWhiskerChart"
        case waterfallChart = "WaterfallChart"
        case funnelChart = "FunnelChart"
        case treemapChart = "TreemapChart"
        case mapChart = "MapChart"
        case sunburstChart = "SunburstChart"
    }
    public enum PieSplitBy: String, Codable { 
        case _default = "Default"
        case custom = "Custom"
        case byPercentage = "ByPercentage"
        case byPos = "ByPos"
        case byValue = "ByValue"
    }
    public enum BubbleSizeRepresentation: String, Codable { 
        case area = "Area"
        case width = "Width"
    }
    /** Returns a type of this series group. */
    public var type: ModelType?
    /** Specifies the space between bar or column clusters, as a percentage of the bar or column width. */
    public var gapWidth: Int?
    /** Returns or sets the distance, as a percentage of the marker width, between the data series in a 3D chart. */
    public var gapDepth: Int?
    /** Gets or sets the angle of the first pie or doughnut chart slice,  in degrees (clockwise from up, from 0 to 360 degrees). */
    public var firstSliceAngle: Int?
    /** Specifies that each data marker in the series has a different color. */
    public var isColorVaried: Bool?
    /** True if chart has series lines. Applied to stacked bar and OfPie charts. */
    public var hasSeriesLines: Bool?
    /** Specifies how much bars and columns shall overlap on 2-D charts (from -100 to 100). */
    public var overlap: Int?
    /** Specifies the size of the second pie or bar of a pie-of-pie chart or  a bar-of-pie chart, as a percentage of the size of the first pie (can  be between 5 and 200 percents). */
    public var secondPieSize: Int?
    /** Specifies a value that shall be used to determine which data points  are in the second pie or bar on a pie-of-pie or bar-of-pie chart.  Is used together with PieSplitBy property. */
    public var pieSplitPosition: Double?
    /** Specifies how to determine which data points are in the second pie or bar  on a pie-of-pie or bar-of-pie chart. */
    public var pieSplitBy: PieSplitBy?
    /** Specifies the size of the hole in a doughnut chart (can be between 10 and 90 percents  of the size of the plot area.). */
    public var doughnutHoleSize: Int?
    /** Specifies the scale factor for the bubble chart (can be  between 0 and 300 percents of the default size). Read/write Int32. */
    public var bubbleSizeScale: Int?
    /** Specifies HiLowLines format.  HiLowLines applied with HiLowClose, OpenHiLowClose, VolumeHiLowClose and VolumeOpenHiLowClose chart types. */
    public var hiLowLinesFormat: ChartLinesFormat?
    /** Specifies how the bubble size values are represented on the bubble chart. Read/write BubbleSizeRepresentationType. */
    public var bubbleSizeRepresentation: BubbleSizeRepresentation?

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
        let gapWidthValue = source["gapWidth"] ?? source["GapWidth"]
        if gapWidthValue != nil {
            self.gapWidth = gapWidthValue! as? Int
        }
        let gapDepthValue = source["gapDepth"] ?? source["GapDepth"]
        if gapDepthValue != nil {
            self.gapDepth = gapDepthValue! as? Int
        }
        let firstSliceAngleValue = source["firstSliceAngle"] ?? source["FirstSliceAngle"]
        if firstSliceAngleValue != nil {
            self.firstSliceAngle = firstSliceAngleValue! as? Int
        }
        let isColorVariedValue = source["isColorVaried"] ?? source["IsColorVaried"]
        if isColorVariedValue != nil {
            self.isColorVaried = isColorVariedValue! as? Bool
        }
        let hasSeriesLinesValue = source["hasSeriesLines"] ?? source["HasSeriesLines"]
        if hasSeriesLinesValue != nil {
            self.hasSeriesLines = hasSeriesLinesValue! as? Bool
        }
        let overlapValue = source["overlap"] ?? source["Overlap"]
        if overlapValue != nil {
            self.overlap = overlapValue! as? Int
        }
        let secondPieSizeValue = source["secondPieSize"] ?? source["SecondPieSize"]
        if secondPieSizeValue != nil {
            self.secondPieSize = secondPieSizeValue! as? Int
        }
        let pieSplitPositionValue = source["pieSplitPosition"] ?? source["PieSplitPosition"]
        if pieSplitPositionValue != nil {
            self.pieSplitPosition = pieSplitPositionValue! as? Double
        }
        let pieSplitByValue = source["pieSplitBy"] ?? source["PieSplitBy"]
        if pieSplitByValue != nil {
            let pieSplitByStringValue = pieSplitByValue! as? String
            if pieSplitByStringValue != nil {
                let pieSplitByEnumValue = PieSplitBy(rawValue: pieSplitByStringValue!)
                if pieSplitByEnumValue != nil {
                    self.pieSplitBy = pieSplitByEnumValue!
                }
            }
        }
        let doughnutHoleSizeValue = source["doughnutHoleSize"] ?? source["DoughnutHoleSize"]
        if doughnutHoleSizeValue != nil {
            self.doughnutHoleSize = doughnutHoleSizeValue! as? Int
        }
        let bubbleSizeScaleValue = source["bubbleSizeScale"] ?? source["BubbleSizeScale"]
        if bubbleSizeScaleValue != nil {
            self.bubbleSizeScale = bubbleSizeScaleValue! as? Int
        }
        let hiLowLinesFormatValue = source["hiLowLinesFormat"] ?? source["HiLowLinesFormat"]
        if hiLowLinesFormatValue != nil {
            let hiLowLinesFormatDictionaryValue = hiLowLinesFormatValue! as? [String:Any]
            if hiLowLinesFormatDictionaryValue != nil {
                let (hiLowLinesFormatInstance, error) = ClassRegistry.getClassFromDictionary(ChartLinesFormat.self, hiLowLinesFormatDictionaryValue!)
                if error == nil && hiLowLinesFormatInstance != nil {
                    self.hiLowLinesFormat = hiLowLinesFormatInstance! as? ChartLinesFormat
                }
            }
        }
        let bubbleSizeRepresentationValue = source["bubbleSizeRepresentation"] ?? source["BubbleSizeRepresentation"]
        if bubbleSizeRepresentationValue != nil {
            let bubbleSizeRepresentationStringValue = bubbleSizeRepresentationValue! as? String
            if bubbleSizeRepresentationStringValue != nil {
                let bubbleSizeRepresentationEnumValue = BubbleSizeRepresentation(rawValue: bubbleSizeRepresentationStringValue!)
                if bubbleSizeRepresentationEnumValue != nil {
                    self.bubbleSizeRepresentation = bubbleSizeRepresentationEnumValue!
                }
            }
        }
    }

    public init(type: ModelType? = nil, gapWidth: Int? = nil, gapDepth: Int? = nil, firstSliceAngle: Int? = nil, isColorVaried: Bool? = nil, hasSeriesLines: Bool? = nil, overlap: Int? = nil, secondPieSize: Int? = nil, pieSplitPosition: Double? = nil, pieSplitBy: PieSplitBy? = nil, doughnutHoleSize: Int? = nil, bubbleSizeScale: Int? = nil, hiLowLinesFormat: ChartLinesFormat? = nil, bubbleSizeRepresentation: BubbleSizeRepresentation? = nil) {
        self.type = type
        self.gapWidth = gapWidth
        self.gapDepth = gapDepth
        self.firstSliceAngle = firstSliceAngle
        self.isColorVaried = isColorVaried
        self.hasSeriesLines = hasSeriesLines
        self.overlap = overlap
        self.secondPieSize = secondPieSize
        self.pieSplitPosition = pieSplitPosition
        self.pieSplitBy = pieSplitBy
        self.doughnutHoleSize = doughnutHoleSize
        self.bubbleSizeScale = bubbleSizeScale
        self.hiLowLinesFormat = hiLowLinesFormat
        self.bubbleSizeRepresentation = bubbleSizeRepresentation
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case gapWidth
        case gapDepth
        case firstSliceAngle
        case isColorVaried
        case hasSeriesLines
        case overlap
        case secondPieSize
        case pieSplitPosition
        case pieSplitBy
        case doughnutHoleSize
        case bubbleSizeScale
        case hiLowLinesFormat
        case bubbleSizeRepresentation
    }

}

