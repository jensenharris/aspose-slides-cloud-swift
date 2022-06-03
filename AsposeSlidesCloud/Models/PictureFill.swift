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


/** Picture fill. */
public class PictureFill: FillFormat {

    public enum PictureFillMode: String, Codable { 
        case tile = "Tile"
        case stretch = "Stretch"
    }
    /** Percentage of image height that is cropped from the bottom. */
    public var cropBottom: Double?
    /** Percentage of image height that is cropped from the left. */
    public var cropLeft: Double?
    /** Percentage of image height that is cropped from the right. */
    public var cropRight: Double?
    /** Percentage of image height that is cropped from the top. */
    public var cropTop: Double?
    /** Picture resolution. */
    public var dpi: Int?
    /** Internal image link. */
    public var image: ResourceUri?
    /** Base 64 image data. */
    public var base64Data: String?
    /** SVG image data. */
    public var svgData: String?
    /** Fill mode. */
    public var pictureFillMode: PictureFillMode?
    /** Image transform effects. */
    public var imageTransformList: [ImageTransformEffect]?

    private enum CodingKeys: String, CodingKey {
        case cropBottom
        case cropLeft
        case cropRight
        case cropTop
        case dpi
        case image
        case base64Data
        case svgData
        case pictureFillMode
        case imageTransformList
    }

    public init(type: ModelType? = nil, cropBottom: Double? = nil, cropLeft: Double? = nil, cropRight: Double? = nil, cropTop: Double? = nil, dpi: Int? = nil, image: ResourceUri? = nil, base64Data: String? = nil, svgData: String? = nil, pictureFillMode: PictureFillMode? = nil, imageTransformList: [ImageTransformEffect]? = nil) {
        super.init(type: type)
        self.cropBottom = cropBottom
        self.cropLeft = cropLeft
        self.cropRight = cropRight
        self.cropTop = cropTop
        self.dpi = dpi
        self.image = image
        self.base64Data = base64Data
        self.svgData = svgData
        self.pictureFillMode = pictureFillMode
        self.imageTransformList = imageTransformList
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cropBottom = try values.decode(Double?.self, forKey: .cropBottom)
        cropLeft = try values.decode(Double?.self, forKey: .cropLeft)
        cropRight = try values.decode(Double?.self, forKey: .cropRight)
        cropTop = try values.decode(Double?.self, forKey: .cropTop)
        dpi = try values.decode(Int?.self, forKey: .dpi)
        image = try values.decode(ResourceUri?.self, forKey: .image)
        base64Data = try values.decode(String?.self, forKey: .base64Data)
        svgData = try values.decode(String?.self, forKey: .svgData)
        pictureFillMode = try values.decode(PictureFillMode?.self, forKey: .pictureFillMode)
        imageTransformList = try values.decode([ImageTransformEffect]?.self, forKey: .imageTransformList)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cropBottom, forKey: .cropBottom)
        try container.encode(cropLeft, forKey: .cropLeft)
        try container.encode(cropRight, forKey: .cropRight)
        try container.encode(cropTop, forKey: .cropTop)
        try container.encode(dpi, forKey: .dpi)
        try container.encode(image, forKey: .image)
        try container.encode(base64Data, forKey: .base64Data)
        try container.encode(svgData, forKey: .svgData)
        try container.encode(pictureFillMode, forKey: .pictureFillMode)
        try container.encode(imageTransformList, forKey: .imageTransformList)
    }


}

