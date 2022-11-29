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


/** Represents chart resource */
public class Chart: ShapeBase {

    public enum ChartType: String, Codable { 
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
    /** Gets or sets the type of the chart. */
    public var chartType: ChartType?
    /** True if data labels over the maximum of the chart shall be shown. */
    public var showDataLabelsOverMaximum: Bool?
    /** Gets or sets the series of chart data values. */
    public var series: [Series]?
    /** Gets or sets the categories for chart data */
    public var categories: [ChartCategory]?
    /** Data source type for categories. */
    public var dataSourceForCategories: DataSource?
    /** Gets or sets the title. */
    public var title: ChartTitle?
    /** Gets or sets the back wall. */
    public var backWall: ChartWall?
    /** Gets or sets the side wall. */
    public var sideWall: ChartWall?
    /** Gets or sets the floor. */
    public var floor: ChartWall?
    /** Gets or sets the legend. */
    public var legend: Legend?
    /** Gets or sets the axes. */
    public var axes: Axes?
    /** Gets or sets the plot area. */
    public var plotArea: PlotArea?
    /** Specifies the chart area shall have rounded corners. */
    public var hasRoundedCorners: Bool?
    /** Gets groups of series.  */
    public var seriesGroups: [ChartSeriesGroup]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let chartTypeValue = source["chartType"] ?? source["ChartType"]
        if chartTypeValue != nil {
            let chartTypeStringValue = chartTypeValue! as? String
            if chartTypeStringValue != nil {
                let chartTypeEnumValue = ChartType(rawValue: chartTypeStringValue!)
                if chartTypeEnumValue != nil {
                    self.chartType = chartTypeEnumValue!
                }
            }
        }
        let showDataLabelsOverMaximumValue = source["showDataLabelsOverMaximum"] ?? source["ShowDataLabelsOverMaximum"]
        if showDataLabelsOverMaximumValue != nil {
            self.showDataLabelsOverMaximum = showDataLabelsOverMaximumValue! as? Bool
        }
        let seriesValue = source["series"] ?? source["Series"]
        if seriesValue != nil {
            var seriesArray: [Series] = []
            let seriesDictionaryValue = seriesValue! as? [Any]
            if seriesDictionaryValue != nil {
                seriesDictionaryValue!.forEach { seriesAnyItem in
                    let seriesItem = seriesAnyItem as? [String:Any]
                    var added = false
                    if seriesItem != nil {
                        let (seriesInstance, error) = ClassRegistry.getClassFromDictionary(Series.self, seriesItem!)
                        if error == nil && seriesInstance != nil {
                            let seriesArrayItem = seriesInstance! as? Series
                            if seriesArrayItem != nil {
                                seriesArray.append(seriesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        seriesArray.append(Series())
                    }
                }
            }
            self.series = seriesArray
        }
        let categoriesValue = source["categories"] ?? source["Categories"]
        if categoriesValue != nil {
            var categoriesArray: [ChartCategory] = []
            let categoriesDictionaryValue = categoriesValue! as? [Any]
            if categoriesDictionaryValue != nil {
                categoriesDictionaryValue!.forEach { categoriesAnyItem in
                    let categoriesItem = categoriesAnyItem as? [String:Any]
                    var added = false
                    if categoriesItem != nil {
                        let (categoriesInstance, error) = ClassRegistry.getClassFromDictionary(ChartCategory.self, categoriesItem!)
                        if error == nil && categoriesInstance != nil {
                            let categoriesArrayItem = categoriesInstance! as? ChartCategory
                            if categoriesArrayItem != nil {
                                categoriesArray.append(categoriesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        categoriesArray.append(ChartCategory())
                    }
                }
            }
            self.categories = categoriesArray
        }
        let dataSourceForCategoriesValue = source["dataSourceForCategories"] ?? source["DataSourceForCategories"]
        if dataSourceForCategoriesValue != nil {
            let dataSourceForCategoriesDictionaryValue = dataSourceForCategoriesValue! as? [String:Any]
            if dataSourceForCategoriesDictionaryValue != nil {
                let (dataSourceForCategoriesInstance, error) = ClassRegistry.getClassFromDictionary(DataSource.self, dataSourceForCategoriesDictionaryValue!)
                if error == nil && dataSourceForCategoriesInstance != nil {
                    self.dataSourceForCategories = dataSourceForCategoriesInstance! as? DataSource
                }
            }
        }
        let titleValue = source["title"] ?? source["Title"]
        if titleValue != nil {
            let titleDictionaryValue = titleValue! as? [String:Any]
            if titleDictionaryValue != nil {
                let (titleInstance, error) = ClassRegistry.getClassFromDictionary(ChartTitle.self, titleDictionaryValue!)
                if error == nil && titleInstance != nil {
                    self.title = titleInstance! as? ChartTitle
                }
            }
        }
        let backWallValue = source["backWall"] ?? source["BackWall"]
        if backWallValue != nil {
            let backWallDictionaryValue = backWallValue! as? [String:Any]
            if backWallDictionaryValue != nil {
                let (backWallInstance, error) = ClassRegistry.getClassFromDictionary(ChartWall.self, backWallDictionaryValue!)
                if error == nil && backWallInstance != nil {
                    self.backWall = backWallInstance! as? ChartWall
                }
            }
        }
        let sideWallValue = source["sideWall"] ?? source["SideWall"]
        if sideWallValue != nil {
            let sideWallDictionaryValue = sideWallValue! as? [String:Any]
            if sideWallDictionaryValue != nil {
                let (sideWallInstance, error) = ClassRegistry.getClassFromDictionary(ChartWall.self, sideWallDictionaryValue!)
                if error == nil && sideWallInstance != nil {
                    self.sideWall = sideWallInstance! as? ChartWall
                }
            }
        }
        let floorValue = source["floor"] ?? source["Floor"]
        if floorValue != nil {
            let floorDictionaryValue = floorValue! as? [String:Any]
            if floorDictionaryValue != nil {
                let (floorInstance, error) = ClassRegistry.getClassFromDictionary(ChartWall.self, floorDictionaryValue!)
                if error == nil && floorInstance != nil {
                    self.floor = floorInstance! as? ChartWall
                }
            }
        }
        let legendValue = source["legend"] ?? source["Legend"]
        if legendValue != nil {
            let legendDictionaryValue = legendValue! as? [String:Any]
            if legendDictionaryValue != nil {
                let (legendInstance, error) = ClassRegistry.getClassFromDictionary(Legend.self, legendDictionaryValue!)
                if error == nil && legendInstance != nil {
                    self.legend = legendInstance! as? Legend
                }
            }
        }
        let axesValue = source["axes"] ?? source["Axes"]
        if axesValue != nil {
            let axesDictionaryValue = axesValue! as? [String:Any]
            if axesDictionaryValue != nil {
                let (axesInstance, error) = ClassRegistry.getClassFromDictionary(Axes.self, axesDictionaryValue!)
                if error == nil && axesInstance != nil {
                    self.axes = axesInstance! as? Axes
                }
            }
        }
        let plotAreaValue = source["plotArea"] ?? source["PlotArea"]
        if plotAreaValue != nil {
            let plotAreaDictionaryValue = plotAreaValue! as? [String:Any]
            if plotAreaDictionaryValue != nil {
                let (plotAreaInstance, error) = ClassRegistry.getClassFromDictionary(PlotArea.self, plotAreaDictionaryValue!)
                if error == nil && plotAreaInstance != nil {
                    self.plotArea = plotAreaInstance! as? PlotArea
                }
            }
        }
        let hasRoundedCornersValue = source["hasRoundedCorners"] ?? source["HasRoundedCorners"]
        if hasRoundedCornersValue != nil {
            self.hasRoundedCorners = hasRoundedCornersValue! as? Bool
        }
        let seriesGroupsValue = source["seriesGroups"] ?? source["SeriesGroups"]
        if seriesGroupsValue != nil {
            var seriesGroupsArray: [ChartSeriesGroup] = []
            let seriesGroupsDictionaryValue = seriesGroupsValue! as? [Any]
            if seriesGroupsDictionaryValue != nil {
                seriesGroupsDictionaryValue!.forEach { seriesGroupsAnyItem in
                    let seriesGroupsItem = seriesGroupsAnyItem as? [String:Any]
                    var added = false
                    if seriesGroupsItem != nil {
                        let (seriesGroupsInstance, error) = ClassRegistry.getClassFromDictionary(ChartSeriesGroup.self, seriesGroupsItem!)
                        if error == nil && seriesGroupsInstance != nil {
                            let seriesGroupsArrayItem = seriesGroupsInstance! as? ChartSeriesGroup
                            if seriesGroupsArrayItem != nil {
                                seriesGroupsArray.append(seriesGroupsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        seriesGroupsArray.append(ChartSeriesGroup())
                    }
                }
            }
            self.seriesGroups = seriesGroupsArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, x: Double? = nil, y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, chartType: ChartType? = nil, showDataLabelsOverMaximum: Bool? = nil, series: [Series]? = nil, categories: [ChartCategory]? = nil, dataSourceForCategories: DataSource? = nil, title: ChartTitle? = nil, backWall: ChartWall? = nil, sideWall: ChartWall? = nil, floor: ChartWall? = nil, legend: Legend? = nil, axes: Axes? = nil, plotArea: PlotArea? = nil, hasRoundedCorners: Bool? = nil, seriesGroups: [ChartSeriesGroup]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, x: x, y: y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type)
        self.chartType = chartType
        self.showDataLabelsOverMaximum = showDataLabelsOverMaximum
        self.series = series
        self.categories = categories
        self.dataSourceForCategories = dataSourceForCategories
        self.title = title
        self.backWall = backWall
        self.sideWall = sideWall
        self.floor = floor
        self.legend = legend
        self.axes = axes
        self.plotArea = plotArea
        self.hasRoundedCorners = hasRoundedCorners
        self.seriesGroups = seriesGroups
        self.type = ModelType.chart
    }

    private enum CodingKeys: String, CodingKey {
        case chartType
        case showDataLabelsOverMaximum
        case series
        case categories
        case dataSourceForCategories
        case title
        case backWall
        case sideWall
        case floor
        case legend
        case axes
        case plotArea
        case hasRoundedCorners
        case seriesGroups
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        chartType = try? values.decode(ChartType.self, forKey: .chartType)
        showDataLabelsOverMaximum = try? values.decode(Bool.self, forKey: .showDataLabelsOverMaximum)
        series = try? values.decode([Series].self, forKey: .series)
        categories = try? values.decode([ChartCategory].self, forKey: .categories)
        dataSourceForCategories = try? values.decode(DataSource.self, forKey: .dataSourceForCategories)
        title = try? values.decode(ChartTitle.self, forKey: .title)
        backWall = try? values.decode(ChartWall.self, forKey: .backWall)
        sideWall = try? values.decode(ChartWall.self, forKey: .sideWall)
        floor = try? values.decode(ChartWall.self, forKey: .floor)
        legend = try? values.decode(Legend.self, forKey: .legend)
        axes = try? values.decode(Axes.self, forKey: .axes)
        plotArea = try? values.decode(PlotArea.self, forKey: .plotArea)
        hasRoundedCorners = try? values.decode(Bool.self, forKey: .hasRoundedCorners)
        seriesGroups = try? values.decode([ChartSeriesGroup].self, forKey: .seriesGroups)
        self.type = ModelType.chart
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (chartType != nil) {
            try? container.encode(chartType, forKey: .chartType)
        }
        if (showDataLabelsOverMaximum != nil) {
            try? container.encode(showDataLabelsOverMaximum, forKey: .showDataLabelsOverMaximum)
        }
        if (series != nil) {
            try? container.encode(series, forKey: .series)
        }
        if (categories != nil) {
            try? container.encode(categories, forKey: .categories)
        }
        if (dataSourceForCategories != nil) {
            try? container.encode(dataSourceForCategories, forKey: .dataSourceForCategories)
        }
        if (title != nil) {
            try? container.encode(title, forKey: .title)
        }
        if (backWall != nil) {
            try? container.encode(backWall, forKey: .backWall)
        }
        if (sideWall != nil) {
            try? container.encode(sideWall, forKey: .sideWall)
        }
        if (floor != nil) {
            try? container.encode(floor, forKey: .floor)
        }
        if (legend != nil) {
            try? container.encode(legend, forKey: .legend)
        }
        if (axes != nil) {
            try? container.encode(axes, forKey: .axes)
        }
        if (plotArea != nil) {
            try? container.encode(plotArea, forKey: .plotArea)
        }
        if (hasRoundedCorners != nil) {
            try? container.encode(hasRoundedCorners, forKey: .hasRoundedCorners)
        }
        if (seriesGroups != nil) {
            try? container.encode(seriesGroups, forKey: .seriesGroups)
        }
    }

}

