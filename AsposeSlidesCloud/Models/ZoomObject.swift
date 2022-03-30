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


/** Zoom object. */
public class ZoomObject: ShapeBase {

    public enum ImageType: String, Codable { 
        case preview = "Preview"
        case cover = "Cover"
    }
    /** Image type of a zoom object.  */
    public var imageType: ImageType?
    /** Navigation behavior in slideshow.  */
    public var returnToParent: Bool?
    /** Specifies whether the Zoom will use the background of the destination slide. */
    public var showBackground: Bool?
    /** Internal image link for zoom object */
    public var image: ResourceUri?
    /** Duration of the transition between Zoom and slide. */
    public var transitionDuration: Double?

    private enum CodingKeys: String, CodingKey {
        case imageType
        case returnToParent
        case showBackground
        case image
        case transitionDuration
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, shapes: ResourceUri? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, imageType: ImageType? = nil, returnToParent: Bool? = nil, showBackground: Bool? = nil, image: ResourceUri? = nil, transitionDuration: Double? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, shapes: shapes, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type)
        self.imageType = imageType
        self.returnToParent = returnToParent
        self.showBackground = showBackground
        self.image = image
        self.transitionDuration = transitionDuration
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        imageType = try values.decode(ImageType?.self, forKey: .imageType)
        returnToParent = try values.decode(Bool?.self, forKey: .returnToParent)
        showBackground = try values.decode(Bool?.self, forKey: .showBackground)
        image = try values.decode(ResourceUri?.self, forKey: .image)
        transitionDuration = try values.decode(Double?.self, forKey: .transitionDuration)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(imageType, forKey: .imageType)
        try container.encode(returnToParent, forKey: .returnToParent)
        try container.encode(showBackground, forKey: .showBackground)
        try container.encode(image, forKey: .image)
        try container.encode(transitionDuration, forKey: .transitionDuration)
    }


}

