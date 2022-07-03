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


/** Represents chart category resource */
public class ChartCategory: Codable {

    /** Gets or sets the parent categories. Used with Sunburst &amp;amp; treemap categories; ignored for other chart types. */
    public var parentCategories: [String]?
    /** Gets or sets the grouping level for the category. Used with Sunburst &amp;amp; treemap categories; ignored for other chart types. */
    public var level: Int?
    /** Category value */
    public var value: String?
    /** Get or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Get or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Get or sets the line format. */
    public var lineFormat: LineFormat?
    /** Gets or sets the data points for chart data */
    public var dataPoints: [OneValueChartDataPoint]?

    func fillValues(_ source: [String:Any]) throws {
        let parentCategoriesValue = source["parentCategories"]
        if parentCategoriesValue != nil {
            self.parentCategories = parentCategoriesValue! as? [String]
        }
        let levelValue = source["level"]
        if levelValue != nil {
            self.level = levelValue! as? Int
        }
        let valueValue = source["value"]
        if valueValue != nil {
            self.value = valueValue! as? String
        }
        let fillFormatValue = source["fillFormat"]
        if fillFormatValue != nil {
            let fillFormatDictionaryValue = fillFormatValue! as? [String:Any]
            if fillFormatDictionaryValue != nil {
                let (fillFormatInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, fillFormatDictionaryValue!)
                if error == nil && fillFormatInstance != nil {
                    self.fillFormat = fillFormatInstance! as? FillFormat
                }
            }
        }
        let effectFormatValue = source["effectFormat"]
        if effectFormatValue != nil {
            let effectFormatDictionaryValue = effectFormatValue! as? [String:Any]
            if effectFormatDictionaryValue != nil {
                let (effectFormatInstance, error) = ClassRegistry.getClassFromDictionary(EffectFormat.self, effectFormatDictionaryValue!)
                if error == nil && effectFormatInstance != nil {
                    self.effectFormat = effectFormatInstance! as? EffectFormat
                }
            }
        }
        let lineFormatValue = source["lineFormat"]
        if lineFormatValue != nil {
            let lineFormatDictionaryValue = lineFormatValue! as? [String:Any]
            if lineFormatDictionaryValue != nil {
                let (lineFormatInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, lineFormatDictionaryValue!)
                if error == nil && lineFormatInstance != nil {
                    self.lineFormat = lineFormatInstance! as? LineFormat
                }
            }
        }
        let dataPointsValue = source["dataPoints"]
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
    }

    public init(parentCategories: [String]? = nil, level: Int? = nil, value: String? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPoints: [OneValueChartDataPoint]? = nil) {
        self.parentCategories = parentCategories
        self.level = level
        self.value = value
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
        self.dataPoints = dataPoints
    }

    private enum CodingKeys: String, CodingKey {
        case parentCategories
        case level
        case value
        case fillFormat
        case effectFormat
        case lineFormat
        case dataPoints
    }

}

