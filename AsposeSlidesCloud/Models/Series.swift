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

    private enum CodingKeys: String, CodingKey {
        case type
        case name
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

    public init(type: ModelType? = nil, name: String? = nil, isColorVaried: Bool? = nil, invertedSolidFillColor: String? = nil, smooth: Bool? = nil, plotOnSecondAxis: Bool? = nil, order: Int? = nil, invertIfNegative: Bool? = nil, explosion: Int? = nil, marker: SeriesMarker? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPointType: DataPointType? = nil) {
        self.type = type
        self.name = name
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


}

