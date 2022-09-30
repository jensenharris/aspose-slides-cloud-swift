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


/** Arrow head properties. */
public class ArrowHeadProperties: Codable {

    public enum Length: String, Codable { 
        case short = "Short"
        case medium = "Medium"
        case long = "Long"
        case notDefined = "NotDefined"
    }
    public enum Style: String, Codable { 
        case _none = "None"
        case triangle = "Triangle"
        case stealth = "Stealth"
        case diamond = "Diamond"
        case oval = "Oval"
        case open = "Open"
        case notDefined = "NotDefined"
    }
    public enum Width: String, Codable { 
        case narrow = "Narrow"
        case medium = "Medium"
        case wide = "Wide"
        case notDefined = "NotDefined"
    }
    /** Length. */
    public var length: Length?
    /** Style. */
    public var style: Style?
    /** Width. */
    public var width: Width?

    func fillValues(_ source: [String:Any]) throws {
        let lengthValue = source["length"] ?? source["Length"]
        if lengthValue != nil {
            let lengthStringValue = lengthValue! as? String
            if lengthStringValue != nil {
                let lengthEnumValue = Length(rawValue: lengthStringValue!)
                if lengthEnumValue != nil {
                    self.length = lengthEnumValue!
                }
            }
        }
        let styleValue = source["style"] ?? source["Style"]
        if styleValue != nil {
            let styleStringValue = styleValue! as? String
            if styleStringValue != nil {
                let styleEnumValue = Style(rawValue: styleStringValue!)
                if styleEnumValue != nil {
                    self.style = styleEnumValue!
                }
            }
        }
        let widthValue = source["width"] ?? source["Width"]
        if widthValue != nil {
            let widthStringValue = widthValue! as? String
            if widthStringValue != nil {
                let widthEnumValue = Width(rawValue: widthStringValue!)
                if widthEnumValue != nil {
                    self.width = widthEnumValue!
                }
            }
        }
    }

    public init(length: Length? = nil, style: Style? = nil, width: Width? = nil) {
        self.length = length
        self.style = style
        self.width = width
    }

    private enum CodingKeys: String, CodingKey {
        case length
        case style
        case width
    }

}

