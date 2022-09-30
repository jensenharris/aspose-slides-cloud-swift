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

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let cropBottomValue = source["cropBottom"] ?? source["CropBottom"]
        if cropBottomValue != nil {
            self.cropBottom = cropBottomValue! as? Double
        }
        let cropLeftValue = source["cropLeft"] ?? source["CropLeft"]
        if cropLeftValue != nil {
            self.cropLeft = cropLeftValue! as? Double
        }
        let cropRightValue = source["cropRight"] ?? source["CropRight"]
        if cropRightValue != nil {
            self.cropRight = cropRightValue! as? Double
        }
        let cropTopValue = source["cropTop"] ?? source["CropTop"]
        if cropTopValue != nil {
            self.cropTop = cropTopValue! as? Double
        }
        let dpiValue = source["dpi"] ?? source["Dpi"]
        if dpiValue != nil {
            self.dpi = dpiValue! as? Int
        }
        let imageValue = source["image"] ?? source["Image"]
        if imageValue != nil {
            let imageDictionaryValue = imageValue! as? [String:Any]
            if imageDictionaryValue != nil {
                let (imageInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, imageDictionaryValue!)
                if error == nil && imageInstance != nil {
                    self.image = imageInstance! as? ResourceUri
                }
            }
        }
        let base64DataValue = source["base64Data"] ?? source["Base64Data"]
        if base64DataValue != nil {
            self.base64Data = base64DataValue! as? String
        }
        let svgDataValue = source["svgData"] ?? source["SvgData"]
        if svgDataValue != nil {
            self.svgData = svgDataValue! as? String
        }
        let pictureFillModeValue = source["pictureFillMode"] ?? source["PictureFillMode"]
        if pictureFillModeValue != nil {
            let pictureFillModeStringValue = pictureFillModeValue! as? String
            if pictureFillModeStringValue != nil {
                let pictureFillModeEnumValue = PictureFillMode(rawValue: pictureFillModeStringValue!)
                if pictureFillModeEnumValue != nil {
                    self.pictureFillMode = pictureFillModeEnumValue!
                }
            }
        }
        let imageTransformListValue = source["imageTransformList"] ?? source["ImageTransformList"]
        if imageTransformListValue != nil {
            var imageTransformListArray: [ImageTransformEffect] = []
            let imageTransformListDictionaryValue = imageTransformListValue! as? [Any]
            if imageTransformListDictionaryValue != nil {
                imageTransformListDictionaryValue!.forEach { imageTransformListAnyItem in
                    let imageTransformListItem = imageTransformListAnyItem as? [String:Any]
                    var added = false
                    if imageTransformListItem != nil {
                        let (imageTransformListInstance, error) = ClassRegistry.getClassFromDictionary(ImageTransformEffect.self, imageTransformListItem!)
                        if error == nil && imageTransformListInstance != nil {
                            let imageTransformListArrayItem = imageTransformListInstance! as? ImageTransformEffect
                            if imageTransformListArrayItem != nil {
                                imageTransformListArray.append(imageTransformListArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        imageTransformListArray.append(ImageTransformEffect())
                    }
                }
            }
            self.imageTransformList = imageTransformListArray
        }
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
        self.type = ModelType.picture
    }

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

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cropBottom = try? values.decode(Double.self, forKey: .cropBottom)
        cropLeft = try? values.decode(Double.self, forKey: .cropLeft)
        cropRight = try? values.decode(Double.self, forKey: .cropRight)
        cropTop = try? values.decode(Double.self, forKey: .cropTop)
        dpi = try? values.decode(Int.self, forKey: .dpi)
        image = try? values.decode(ResourceUri.self, forKey: .image)
        base64Data = try? values.decode(String.self, forKey: .base64Data)
        svgData = try? values.decode(String.self, forKey: .svgData)
        pictureFillMode = try? values.decode(PictureFillMode.self, forKey: .pictureFillMode)
        imageTransformList = try? values.decode([ImageTransformEffect].self, forKey: .imageTransformList)
        self.type = ModelType.picture
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (cropBottom != nil) {
            try? container.encode(cropBottom, forKey: .cropBottom)
        }
        if (cropLeft != nil) {
            try? container.encode(cropLeft, forKey: .cropLeft)
        }
        if (cropRight != nil) {
            try? container.encode(cropRight, forKey: .cropRight)
        }
        if (cropTop != nil) {
            try? container.encode(cropTop, forKey: .cropTop)
        }
        if (dpi != nil) {
            try? container.encode(dpi, forKey: .dpi)
        }
        if (image != nil) {
            try? container.encode(image, forKey: .image)
        }
        if (base64Data != nil) {
            try? container.encode(base64Data, forKey: .base64Data)
        }
        if (svgData != nil) {
            try? container.encode(svgData, forKey: .svgData)
        }
        if (pictureFillMode != nil) {
            try? container.encode(pictureFillMode, forKey: .pictureFillMode)
        }
        if (imageTransformList != nil) {
            try? container.encode(imageTransformList, forKey: .imageTransformList)
        }
    }

}

