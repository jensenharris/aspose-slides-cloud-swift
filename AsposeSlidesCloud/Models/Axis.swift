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


/** Represents a chart axis */
public class Axis: Codable {

    public enum Position: String, Codable { 
        case bottom = "Bottom"
        case _left = "Left"
        case _right = "Right"
        case top = "Top"
    }
    public enum DisplayUnit: String, Codable { 
        case _none = "None"
        case hundreds = "Hundreds"
        case thousands = "Thousands"
        case tenThousands = "TenThousands"
        case hundredThousands = "HundredThousands"
        case millions = "Millions"
        case tenMillions = "TenMillions"
        case hundredMillions = "HundredMillions"
        case billions = "Billions"
        case trillions = "Trillions"
        case customValue = "CustomValue"
    }
    public enum BaseUnitScale: String, Codable { 
        case _none = "None"
        case days = "Days"
        case months = "Months"
        case years = "Years"
    }
    public enum MajorUnitScale: String, Codable { 
        case _none = "None"
        case days = "Days"
        case months = "Months"
        case years = "Years"
    }
    public enum MajorTickMark: String, Codable { 
        case cross = "Cross"
        case inside = "Inside"
        case _none = "None"
        case outside = "Outside"
    }
    public enum MinorUnitScale: String, Codable { 
        case _none = "None"
        case days = "Days"
        case months = "Months"
        case years = "Years"
    }
    public enum MinorTickMark: String, Codable { 
        case cross = "Cross"
        case inside = "Inside"
        case _none = "None"
        case outside = "Outside"
    }
    public enum CategoryAxisType: String, Codable { 
        case text = "Text"
        case date = "Date"
    }
    public enum CrossType: String, Codable { 
        case axisCrossesAtZero = "AxisCrossesAtZero"
        case maximum = "Maximum"
        case custom = "Custom"
    }
    public enum TickLabelPosition: String, Codable { 
        case high = "High"
        case low = "Low"
        case nextTo = "NextTo"
        case _none = "None"
    }
    /** True if the axis is visible */
    public var isVisible: Bool?
    /** True if the axis has a visible title */
    public var hasTitle: Bool?
    /** Axis position */
    public var position: Position?
    /** The scaling value of the display units for the value axis */
    public var displayUnit: DisplayUnit?
    /** The smallest time unit that is represented on the date axis */
    public var baseUnitScale: BaseUnitScale?
    /** True the major unit of the axis is automatically assigned */
    public var isAutomaticMajorUnit: Bool?
    /** The major units for the date or value axis */
    public var majorUnit: Double?
    /** The major unit scale for the date axis */
    public var majorUnitScale: MajorUnitScale?
    /** The type of major tick mark for the specified axis */
    public var majorTickMark: MajorTickMark?
    /** True the minor unit of the axis is automatically assigned */
    public var isAutomaticMinorUnit: Bool?
    /** The minor units for the date or value axis */
    public var minorUnit: Double?
    /** The minor unit scale for the date axis */
    public var minorUnitScale: MinorUnitScale?
    /** The type of minor tick mark for the specified axis */
    public var minorTickMark: MinorTickMark?
    /** True if the max value is automatically assigned */
    public var isAutomaticMaxValue: Bool?
    /** The maximum value on the value axis */
    public var maxValue: Double?
    /** True if the min value is automatically assigned */
    public var isAutomaticMinValue: Bool?
    /** The minimum value on the value axis */
    public var minValue: Double?
    /** True if the value axis scale type is logarithmic */
    public var isLogarithmic: Bool?
    /** The logarithmic base. Default value is 10 */
    public var logBase: Double?
    /** The type of the category axis */
    public var categoryAxisType: CategoryAxisType?
    /** True if the value axis crosses the category axis between categories. This property applies only to category axes, and it doesn&#39;t apply to 3-D charts */
    public var axisBetweenCategories: Bool?
    /** The distance of labels from the axis. Applied to category or date axis. Value must be between 0% and 1000%.              */
    public var labelOffset: Int?
    /** True if MS PowerPoint plots data points from last to first */
    public var isPlotOrderReversed: Bool?
    /** True if the format is linked to source data */
    public var isNumberFormatLinkedToSource: Bool?
    /** the format string for the Axis Labels */
    public var numberFormat: String?
    /** The CrossType on the specified axis where the other axis crosses */
    public var crossType: CrossType?
    /** The point on the axis where the perpendicular axis crosses it */
    public var crossAt: Double?
    /** True for automatic tick marks spacing value */
    public var isAutomaticTickMarksSpacing: Bool?
    /** Specifies how many tick marks shall be skipped before the next one shall be drawn. Applied to category or series axis. */
    public var tickMarksSpacing: Int?
    /** True for automatic tick label spacing value */
    public var isAutomaticTickLabelSpacing: Bool?
    /** Specifies how many tick labels to skip between label that is drawn. */
    public var tickLabelSpacing: Int?
    /** The position of tick-mark labels on the specified axis. */
    public var tickLabelPosition: TickLabelPosition?
    /** Represents the rotation angle of tick labels. */
    public var tickLabelRotationAngle: Double?
    /** Get or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Get or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Get or sets the line format. */
    public var lineFormat: LineFormat?

