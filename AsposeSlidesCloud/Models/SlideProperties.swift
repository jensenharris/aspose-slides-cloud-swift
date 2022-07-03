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


/** Slide properties. */
public class SlideProperties: ResourceBase {

    public enum Orientation: String, Codable { 
        case landscape = "Landscape"
        case portrait = "Portrait"
    }
    public enum ScaleType: String, Codable { 
        case doNotScale = "DoNotScale"
        case ensureFit = "EnsureFit"
        case maximize = "Maximize"
    }
    public enum SizeType: String, Codable { 
        case onScreen = "OnScreen"
        case letterPaper = "LetterPaper"
        case a4Paper = "A4Paper"
        case slide35mm = "Slide35mm"
        case overhead = "Overhead"
        case banner = "Banner"
        case custom = "Custom"
        case ledger = "Ledger"
        case a3Paper = "A3Paper"
        case b4IsoPaper = "B4IsoPaper"
        case b5IsoPaper = "B5IsoPaper"
        case b4JisPaper = "B4JisPaper"
        case b5JisPaper = "B5JisPaper"
        case hagakiCard = "HagakiCard"
        case onScreen16x9 = "OnScreen16x9"
        case onScreen16x10 = "OnScreen16x10"
        case widescreen = "Widescreen"
    }
    /** First slide number. */
    public var firstSlideNumber: Int?
    /** Slide orientation. */
    public var orientation: Orientation?
    /** Scale type. */
    public var scaleType: ScaleType?
    /** Size type. */
    public var sizeType: SizeType?
    /** Width. */
    public var width: Int?
    /** Height. */
    public var height: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let firstSlideNumberValue = source["firstSlideNumber"]
        if firstSlideNumberValue != nil {
            self.firstSlideNumber = firstSlideNumberValue! as? Int
        }
        let orientationValue = source["orientation"]
        if orientationValue != nil {
            let orientationStringValue = orientationValue! as? String
            if orientationStringValue != nil {
                let orientationEnumValue = Orientation(rawValue: orientationStringValue!)
                if orientationEnumValue != nil {
                    self.orientation = orientationEnumValue!
                }
            }
        }
        let scaleTypeValue = source["scaleType"]
        if scaleTypeValue != nil {
            let scaleTypeStringValue = scaleTypeValue! as? String
            if scaleTypeStringValue != nil {
                let scaleTypeEnumValue = ScaleType(rawValue: scaleTypeStringValue!)
                if scaleTypeEnumValue != nil {
                    self.scaleType = scaleTypeEnumValue!
                }
            }
        }
        let sizeTypeValue = source["sizeType"]
        if sizeTypeValue != nil {
            let sizeTypeStringValue = sizeTypeValue! as? String
            if sizeTypeStringValue != nil {
                let sizeTypeEnumValue = SizeType(rawValue: sizeTypeStringValue!)
                if sizeTypeEnumValue != nil {
                    self.sizeType = sizeTypeEnumValue!
                }
            }
        }
        let widthValue = source["width"]
        if widthValue != nil {
            self.width = widthValue! as? Int
        }
        let heightValue = source["height"]
        if heightValue != nil {
            self.height = heightValue! as? Int
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, firstSlideNumber: Int? = nil, orientation: Orientation? = nil, scaleType: ScaleType? = nil, sizeType: SizeType? = nil, width: Int? = nil, height: Int? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.firstSlideNumber = firstSlideNumber
        self.orientation = orientation
        self.scaleType = scaleType
        self.sizeType = sizeType
        self.width = width
        self.height = height
    }

    private enum CodingKeys: String, CodingKey {
        case firstSlideNumber
        case orientation
        case scaleType
        case sizeType
        case width
        case height
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        firstSlideNumber = try? values.decode(Int.self, forKey: .firstSlideNumber)
        orientation = try? values.decode(Orientation.self, forKey: .orientation)
        scaleType = try? values.decode(ScaleType.self, forKey: .scaleType)
        sizeType = try? values.decode(SizeType.self, forKey: .sizeType)
        width = try? values.decode(Int.self, forKey: .width)
        height = try? values.decode(Int.self, forKey: .height)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (firstSlideNumber != nil) {
            try? container.encode(firstSlideNumber, forKey: .firstSlideNumber)
        }
        if (orientation != nil) {
            try? container.encode(orientation, forKey: .orientation)
        }
        if (scaleType != nil) {
            try? container.encode(scaleType, forKey: .scaleType)
        }
        if (sizeType != nil) {
            try? container.encode(sizeType, forKey: .sizeType)
        }
        if (width != nil) {
            try? container.encode(width, forKey: .width)
        }
        if (height != nil) {
            try? container.encode(height, forKey: .height)
        }
    }

}

