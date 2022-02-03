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
    /** Gets or sets the link to shapes. */
    public var shapes: ResourceUri?
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
        case shapes
        case fillFormat
        case effectFormat
        case threeDFormat
        case lineFormat
        case hyperlinkClick
        case hyperlinkMouseOver
        case type
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, shapes: ResourceUri? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil) {
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
        self.shapes = shapes
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.threeDFormat = threeDFormat
        self.lineFormat = lineFormat
        self.hyperlinkClick = hyperlinkClick
        self.hyperlinkMouseOver = hyperlinkMouseOver
        self.type = type
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String?.self, forKey: .name)
        width = try values.decode(Double?.self, forKey: .width)
        height = try values.decode(Double?.self, forKey: .height)
        alternativeText = try values.decode(String?.self, forKey: .alternativeText)
        alternativeTextTitle = try values.decode(String?.self, forKey: .alternativeTextTitle)
        hidden = try values.decode(Bool?.self, forKey: .hidden)
        X = try values.decode(Double?.self, forKey: .X)
        Y = try values.decode(Double?.self, forKey: .Y)
        zOrderPosition = try values.decode(Int?.self, forKey: .zOrderPosition)
        shapes = try values.decode(ResourceUri?.self, forKey: .shapes)
        fillFormat = try values.decode(FillFormat?.self, forKey: .fillFormat)
        effectFormat = try values.decode(EffectFormat?.self, forKey: .effectFormat)
        threeDFormat = try values.decode(ThreeDFormat?.self, forKey: .threeDFormat)
        lineFormat = try values.decode(LineFormat?.self, forKey: .lineFormat)
        hyperlinkClick = try values.decode(Hyperlink?.self, forKey: .hyperlinkClick)
        hyperlinkMouseOver = try values.decode(Hyperlink?.self, forKey: .hyperlinkMouseOver)
        type = try values.decode(ModelType?.self, forKey: .type)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(width, forKey: .width)
        try container.encode(height, forKey: .height)
        try container.encode(alternativeText, forKey: .alternativeText)
        try container.encode(alternativeTextTitle, forKey: .alternativeTextTitle)
        try container.encode(hidden, forKey: .hidden)
        try container.encode(X, forKey: .X)
        try container.encode(Y, forKey: .Y)
        try container.encode(zOrderPosition, forKey: .zOrderPosition)
        try container.encode(shapes, forKey: .shapes)
        try container.encode(fillFormat, forKey: .fillFormat)
        try container.encode(effectFormat, forKey: .effectFormat)
        try container.encode(threeDFormat, forKey: .threeDFormat)
        try container.encode(lineFormat, forKey: .lineFormat)
        try container.encode(hyperlinkClick, forKey: .hyperlinkClick)
        try container.encode(hyperlinkMouseOver, forKey: .hyperlinkMouseOver)
        try container.encode(type, forKey: .type)
    }


}