    private enum CodingKeys: String, CodingKey {
        case isVisible
        case hasTitle
        case position
        case displayUnit
        case baseUnitScale
        case isAutomaticMajorUnit
        case majorUnit
        case majorUnitScale
        case majorTickMark
        case isAutomaticMinorUnit
        case minorUnit
        case minorUnitScale
        case minorTickMark
        case isAutomaticMaxValue
        case maxValue
        case isAutomaticMinValue
        case minValue
        case isLogarithmic
        case logBase
        case categoryAxisType
        case axisBetweenCategories
        case labelOffset
        case isPlotOrderReversed
        case isNumberFormatLinkedToSource
        case numberFormat
        case crossType
        case crossAt
        case isAutomaticTickMarksSpacing
        case tickMarksSpacing
        case isAutomaticTickLabelSpacing
        case tickLabelSpacing
        case tickLabelPosition
        case tickLabelRotationAngle
        case fillFormat
        case effectFormat
        case lineFormat
    }

    public init(isVisible: Bool? = nil, hasTitle: Bool? = nil, position: Position? = nil, displayUnit: DisplayUnit? = nil, baseUnitScale: BaseUnitScale? = nil, isAutomaticMajorUnit: Bool? = nil, majorUnit: Double? = nil, majorUnitScale: MajorUnitScale? = nil, majorTickMark: MajorTickMark? = nil, isAutomaticMinorUnit: Bool? = nil, minorUnit: Double? = nil, minorUnitScale: MinorUnitScale? = nil, minorTickMark: MinorTickMark? = nil, isAutomaticMaxValue: Bool? = nil, maxValue: Double? = nil, isAutomaticMinValue: Bool? = nil, minValue: Double? = nil, isLogarithmic: Bool? = nil, logBase: Double? = nil, categoryAxisType: CategoryAxisType? = nil, axisBetweenCategories: Bool? = nil, labelOffset: Int? = nil, isPlotOrderReversed: Bool? = nil, isNumberFormatLinkedToSource: Bool? = nil, numberFormat: String? = nil, crossType: CrossType? = nil, crossAt: Double? = nil, isAutomaticTickMarksSpacing: Bool? = nil, tickMarksSpacing: Int? = nil, isAutomaticTickLabelSpacing: Bool? = nil, tickLabelSpacing: Int? = nil, tickLabelPosition: TickLabelPosition? = nil, tickLabelRotationAngle: Double? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil) {
        self.isVisible = isVisible
        self.hasTitle = hasTitle
        self.position = position
        self.displayUnit = displayUnit
        self.baseUnitScale = baseUnitScale
        self.isAutomaticMajorUnit = isAutomaticMajorUnit
        self.majorUnit = majorUnit
        self.majorUnitScale = majorUnitScale
        self.majorTickMark = majorTickMark
        self.isAutomaticMinorUnit = isAutomaticMinorUnit
        self.minorUnit = minorUnit
        self.minorUnitScale = minorUnitScale
        self.minorTickMark = minorTickMark
        self.isAutomaticMaxValue = isAutomaticMaxValue
        self.maxValue = maxValue
        self.isAutomaticMinValue = isAutomaticMinValue
        self.minValue = minValue
        self.isLogarithmic = isLogarithmic
        self.logBase = logBase
        self.categoryAxisType = categoryAxisType
        self.axisBetweenCategories = axisBetweenCategories
        self.labelOffset = labelOffset
        self.isPlotOrderReversed = isPlotOrderReversed
        self.isNumberFormatLinkedToSource = isNumberFormatLinkedToSource
        self.numberFormat = numberFormat
        self.crossType = crossType
        self.crossAt = crossAt
        self.isAutomaticTickMarksSpacing = isAutomaticTickMarksSpacing
        self.tickMarksSpacing = tickMarksSpacing
        self.isAutomaticTickLabelSpacing = isAutomaticTickLabelSpacing
        self.tickLabelSpacing = tickLabelSpacing
        self.tickLabelPosition = tickLabelPosition
        self.tickLabelRotationAngle = tickLabelRotationAngle
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
    }


}

