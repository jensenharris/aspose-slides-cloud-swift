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


/** Provides options that control how a presentation is saved in Pdf format. */
public class PdfExportOptions: ExportOptions {

    public enum TextCompression: String, Codable { 
        case _none = "None"
        case flate = "Flate"
    }
    public enum Compliance: String, Codable { 
        case pdf15 = "Pdf15"
        case pdfA1b = "PdfA1b"
        case pdfA1a = "PdfA1a"
        case pdfUa = "PdfUa"
    }
    public enum NotesPosition: String, Codable { 
        case _none = "None"
        case bottomFull = "BottomFull"
        case bottomTruncated = "BottomTruncated"
    }
    public enum CommentsPosition: String, Codable { 
        case _none = "None"
        case bottom = "Bottom"
        case _right = "Right"
    }
    /** Specifies compression type to be used for all textual content in the document. */
    public var textCompression: TextCompression?
    /** Determines if all characters of font should be embedded or only used subset. */
    public var embedFullFonts: Bool?
    /** Desired conformance level for generated PDF document. */
    public var compliance: Compliance?
    /** Returns or sets a value determining resolution of images inside PDF document.  Property affects on file size, time of export and image quality. The default value is 96. */
    public var sufficientResolution: Double?
    /** Returns or sets a value determining the quality of the JPEG images inside PDF document. */
    public var jpegQuality: Int?
    /** True to draw black frame around each slide. */
    public var drawSlidesFrame: Bool?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** True to convert all metafiles used in a presentation to the PNG images. */
    public var saveMetafilesAsPng: Bool?
    /** Setting user password to protect the PDF document.  */
    public var password: String?
    /** Determines if Aspose.Slides will embed common fonts for ASCII (33..127 code range) text. Fonts for character codes greater than 127 are always embedded. Common fonts list includes PDF&#39;s base 14 fonts and additional user specified fonts. */
    public var embedTrueTypeFontsForASCII: Bool?
    /** Returns or sets an array of user-defined names of font families which Aspose.Slides should consider common. */
    public var additionalCommonFontFamilies: [String]?
    /** Gets or sets the position of the notes on the page. */
    public var notesPosition: NotesPosition?
    /** Gets or sets the position of the comments on the page. */
    public var commentsPosition: CommentsPosition?
    /** Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right). */
    public var commentsAreaWidth: Int?
    /** Gets or sets the color of comments area (Applies only if comments are displayed on the right). */
    public var commentsAreaColor: String?
    /** True if comments that have no author are displayed. (Applies only if comments are displayed). */
    public var showCommentsByNoAuthor: Bool?
    /** Image transparent color. */
    public var imageTransparentColor: String?
    /** True to apply specified ImageTransparentColor  to an image. */
    public var applyImageTransparent: Bool?
    /** Access permissions that should be granted when the document is opened with user access.  Default is AccessPermissions.None.              */
    public var accessPermissions: AccessPermissions?

