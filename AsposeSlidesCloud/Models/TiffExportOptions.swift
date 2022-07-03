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


/** Provides options that control how a presentation is saved in TIFF format. */
public class TiffExportOptions: ImageExportOptionsBase {

    public enum Compression: String, Codable { 
        case _default = "Default"
        case _none = "None"
        case ccitt3 = "CCITT3"
        case ccitt4 = "CCITT4"
        case lzw = "LZW"
        case rle = "RLE"
    }
    public enum PixelFormat: String, Codable { 
        case format1bppIndexed = "Format1bppIndexed"
        case format4bppIndexed = "Format4bppIndexed"
        case format8bppIndexed = "Format8bppIndexed"
        case format24bppRgb = "Format24bppRgb"
        case format32bppArgb = "Format32bppArgb"
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
    /** Compression type. */
    public var compression: Compression?
    /** Horizontal resolution, in dots per inch. */
    public var dpiX: Int?
    /** Vertical resolution, in dots per inch. */
    public var dpiY: Int?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** Specifies the pixel format for the generated images. Read/write ImagePixelFormat. */
    public var pixelFormat: PixelFormat?
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

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let compressionValue = source["compression"]
        if compressionValue != nil {
            let compressionStringValue = compressionValue! as? String
            if compressionStringValue != nil {
                let compressionEnumValue = Compression(rawValue: compressionStringValue!)
                if compressionEnumValue != nil {
                    self.compression = compressionEnumValue!
                }
            }
        }
        let dpiXValue = source["dpiX"]
        if dpiXValue != nil {
            self.dpiX = dpiXValue! as? Int
        }
        let dpiYValue = source["dpiY"]
        if dpiYValue != nil {
            self.dpiY = dpiYValue! as? Int
        }
        let showHiddenSlidesValue = source["showHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
        let pixelFormatValue = source["pixelFormat"]
        if pixelFormatValue != nil {
            let pixelFormatStringValue = pixelFormatValue! as? String
            if pixelFormatStringValue != nil {
                let pixelFormatEnumValue = PixelFormat(rawValue: pixelFormatStringValue!)
                if pixelFormatEnumValue != nil {
                    self.pixelFormat = pixelFormatEnumValue!
                }
            }
        }
        let notesPositionValue = source["notesPosition"]
        if notesPositionValue != nil {
            let notesPositionStringValue = notesPositionValue! as? String
            if notesPositionStringValue != nil {
                let notesPositionEnumValue = NotesPosition(rawValue: notesPositionStringValue!)
                if notesPositionEnumValue != nil {
                    self.notesPosition = notesPositionEnumValue!
                }
            }
        }
        let commentsPositionValue = source["commentsPosition"]
        if commentsPositionValue != nil {
            let commentsPositionStringValue = commentsPositionValue! as? String
            if commentsPositionStringValue != nil {
                let commentsPositionEnumValue = CommentsPosition(rawValue: commentsPositionStringValue!)
                if commentsPositionEnumValue != nil {
                    self.commentsPosition = commentsPositionEnumValue!
                }
            }
        }
        let commentsAreaWidthValue = source["commentsAreaWidth"]
        if commentsAreaWidthValue != nil {
            self.commentsAreaWidth = commentsAreaWidthValue! as? Int
        }
        let commentsAreaColorValue = source["commentsAreaColor"]
        if commentsAreaColorValue != nil {
            self.commentsAreaColor = commentsAreaColorValue! as? String
        }
        let showCommentsByNoAuthorValue = source["showCommentsByNoAuthor"]
        if showCommentsByNoAuthorValue != nil {
            self.showCommentsByNoAuthor = showCommentsByNoAuthorValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, format: String? = nil, height: Int? = nil, width: Int? = nil, compression: Compression? = nil, dpiX: Int? = nil, dpiY: Int? = nil, showHiddenSlides: Bool? = nil, pixelFormat: PixelFormat? = nil, notesPosition: NotesPosition? = nil, commentsPosition: CommentsPosition? = nil, commentsAreaWidth: Int? = nil, commentsAreaColor: String? = nil, showCommentsByNoAuthor: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, format: format, height: height, width: width)
        self.compression = compression
        self.dpiX = dpiX
        self.dpiY = dpiY
        self.showHiddenSlides = showHiddenSlides
        self.pixelFormat = pixelFormat
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
        self.format = "tiff"
    }

    private enum CodingKeys: String, CodingKey {
        case compression
        case dpiX
        case dpiY
        case showHiddenSlides
        case pixelFormat
        case notesPosition
        case commentsPosition
        case commentsAreaWidth
        case commentsAreaColor
        case showCommentsByNoAuthor
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        compression = try? values.decode(Compression.self, forKey: .compression)
        dpiX = try? values.decode(Int.self, forKey: .dpiX)
        dpiY = try? values.decode(Int.self, forKey: .dpiY)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        pixelFormat = try? values.decode(PixelFormat.self, forKey: .pixelFormat)
        notesPosition = try? values.decode(NotesPosition.self, forKey: .notesPosition)
        commentsPosition = try? values.decode(CommentsPosition.self, forKey: .commentsPosition)
        commentsAreaWidth = try? values.decode(Int.self, forKey: .commentsAreaWidth)
        commentsAreaColor = try? values.decode(String.self, forKey: .commentsAreaColor)
        showCommentsByNoAuthor = try? values.decode(Bool.self, forKey: .showCommentsByNoAuthor)
        self.format = "tiff"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (compression != nil) {
            try? container.encode(compression, forKey: .compression)
        }
        if (dpiX != nil) {
            try? container.encode(dpiX, forKey: .dpiX)
        }
        if (dpiY != nil) {
            try? container.encode(dpiY, forKey: .dpiY)
        }
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (pixelFormat != nil) {
            try? container.encode(pixelFormat, forKey: .pixelFormat)
        }
        if (notesPosition != nil) {
            try? container.encode(notesPosition, forKey: .notesPosition)
        }
        if (commentsPosition != nil) {
            try? container.encode(commentsPosition, forKey: .commentsPosition)
        }
        if (commentsAreaWidth != nil) {
            try? container.encode(commentsAreaWidth, forKey: .commentsAreaWidth)
        }
        if (commentsAreaColor != nil) {
            try? container.encode(commentsAreaColor, forKey: .commentsAreaColor)
        }
        if (showCommentsByNoAuthor != nil) {
            try? container.encode(showCommentsByNoAuthor, forKey: .showCommentsByNoAuthor)
        }
    }

}

