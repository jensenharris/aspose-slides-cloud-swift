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
    /** Get or sets the format of major grid lines. */
    public var majorGridLinesFormat: ChartLinesFormat?
    /** Get or sets the format of major grid lines. */
    public var minorGridLinesFormat: ChartLinesFormat?

    func fillValues(_ source: [String:Any]) throws {
        let isVisibleValue = source["isVisible"] ?? source["IsVisible"]
        if isVisibleValue != nil {
            self.isVisible = isVisibleValue! as? Bool
        }
        let hasTitleValue = source["hasTitle"] ?? source["HasTitle"]
        if hasTitleValue != nil {
            self.hasTitle = hasTitleValue! as? Bool
        }
        let positionValue = source["position"] ?? source["Position"]
        if positionValue != nil {
            let positionStringValue = positionValue! as? String
            if positionStringValue != nil {
                let positionEnumValue = Position(rawValue: positionStringValue!)
                if positionEnumValue != nil {
                    self.position = positionEnumValue!
                }
            }
        }
        let displayUnitValue = source["displayUnit"] ?? source["DisplayUnit"]
        if displayUnitValue != nil {
            let displayUnitStringValue = displayUnitValue! as? String
            if displayUnitStringValue != nil {
                let displayUnitEnumValue = DisplayUnit(rawValue: displayUnitStringValue!)
                if displayUnitEnumValue != nil {
                    self.displayUnit = displayUnitEnumValue!
                }
            }
        }
        let baseUnitScaleValue = source["baseUnitScale"] ?? source["BaseUnitScale"]
        if baseUnitScaleValue != nil {
            let baseUnitScaleStringValue = baseUnitScaleValue! as? String
            if baseUnitScaleStringValue != nil {
                let baseUnitScaleEnumValue = BaseUnitScale(rawValue: baseUnitScaleStringValue!)
                if baseUnitScaleEnumValue != nil {
                    self.baseUnitScale = baseUnitScaleEnumValue!
                }
            }
        }
        let isAutomaticMajorUnitValue = source["isAutomaticMajorUnit"] ?? source["IsAutomaticMajorUnit"]
        if isAutomaticMajorUnitValue != nil {
            self.isAutomaticMajorUnit = isAutomaticMajorUnitValue! as? Bool
        }
        let majorUnitValue = source["majorUnit"] ?? source["MajorUnit"]
        if majorUnitValue != nil {
            self.majorUnit = majorUnitValue! as? Double
        }
        let majorUnitScaleValue = source["majorUnitScale"] ?? source["MajorUnitScale"]
        if majorUnitScaleValue != nil {
            let majorUnitScaleStringValue = majorUnitScaleValue! as? String
            if majorUnitScaleStringValue != nil {
                let majorUnitScaleEnumValue = MajorUnitScale(rawValue: majorUnitScaleStringValue!)
                if majorUnitScaleEnumValue != nil {
                    self.majorUnitScale = majorUnitScaleEnumValue!
                }
            }
        }
        let majorTickMarkValue = source["majorTickMark"] ?? source["MajorTickMark"]
        if majorTickMarkValue != nil {
            let majorTickMarkStringValue = majorTickMarkValue! as? String
            if majorTickMarkStringValue != nil {
                let majorTickMarkEnumValue = MajorTickMark(rawValue: majorTickMarkStringValue!)
                if majorTickMarkEnumValue != nil {
                    self.majorTickMark = majorTickMarkEnumValue!
                }
            }
        }
        let isAutomaticMinorUnitValue = source["isAutomaticMinorUnit"] ?? source["IsAutomaticMinorUnit"]
        if isAutomaticMinorUnitValue != nil {
            self.isAutomaticMinorUnit = isAutomaticMinorUnitValue! as? Bool
        }
        let minorUnitValue = source["minorUnit"] ?? source["MinorUnit"]
        if minorUnitValue != nil {
            self.minorUnit = minorUnitValue! as? Double
        }
        let minorUnitScaleValue = source["minorUnitScale"] ?? source["MinorUnitScale"]
        if minorUnitScaleValue != nil {
            let minorUnitScaleStringValue = minorUnitScaleValue! as? String
            if minorUnitScaleStringValue != nil {
                let minorUnitScaleEnumValue = MinorUnitScale(rawValue: minorUnitScaleStringValue!)
                if minorUnitScaleEnumValue != nil {
                    self.minorUnitScale = minorUnitScaleEnumValue!
                }
            }
        }
        let minorTickMarkValue = source["minorTickMark"] ?? source["MinorTickMark"]
        if minorTickMarkValue != nil {
            let minorTickMarkStringValue = minorTickMarkValue! as? String
            if minorTickMarkStringValue != nil {
                let minorTickMarkEnumValue = MinorTickMark(rawValue: minorTickMarkStringValue!)
                if minorTickMarkEnumValue != nil {
                    self.minorTickMark = minorTickMarkEnumValue!
                }
            }
        }
        let isAutomaticMaxValueValue = source["isAutomaticMaxValue"] ?? source["IsAutomaticMaxValue"]
        if isAutomaticMaxValueValue != nil {
            self.isAutomaticMaxValue = isAutomaticMaxValueValue! as? Bool
        }
        let maxValueValue = source["maxValue"] ?? source["MaxValue"]
        if maxValueValue != nil {
            self.maxValue = maxValueValue! as? Double
        }
        let isAutomaticMinValueValue = source["isAutomaticMinValue"] ?? source["IsAutomaticMinValue"]
        if isAutomaticMinValueValue != nil {
            self.isAutomaticMinValue = isAutomaticMinValueValue! as? Bool
        }
        let minValueValue = source["minValue"] ?? source["MinValue"]
        if minValueValue != nil {
            self.minValue = minValueValue! as? Double
        }
        let isLogarithmicValue = source["isLogarithmic"] ?? source["IsLogarithmic"]
        if isLogarithmicValue != nil {
            self.isLogarithmic = isLogarithmicValue! as? Bool
        }
        let logBaseValue = source["logBase"] ?? source["LogBase"]
        if logBaseValue != nil {
            self.logBase = logBaseValue! as? Double
        }
        let categoryAxisTypeValue = source["categoryAxisType"] ?? source["CategoryAxisType"]
        if categoryAxisTypeValue != nil {
            let categoryAxisTypeStringValue = categoryAxisTypeValue! as? String
            if categoryAxisTypeStringValue != nil {
                let categoryAxisTypeEnumValue = CategoryAxisType(rawValue: categoryAxisTypeStringValue!)
                if categoryAxisTypeEnumValue != nil {
                    self.categoryAxisType = categoryAxisTypeEnumValue!
                }
            }
        }
        let axisBetweenCategoriesValue = source["axisBetweenCategories"] ?? source["AxisBetweenCategories"]
        if axisBetweenCategoriesValue != nil {
            self.axisBetweenCategories = axisBetweenCategoriesValue! as? Bool
        }
        let labelOffsetValue = source["labelOffset"] ?? source["LabelOffset"]
        if labelOffsetValue != nil {
            self.labelOffset = labelOffsetValue! as? Int
        }
        let isPlotOrderReversedValue = source["isPlotOrderReversed"] ?? source["IsPlotOrderReversed"]
        if isPlotOrderReversedValue != nil {
            self.isPlotOrderReversed = isPlotOrderReversedValue! as? Bool
        }
        let isNumberFormatLinkedToSourceValue = source["isNumberFormatLinkedToSource"] ?? source["IsNumberFormatLinkedToSource"]
        if isNumberFormatLinkedToSourceValue != nil {
            self.isNumberFormatLinkedToSource = isNumberFormatLinkedToSourceValue! as? Bool
        }
        let numberFormatValue = source["numberFormat"] ?? source["NumberFormat"]
        if numberFormatValue != nil {
            self.numberFormat = numberFormatValue! as? String
        }
        let crossTypeValue = source["crossType"] ?? source["CrossType"]
        if crossTypeValue != nil {
            let crossTypeStringValue = crossTypeValue! as? String
            if crossTypeStringValue != nil {
                let crossTypeEnumValue = CrossType(rawValue: crossTypeStringValue!)
                if crossTypeEnumValue != nil {
                    self.crossType = crossTypeEnumValue!
                }
            }
        }
        let crossAtValue = source["crossAt"] ?? source["CrossAt"]
        if crossAtValue != nil {
            self.crossAt = crossAtValue! as? Double
        }
        let isAutomaticTickMarksSpacingValue = source["isAutomaticTickMarksSpacing"] ?? source["IsAutomaticTickMarksSpacing"]
        if isAutomaticTickMarksSpacingValue != nil {
            self.isAutomaticTickMarksSpacing = isAutomaticTickMarksSpacingValue! as? Bool
        }
        let tickMarksSpacingValue = source["tickMarksSpacing"] ?? source["TickMarksSpacing"]
        if tickMarksSpacingValue != nil {
            self.tickMarksSpacing = tickMarksSpacingValue! as? Int
        }
        let isAutomaticTickLabelSpacingValue = source["isAutomaticTickLabelSpacing"] ?? source["IsAutomaticTickLabelSpacing"]
        if isAutomaticTickLabelSpacingValue != nil {
            self.isAutomaticTickLabelSpacing = isAutomaticTickLabelSpacingValue! as? Bool
        }
        let tickLabelSpacingValue = source["tickLabelSpacing"] ?? source["TickLabelSpacing"]
        if tickLabelSpacingValue != nil {
            self.tickLabelSpacing = tickLabelSpacingValue! as? Int
        }
        let tickLabelPositionValue = source["tickLabelPosition"] ?? source["TickLabelPosition"]
        if tickLabelPositionValue != nil {
            let tickLabelPositionStringValue = tickLabelPositionValue! as? String
            if tickLabelPositionStringValue != nil {
                let tickLabelPositionEnumValue = TickLabelPosition(rawValue: tickLabelPositionStringValue!)
                if tickLabelPositionEnumValue != nil {
                    self.tickLabelPosition = tickLabelPositionEnumValue!
                }
            }
        }
        let tickLabelRotationAngleValue = source["tickLabelRotationAngle"] ?? source["TickLabelRotationAngle"]
        if tickLabelRotationAngleValue != nil {
            self.tickLabelRotationAngle = tickLabelRotationAngleValue! as? Double
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
        let majorGridLinesFormatValue = source["majorGridLinesFormat"] ?? source["MajorGridLinesFormat"]
        if majorGridLinesFormatValue != nil {
            let majorGridLinesFormatDictionaryValue = majorGridLinesFormatValue! as? [String:Any]
            if majorGridLinesFormatDictionaryValue != nil {
                let (majorGridLinesFormatInstance, error) = ClassRegistry.getClassFromDictionary(ChartLinesFormat.self, majorGridLinesFormatDictionaryValue!)
                if error == nil && majorGridLinesFormatInstance != nil {
                    self.majorGridLinesFormat = majorGridLinesFormatInstance! as? ChartLinesFormat
                }
            }
        }
        let minorGridLinesFormatValue = source["minorGridLinesFormat"] ?? source["MinorGridLinesFormat"]
        if minorGridLinesFormatValue != nil {
            let minorGridLinesFormatDictionaryValue = minorGridLinesFormatValue! as? [String:Any]
            if minorGridLinesFormatDictionaryValue != nil {
                let (minorGridLinesFormatInstance, error) = ClassRegistry.getClassFromDictionary(ChartLinesFormat.self, minorGridLinesFormatDictionaryValue!)
                if error == nil && minorGridLinesFormatInstance != nil {
                    self.minorGridLinesFormat = minorGridLinesFormatInstance! as? ChartLinesFormat
                }
            }
        }
    }

    public init(isVisible: Bool? = nil, hasTitle: Bool? = nil, position: Position? = nil, displayUnit: DisplayUnit? = nil, baseUnitScale: BaseUnitScale? = nil, isAutomaticMajorUnit: Bool? = nil, majorUnit: Double? = nil, majorUnitScale: MajorUnitScale? = nil, majorTickMark: MajorTickMark? = nil, isAutomaticMinorUnit: Bool? = nil, minorUnit: Double? = nil, minorUnitScale: MinorUnitScale? = nil, minorTickMark: MinorTickMark? = nil, isAutomaticMaxValue: Bool? = nil, maxValue: Double? = nil, isAutomaticMinValue: Bool? = nil, minValue: Double? = nil, isLogarithmic: Bool? = nil, logBase: Double? = nil, categoryAxisType: CategoryAxisType? = nil, axisBetweenCategories: Bool? = nil, labelOffset: Int? = nil, isPlotOrderReversed: Bool? = nil, isNumberFormatLinkedToSource: Bool? = nil, numberFormat: String? = nil, crossType: CrossType? = nil, crossAt: Double? = nil, isAutomaticTickMarksSpacing: Bool? = nil, tickMarksSpacing: Int? = nil, isAutomaticTickLabelSpacing: Bool? = nil, tickLabelSpacing: Int? = nil, tickLabelPosition: TickLabelPosition? = nil, tickLabelRotationAngle: Double? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, majorGridLinesFormat: ChartLinesFormat? = nil, minorGridLinesFormat: ChartLinesFormat? = nil) {
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
        self.majorGridLinesFormat = majorGridLinesFormat
        self.minorGridLinesFormat = minorGridLinesFormat
    }

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
        case majorGridLinesFormat
        case minorGridLinesFormat
    }

}