    private enum CodingKeys: String, CodingKey {
        case textCompression
        case embedFullFonts
        case compliance
        case sufficientResolution
        case jpegQuality
        case drawSlidesFrame
        case showHiddenSlides
        case saveMetafilesAsPng
        case password
        case embedTrueTypeFontsForASCII
        case additionalCommonFontFamilies
        case notesPosition
        case commentsPosition
        case commentsAreaWidth
        case commentsAreaColor
        case showCommentsByNoAuthor
        case imageTransparentColor
        case applyImageTransparent
        case accessPermissions
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, format: String? = nil, textCompression: TextCompression? = nil, embedFullFonts: Bool? = nil, compliance: Compliance? = nil, sufficientResolution: Double? = nil, jpegQuality: Int? = nil, drawSlidesFrame: Bool? = nil, showHiddenSlides: Bool? = nil, saveMetafilesAsPng: Bool? = nil, password: String? = nil, embedTrueTypeFontsForASCII: Bool? = nil, additionalCommonFontFamilies: [String]? = nil, notesPosition: NotesPosition? = nil, commentsPosition: CommentsPosition? = nil, commentsAreaWidth: Int? = nil, commentsAreaColor: String? = nil, showCommentsByNoAuthor: Bool? = nil, imageTransparentColor: String? = nil, applyImageTransparent: Bool? = nil, accessPermissions: AccessPermissions? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, format: format)
        self.textCompression = textCompression
        self.embedFullFonts = embedFullFonts
        self.compliance = compliance
        self.sufficientResolution = sufficientResolution
        self.jpegQuality = jpegQuality
        self.drawSlidesFrame = drawSlidesFrame
        self.showHiddenSlides = showHiddenSlides
        self.saveMetafilesAsPng = saveMetafilesAsPng
        self.password = password
        self.embedTrueTypeFontsForASCII = embedTrueTypeFontsForASCII
        self.additionalCommonFontFamilies = additionalCommonFontFamilies
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
        self.imageTransparentColor = imageTransparentColor
        self.applyImageTransparent = applyImageTransparent
        self.accessPermissions = accessPermissions
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        textCompression = try values.decode(TextCompression?.self, forKey: .textCompression)
        embedFullFonts = try values.decode(Bool?.self, forKey: .embedFullFonts)
        compliance = try values.decode(Compliance?.self, forKey: .compliance)
        sufficientResolution = try values.decode(Double?.self, forKey: .sufficientResolution)
        jpegQuality = try values.decode(Int?.self, forKey: .jpegQuality)
        drawSlidesFrame = try values.decode(Bool?.self, forKey: .drawSlidesFrame)
        showHiddenSlides = try values.decode(Bool?.self, forKey: .showHiddenSlides)
        saveMetafilesAsPng = try values.decode(Bool?.self, forKey: .saveMetafilesAsPng)
        password = try values.decode(String?.self, forKey: .password)
        embedTrueTypeFontsForASCII = try values.decode(Bool?.self, forKey: .embedTrueTypeFontsForASCII)
        additionalCommonFontFamilies = try values.decode([String]?.self, forKey: .additionalCommonFontFamilies)
        notesPosition = try values.decode(NotesPosition?.self, forKey: .notesPosition)
        commentsPosition = try values.decode(CommentsPosition?.self, forKey: .commentsPosition)
        commentsAreaWidth = try values.decode(Int?.self, forKey: .commentsAreaWidth)
        commentsAreaColor = try values.decode(String?.self, forKey: .commentsAreaColor)
        showCommentsByNoAuthor = try values.decode(Bool?.self, forKey: .showCommentsByNoAuthor)
        imageTransparentColor = try values.decode(String?.self, forKey: .imageTransparentColor)
        applyImageTransparent = try values.decode(Bool?.self, forKey: .applyImageTransparent)
        accessPermissions = try values.decode(AccessPermissions?.self, forKey: .accessPermissions)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(textCompression, forKey: .textCompression)
        try container.encode(embedFullFonts, forKey: .embedFullFonts)
        try container.encode(compliance, forKey: .compliance)
        try container.encode(sufficientResolution, forKey: .sufficientResolution)
        try container.encode(jpegQuality, forKey: .jpegQuality)
        try container.encode(drawSlidesFrame, forKey: .drawSlidesFrame)
        try container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        try container.encode(saveMetafilesAsPng, forKey: .saveMetafilesAsPng)
        try container.encode(password, forKey: .password)
        try container.encode(embedTrueTypeFontsForASCII, forKey: .embedTrueTypeFontsForASCII)
        try container.encode(additionalCommonFontFamilies, forKey: .additionalCommonFontFamilies)
        try container.encode(notesPosition, forKey: .notesPosition)
        try container.encode(commentsPosition, forKey: .commentsPosition)
        try container.encode(commentsAreaWidth, forKey: .commentsAreaWidth)
        try container.encode(commentsAreaColor, forKey: .commentsAreaColor)
        try container.encode(showCommentsByNoAuthor, forKey: .showCommentsByNoAuthor)
        try container.encode(imageTransparentColor, forKey: .imageTransparentColor)
        try container.encode(applyImageTransparent, forKey: .applyImageTransparent)
        try container.encode(accessPermissions, forKey: .accessPermissions)
    }


}

