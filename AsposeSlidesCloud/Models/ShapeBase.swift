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


/** Slide shape. */
public class ShapeBase: ResourceBase {

    public enum ModelType: String, Codable { 
        case shape = "Shape"
        case chart = "Chart"
        case table = "Table"
        case pictureFrame = "PictureFrame"
        case videoFrame = "VideoFrame"
        case audioFrame = "AudioFrame"
        case smartArt = "SmartArt"
        case oleObjectFrame = "OleObjectFrame"
        case groupShape = "GroupShape"
        case graphicalObject = "GraphicalObject"
        case connector = "Connector"
        case smartArtShape = "SmartArtShape"
        case zoomFrame = "ZoomFrame"
        case sectionZoomFrame = "SectionZoomFrame"
        case summaryZoomFrame = "SummaryZoomFrame"
        case summaryZoomSection = "SummaryZoomSection"
    }
    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the width. */
    public var width: Double?
    /** Gets or sets the height. */
    public var height: Double?
    /** Gets or sets the alternative text. */
    public var alternativeText: String?
    /** The title of alternative text associated with the shape. */
    public var alternativeTextTitle: String?
    /** Gets or sets a value indicating whether this ShapeBase is hidden. */
    public var hidden: Bool?
    /** Gets or sets the X */
    public var X: Double?
    /** Gets or sets the Y. */
    public var Y: Double?
    /** Gets z-order position of shape */
    public var zOrderPosition: Int?
    /** Gets or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Gets or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Gets or sets the 3D format */
    public var threeDFormat: ThreeDFormat?
    /** Gets or sets the line format. */
    public var lineFormat: LineFormat?
    /** Hyperlink defined for mouse click. */
    public var hyperlinkClick: Hyperlink?
    /** Hyperlink defined for mouse over. */
    public var hyperlinkMouseOver: Hyperlink?
    public var type: ModelType?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let nameValue = source["name"] ?? source["Name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
        let widthValue = source["width"] ?? source["Width"]
        if widthValue != nil {
            self.width = widthValue! as? Double
        }
        let heightValue = source["height"] ?? source["Height"]
        if heightValue != nil {
            self.height = heightValue! as? Double
        }
        let alternativeTextValue = source["alternativeText"] ?? source["AlternativeText"]
        if alternativeTextValue != nil {
            self.alternativeText = alternativeTextValue! as? String
        }
        let alternativeTextTitleValue = source["alternativeTextTitle"] ?? source["AlternativeTextTitle"]
        if alternativeTextTitleValue != nil {
            self.alternativeTextTitle = alternativeTextTitleValue! as? String
        }
        let hiddenValue = source["hidden"] ?? source["Hidden"]
        if hiddenValue != nil {
            self.hidden = hiddenValue! as? Bool
        }
        let XValue = source["X"] ?? source["X"]
        if XValue != nil {
            self.X = XValue! as? Double
        }
        let YValue = source["Y"] ?? source["Y"]
        if YValue != nil {
            self.Y = YValue! as? Double
        }
        let zOrderPositionValue = source["zOrderPosition"] ?? source["ZOrderPosition"]
        if zOrderPositionValue != nil {
            self.zOrderPosition = zOrderPositionValue! as? Int
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
        let hyperlinkClickValue = source["hyperlinkClick"] ?? source["HyperlinkClick"]
        if hyperlinkClickValue != nil {
            let hyperlinkClickDictionaryValue = hyperlinkClickValue! as? [String:Any]
            if hyperlinkClickDictionaryValue != nil {
                let (hyperlinkClickInstance, error) = ClassRegistry.getClassFromDictionary(Hyperlink.self, hyperlinkClickDictionaryValue!)
                if error == nil && hyperlinkClickInstance != nil {
                    self.hyperlinkClick = hyperlinkClickInstance! as? Hyperlink
                }
            }
        }
        let hyperlinkMouseOverValue = source["hyperlinkMouseOver"] ?? source["HyperlinkMouseOver"]
        if hyperlinkMouseOverValue != nil {
            let hyperlinkMouseOverDictionaryValue = hyperlinkMouseOverValue! as? [String:Any]
            if hyperlinkMouseOverDictionaryValue != nil {
                let (hyperlinkMouseOverInstance, error) = ClassRegistry.getClassFromDictionary(Hyperlink.self, hyperlinkMouseOverDictionaryValue!)
                if error == nil && hyperlinkMouseOverInstance != nil {
                    self.hyperlinkMouseOver = hyperlinkMouseOverInstance! as? Hyperlink
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

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.name = name
        self.width = width
        self.height = height
        self.alternativeText = alternativeText
        self.alternativeTextTitle = alternativeTextTitle
        self.hidden = hidden
        self.X = X
        self.Y = Y
        self.zOrderPosition = zOrderPosition
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.threeDFormat = threeDFormat
        self.lineFormat = lineFormat
        self.hyperlinkClick = hyperlinkClick
        self.hyperlinkMouseOver = hyperlinkMouseOver
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case width
        case height
        case alternativeText
        case alternativeTextTitle
        case hidden
        case X
        case Y
        case zOrderPosition
        case fillFormat
        case effectFormat
        case threeDFormat
        case lineFormat
        case hyperlinkClick
        case hyperlinkMouseOver
        case type
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try? values.decode(String.self, forKey: .name)
        width = try? values.decode(Double.self, forKey: .width)
        height = try? values.decode(Double.self, forKey: .height)
        alternativeText = try? values.decode(String.self, forKey: .alternativeText)
        alternativeTextTitle = try? values.decode(String.self, forKey: .alternativeTextTitle)
        hidden = try? values.decode(Bool.self, forKey: .hidden)
        X = try? values.decode(Double.self, forKey: .X)
        Y = try? values.decode(Double.self, forKey: .Y)
        zOrderPosition = try? values.decode(Int.self, forKey: .zOrderPosition)
        fillFormat = try? values.decode(FillFormat.self, forKey: .fillFormat)
        effectFormat = try? values.decode(EffectFormat.self, forKey: .effectFormat)
        threeDFormat = try? values.decode(ThreeDFormat.self, forKey: .threeDFormat)
        lineFormat = try? values.decode(LineFormat.self, forKey: .lineFormat)
        hyperlinkClick = try? values.decode(Hyperlink.self, forKey: .hyperlinkClick)
        hyperlinkMouseOver = try? values.decode(Hyperlink.self, forKey: .hyperlinkMouseOver)
        type = try? values.decode(ModelType.self, forKey: .type)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (name != nil) {
            try? container.encode(name, forKey: .name)
        }
        if (width != nil) {
            try? container.encode(width, forKey: .width)
        }
        if (height != nil) {
            try? container.encode(height, forKey: .height)
        }
        if (alternativeText != nil) {
            try? container.encode(alternativeText, forKey: .alternativeText)
        }
        if (alternativeTextTitle != nil) {
            try? container.encode(alternativeTextTitle, forKey: .alternativeTextTitle)
        }
        if (hidden != nil) {
            try? container.encode(hidden, forKey: .hidden)
        }
        if (X != nil) {
            try? container.encode(X, forKey: .X)
        }
        if (Y != nil) {
            try? container.encode(Y, forKey: .Y)
        }
        if (zOrderPosition != nil) {
            try? container.encode(zOrderPosition, forKey: .zOrderPosition)
        }
        if (fillFormat != nil) {
            try? container.encode(fillFormat, forKey: .fillFormat)
        }
        if (effectFormat != nil) {
            try? container.encode(effectFormat, forKey: .effectFormat)
        }
        if (threeDFormat != nil) {
            try? container.encode(threeDFormat, forKey: .threeDFormat)
        }
        if (lineFormat != nil) {
            try? container.encode(lineFormat, forKey: .lineFormat)
        }
        if (hyperlinkClick != nil) {
            try? container.encode(hyperlinkClick, forKey: .hyperlinkClick)
        }
        if (hyperlinkMouseOver != nil) {
            try? container.encode(hyperlinkMouseOver, forKey: .hyperlinkMouseOver)
        }
        if (type != nil) {
            try? container.encode(type, forKey: .type)
        }
    }

}

