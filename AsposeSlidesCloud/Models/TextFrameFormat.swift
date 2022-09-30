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


/** Contains the TextFrame&#39;s formatting properties. */
public class TextFrameFormat: Codable {

    public enum Transform: String, Codable { 
        case _none = "None"
        case plain = "Plain"
        case stop = "Stop"
        case triangle = "Triangle"
        case triangleInverted = "TriangleInverted"
        case chevron = "Chevron"
        case chevronInverted = "ChevronInverted"
        case ringInside = "RingInside"
        case ringOutside = "RingOutside"
        case archUp = "ArchUp"
        case archDown = "ArchDown"
        case circle = "Circle"
        case button = "Button"
        case archUpPour = "ArchUpPour"
        case archDownPour = "ArchDownPour"
        case circlePour = "CirclePour"
        case buttonPour = "ButtonPour"
        case curveUp = "CurveUp"
        case curveDown = "CurveDown"
        case canUp = "CanUp"
        case canDown = "CanDown"
        case wave1 = "Wave1"
        case wave2 = "Wave2"
        case doubleWave1 = "DoubleWave1"
        case wave4 = "Wave4"
        case inflate = "Inflate"
        case deflate = "Deflate"
        case inflateBottom = "InflateBottom"
        case deflateBottom = "DeflateBottom"
        case inflateTop = "InflateTop"
        case deflateTop = "DeflateTop"
        case deflateInflate = "DeflateInflate"
        case deflateInflateDeflate = "DeflateInflateDeflate"
        case fadeRight = "FadeRight"
        case fadeLeft = "FadeLeft"
        case fadeUp = "FadeUp"
        case fadeDown = "FadeDown"
        case slantUp = "SlantUp"
        case slantDown = "SlantDown"
        case cascadeUp = "CascadeUp"
        case cascadeDown = "CascadeDown"
        case custom = "Custom"
        case notDefined = "NotDefined"
    }
    /** Represents 3d effect properties for a text. */
    public var threeDFormat: ThreeDFormat?
    /** Gets or sets text wrapping shape. */
    public var transform: Transform?

    func fillValues(_ source: [String:Any]) throws {
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
        let transformValue = source["transform"] ?? source["Transform"]
        if transformValue != nil {
            let transformStringValue = transformValue! as? String
            if transformStringValue != nil {
                let transformEnumValue = Transform(rawValue: transformStringValue!)
                if transformEnumValue != nil {
                    self.transform = transformEnumValue!
                }
            }
        }
    }

    public init(threeDFormat: ThreeDFormat? = nil, transform: Transform? = nil) {
        self.threeDFormat = threeDFormat
        self.transform = transform
    }

    private enum CodingKeys: String, CodingKey {
        case threeDFormat
        case transform
    }

}

