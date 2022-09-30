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


/** Represents the plot area */
public class PlotArea: Codable {

    public enum LayoutTargetType: String, Codable { 
        case inner = "Inner"
        case outer = "Outer"
    }
    /** the X location */
    public var X: Double?
    /** the Y location */
    public var Y: Double?
    /** Width */
    public var width: Double?
    /** Height */
    public var height: Double?
    /** If layout of the plot area is defined manually specifies whether to layout the plot area by its inside (not including axis and axis labels) or outside. */
    public var layoutTargetType: LayoutTargetType?
    /** Get or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Get or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Get or sets the line format. */
    public var lineFormat: LineFormat?

    func fillValues(_ source: [String:Any]) throws {
        let XValue = source["X"] ?? source["X"]
        if XValue != nil {
            self.X = XValue! as? Double
        }
        let YValue = source["Y"] ?? source["Y"]
        if YValue != nil {
            self.Y = YValue! as? Double
        }
        let widthValue = source["width"] ?? source["Width"]
        if widthValue != nil {
            self.width = widthValue! as? Double
        }
        let heightValue = source["height"] ?? source["Height"]
        if heightValue != nil {
            self.height = heightValue! as? Double
        }
        let layoutTargetTypeValue = source["layoutTargetType"] ?? source["LayoutTargetType"]
        if layoutTargetTypeValue != nil {
            let layoutTargetTypeStringValue = layoutTargetTypeValue! as? String
            if layoutTargetTypeStringValue != nil {
                let layoutTargetTypeEnumValue = LayoutTargetType(rawValue: layoutTargetTypeStringValue!)
                if layoutTargetTypeEnumValue != nil {
                    self.layoutTargetType = layoutTargetTypeEnumValue!
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
    }

    public init(X: Double? = nil, Y: Double? = nil, width: Double? = nil, height: Double? = nil, layoutTargetType: LayoutTargetType? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil) {
        self.X = X
        self.Y = Y
        self.width = width
        self.height = height
        self.layoutTargetType = layoutTargetType
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
    }

    private enum CodingKeys: String, CodingKey {
        case X
        case Y
        case width
        case height
        case layoutTargetType
        case fillFormat
        case effectFormat
        case lineFormat
    }

}

