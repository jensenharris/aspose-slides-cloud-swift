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


/** Represents PictureFrame resource. */
public class PictureFrame: GeometryShape {

    /** Fill format. */
    public var pictureFillFormat: PictureFill?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let pictureFillFormatValue = source["pictureFillFormat"] ?? source["PictureFillFormat"]
        if pictureFillFormatValue != nil {
            let pictureFillFormatDictionaryValue = pictureFillFormatValue! as? [String:Any]
            if pictureFillFormatDictionaryValue != nil {
                let (pictureFillFormatInstance, error) = ClassRegistry.getClassFromDictionary(PictureFill.self, pictureFillFormatDictionaryValue!)
                if error == nil && pictureFillFormatInstance != nil {
                    self.pictureFillFormat = pictureFillFormatInstance! as? PictureFill
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, pictureFillFormat: PictureFill? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, shapeType: shapeType)
        self.pictureFillFormat = pictureFillFormat
        self.type = ModelType.pictureFrame
    }

    private enum CodingKeys: String, CodingKey {
        case pictureFillFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        pictureFillFormat = try? values.decode(PictureFill.self, forKey: .pictureFillFormat)
        self.type = ModelType.pictureFrame
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (pictureFillFormat != nil) {
            try? container.encode(pictureFillFormat, forKey: .pictureFillFormat)
        }
    }

}

