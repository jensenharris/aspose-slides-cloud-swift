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


/** Data point. */
public class DataPoint: Codable {

    public enum ModelType: String, Codable { 
        case oneValue = "OneValue"
        case scatter = "Scatter"
        case bubble = "Bubble"
    }
    /** Gets or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Gets or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Gets or sets the 3D format */
    public var threeDFormat: ThreeDFormat?
    /** Gets or sets the line format. */
    public var lineFormat: LineFormat?
    public var type: ModelType?

    func fillValues(_ source: [String:Any]) throws {
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
        let threeDFormatValue = source["threeDFormat"] ?? source["ThreeDFormat"]
        if threeDFormatValue != nil {
            let threeDFormatDictionaryValue = threeDFormatValue! as? [String:Any]
            if threeDFormatDictionaryValue != nil {
                let (threeDFormatInstance, error) = ClassRegistry.getClassFromDictionary(ThreeDFormat.self, threeDFormatDictionaryValue!)
                if error == nil && threeDFormatInstance != nil {
                    self.threeDFormat = threeDFormatInstance! as? ThreeDFormat
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
    }

    public init(fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, type: ModelType? = nil) {
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.threeDFormat = threeDFormat
        self.lineFormat = lineFormat
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case fillFormat
        case effectFormat
        case threeDFormat
        case lineFormat
        case type
    }

}

