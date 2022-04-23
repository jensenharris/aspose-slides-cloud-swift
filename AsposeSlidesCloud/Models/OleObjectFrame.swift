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


/** Represents OleObjectFrame resource. */
public class OleObjectFrame: ShapeBase {

    /** True if an object is visible as icon. */
    public var isObjectIcon: Bool?
    /** The title for OleObject icon.              */
    public var substitutePictureTitle: String?
    /** OleObject image fill properties. */
    public var substitutePictureFormat: PictureFill?
    /** Returns or sets the name of an object. */
    public var objectName: String?
    /** File data of embedded OLE object.  */
    public var embeddedFileBase64Data: String?
    /** File extension for the current embedded OLE object */
    public var embeddedFileExtension: String?
    /** ProgID of an object. */
    public var objectProgId: String?
    /** Full path to a linked file. */
    public var linkPath: String?
    /** Determines if the linked embedded object is automatically updated when the presentation is opened or printed. Read/write Boolean. */
    public var updateAutomatic: Bool?

    private enum CodingKeys: String, CodingKey {
        case isObjectIcon
        case substitutePictureTitle
        case substitutePictureFormat
        case objectName
        case embeddedFileBase64Data
        case embeddedFileExtension
        case objectProgId
        case linkPath
        case updateAutomatic
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, isObjectIcon: Bool? = nil, substitutePictureTitle: String? = nil, substitutePictureFormat: PictureFill? = nil, objectName: String? = nil, embeddedFileBase64Data: String? = nil, embeddedFileExtension: String? = nil, objectProgId: String? = nil, linkPath: String? = nil, updateAutomatic: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type)
        self.isObjectIcon = isObjectIcon
        self.substitutePictureTitle = substitutePictureTitle
        self.substitutePictureFormat = substitutePictureFormat
        self.objectName = objectName
        self.embeddedFileBase64Data = embeddedFileBase64Data
        self.embeddedFileExtension = embeddedFileExtension
        self.objectProgId = objectProgId
        self.linkPath = linkPath
        self.updateAutomatic = updateAutomatic
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        isObjectIcon = try values.decode(Bool?.self, forKey: .isObjectIcon)
        substitutePictureTitle = try values.decode(String?.self, forKey: .substitutePictureTitle)
        substitutePictureFormat = try values.decode(PictureFill?.self, forKey: .substitutePictureFormat)
        objectName = try values.decode(String?.self, forKey: .objectName)
        embeddedFileBase64Data = try values.decode(String?.self, forKey: .embeddedFileBase64Data)
        embeddedFileExtension = try values.decode(String?.self, forKey: .embeddedFileExtension)
        objectProgId = try values.decode(String?.self, forKey: .objectProgId)
        linkPath = try values.decode(String?.self, forKey: .linkPath)
        updateAutomatic = try values.decode(Bool?.self, forKey: .updateAutomatic)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isObjectIcon, forKey: .isObjectIcon)
        try container.encode(substitutePictureTitle, forKey: .substitutePictureTitle)
        try container.encode(substitutePictureFormat, forKey: .substitutePictureFormat)
        try container.encode(objectName, forKey: .objectName)
        try container.encode(embeddedFileBase64Data, forKey: .embeddedFileBase64Data)
        try container.encode(embeddedFileExtension, forKey: .embeddedFileExtension)
        try container.encode(objectProgId, forKey: .objectProgId)
        try container.encode(linkPath, forKey: .linkPath)
        try container.encode(updateAutomatic, forKey: .updateAutomatic)
    }


}

