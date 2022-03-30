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


/** Provides options that control how a presentation is saved in SVG format. */
public class SvgExportOptions: ExportOptions {

    public enum PicturesCompression: String, Codable { 
        case dpi330 = "Dpi330"
        case dpi220 = "Dpi220"
        case dpi150 = "Dpi150"
        case dpi96 = "Dpi96"
        case dpi72 = "Dpi72"
        case documentResolution = "DocumentResolution"
    }
    public enum ExternalFontsHandling: String, Codable { 
        case addLinksToFontFiles = "AddLinksToFontFiles"
        case embed = "Embed"
        case vectorize = "Vectorize"
    }
    /** Determines whether the text on a slide will be saved as graphics. */
    public var vectorizeText: Bool?
    /** Returns or sets the lower resolution limit for metafile rasterization. */
    public var metafileRasterizationDpi: Int?
    /** Determines whether the 3D text is disabled in SVG. */
    public var disable3DText: Bool?
    /** Disables splitting FromCornerX and FromCenter gradients. */
    public var disableGradientSplit: Bool?
    /** SVG 1.1 lacks ability to define insets for markers. Aspose.Slides SVG writing engine has workaround for that problem: it crops end of line with arrow, so, line doesn&#39;t overlap markers. This option switches off such behavior. */
    public var disableLineEndCropping: Bool?
    /** Determines JPEG encoding quality. */
    public var jpegQuality: Int?
    /** Represents the pictures compression level */
    public var picturesCompression: PicturesCompression?
    /** A boolean flag indicates if the cropped parts remain as part of the document. If true the cropped  parts will removed, if false they will be serialized in the document (which can possible lead to a  larger file) */
    public var deletePicturesCroppedAreas: Bool?
    /** Determines a way of handling externally loaded fonts. */
    public var externalFontsHandling: ExternalFontsHandling?

    private enum CodingKeys: String, CodingKey {
        case vectorizeText
        case metafileRasterizationDpi
        case disable3DText
        case disableGradientSplit
        case disableLineEndCropping
        case jpegQuality
        case picturesCompression
        case deletePicturesCroppedAreas
        case externalFontsHandling
    }

    public init(defaultRegularFont: String? = nil, height: Int? = nil, width: Int? = nil, fontFallbackRules: [FontFallbackRule]? = nil, format: String? = nil, vectorizeText: Bool? = nil, metafileRasterizationDpi: Int? = nil, disable3DText: Bool? = nil, disableGradientSplit: Bool? = nil, disableLineEndCropping: Bool? = nil, jpegQuality: Int? = nil, picturesCompression: PicturesCompression? = nil, deletePicturesCroppedAreas: Bool? = nil, externalFontsHandling: ExternalFontsHandling? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, height: height, width: width, fontFallbackRules: fontFallbackRules, format: format)
        self.vectorizeText = vectorizeText
        self.metafileRasterizationDpi = metafileRasterizationDpi
        self.disable3DText = disable3DText
        self.disableGradientSplit = disableGradientSplit
        self.disableLineEndCropping = disableLineEndCropping
        self.jpegQuality = jpegQuality
        self.picturesCompression = picturesCompression
        self.deletePicturesCroppedAreas = deletePicturesCroppedAreas
        self.externalFontsHandling = externalFontsHandling
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        vectorizeText = try values.decode(Bool?.self, forKey: .vectorizeText)
        metafileRasterizationDpi = try values.decode(Int?.self, forKey: .metafileRasterizationDpi)
        disable3DText = try values.decode(Bool?.self, forKey: .disable3DText)
        disableGradientSplit = try values.decode(Bool?.self, forKey: .disableGradientSplit)
        disableLineEndCropping = try values.decode(Bool?.self, forKey: .disableLineEndCropping)
        jpegQuality = try values.decode(Int?.self, forKey: .jpegQuality)
        picturesCompression = try values.decode(PicturesCompression?.self, forKey: .picturesCompression)
        deletePicturesCroppedAreas = try values.decode(Bool?.self, forKey: .deletePicturesCroppedAreas)
        externalFontsHandling = try values.decode(ExternalFontsHandling?.self, forKey: .externalFontsHandling)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(vectorizeText, forKey: .vectorizeText)
        try container.encode(metafileRasterizationDpi, forKey: .metafileRasterizationDpi)
        try container.encode(disable3DText, forKey: .disable3DText)
        try container.encode(disableGradientSplit, forKey: .disableGradientSplit)
        try container.encode(disableLineEndCropping, forKey: .disableLineEndCropping)
        try container.encode(jpegQuality, forKey: .jpegQuality)
        try container.encode(picturesCompression, forKey: .picturesCompression)
        try container.encode(deletePicturesCroppedAreas, forKey: .deletePicturesCroppedAreas)
        try container.encode(externalFontsHandling, forKey: .externalFontsHandling)
    }


}

