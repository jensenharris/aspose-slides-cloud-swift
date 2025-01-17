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


/** Provides options that control how a presentation is saved in Html format. */
public class HtmlExportOptions: ExportOptions {

    public enum PicturesCompression: String, Codable { 
        case dpi330 = "Dpi330"
        case dpi220 = "Dpi220"
        case dpi150 = "Dpi150"
        case dpi96 = "Dpi96"
        case dpi72 = "Dpi72"
        case documentResolution = "DocumentResolution"
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
    /** Get or sets flag for save presentation as zip file */
    public var saveAsZip: Bool?
    /** Get or set name of subdirectory in zip-file for store external files */
    public var subDirectoryName: String?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** True to make layout responsive by excluding width and height attributes from svg container. */
    public var svgResponsiveLayout: Bool?
    /** Returns or sets a value determining the quality of the JPEG images inside PDF document. */
    public var jpegQuality: Int?
    /** Represents the pictures compression level */
    public var picturesCompression: PicturesCompression?
    /** A boolean flag indicates if the cropped parts remain as part of the document. If true the cropped  parts will removed, if false they will be serialized in the document (which can possible lead to a  larger file) */
    public var deletePicturesCroppedAreas: Bool?
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
        let saveAsZipValue = source["saveAsZip"] ?? source["SaveAsZip"]
        if saveAsZipValue != nil {
            self.saveAsZip = saveAsZipValue! as? Bool
        }
        let subDirectoryNameValue = source["subDirectoryName"] ?? source["SubDirectoryName"]
        if subDirectoryNameValue != nil {
            self.subDirectoryName = subDirectoryNameValue! as? String
        }
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
        let svgResponsiveLayoutValue = source["svgResponsiveLayout"] ?? source["SvgResponsiveLayout"]
        if svgResponsiveLayoutValue != nil {
            self.svgResponsiveLayout = svgResponsiveLayoutValue! as? Bool
        }
        let jpegQualityValue = source["jpegQuality"] ?? source["JpegQuality"]
        if jpegQualityValue != nil {
            self.jpegQuality = jpegQualityValue! as? Int
        }
        let picturesCompressionValue = source["picturesCompression"] ?? source["PicturesCompression"]
        if picturesCompressionValue != nil {
            let picturesCompressionStringValue = picturesCompressionValue! as? String
            if picturesCompressionStringValue != nil {
                let picturesCompressionEnumValue = PicturesCompression(rawValue: picturesCompressionStringValue!)
                if picturesCompressionEnumValue != nil {
                    self.picturesCompression = picturesCompressionEnumValue!
                }
            }
        }
        let deletePicturesCroppedAreasValue = source["deletePicturesCroppedAreas"] ?? source["DeletePicturesCroppedAreas"]
        if deletePicturesCroppedAreasValue != nil {
            self.deletePicturesCroppedAreas = deletePicturesCroppedAreasValue! as? Bool
        }
        let notesPositionValue = source["notesPosition"] ?? source["NotesPosition"]
        if notesPositionValue != nil {
            let notesPositionStringValue = notesPositionValue! as? String
            if notesPositionStringValue != nil {
                let notesPositionEnumValue = NotesPosition(rawValue: notesPositionStringValue!)
                if notesPositionEnumValue != nil {
                    self.notesPosition = notesPositionEnumValue!
                }
            }
        }
        let commentsPositionValue = source["commentsPosition"] ?? source["CommentsPosition"]
        if commentsPositionValue != nil {
            let commentsPositionStringValue = commentsPositionValue! as? String
            if commentsPositionStringValue != nil {
                let commentsPositionEnumValue = CommentsPosition(rawValue: commentsPositionStringValue!)
                if commentsPositionEnumValue != nil {
                    self.commentsPosition = commentsPositionEnumValue!
                }
            }
        }
        let commentsAreaWidthValue = source["commentsAreaWidth"] ?? source["CommentsAreaWidth"]
        if commentsAreaWidthValue != nil {
            self.commentsAreaWidth = commentsAreaWidthValue! as? Int
        }
        let commentsAreaColorValue = source["commentsAreaColor"] ?? source["CommentsAreaColor"]
        if commentsAreaColorValue != nil {
            self.commentsAreaColor = commentsAreaColorValue! as? String
        }
        let showCommentsByNoAuthorValue = source["showCommentsByNoAuthor"] ?? source["ShowCommentsByNoAuthor"]
        if showCommentsByNoAuthorValue != nil {
            self.showCommentsByNoAuthor = showCommentsByNoAuthorValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, saveAsZip: Bool? = nil, subDirectoryName: String? = nil, showHiddenSlides: Bool? = nil, svgResponsiveLayout: Bool? = nil, jpegQuality: Int? = nil, picturesCompression: PicturesCompression? = nil, deletePicturesCroppedAreas: Bool? = nil, notesPosition: NotesPosition? = nil, commentsPosition: CommentsPosition? = nil, commentsAreaWidth: Int? = nil, commentsAreaColor: String? = nil, showCommentsByNoAuthor: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.saveAsZip = saveAsZip
        self.subDirectoryName = subDirectoryName
        self.showHiddenSlides = showHiddenSlides
        self.svgResponsiveLayout = svgResponsiveLayout
        self.jpegQuality = jpegQuality
        self.picturesCompression = picturesCompression
        self.deletePicturesCroppedAreas = deletePicturesCroppedAreas
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
        self.format = "html"
    }

    private enum CodingKeys: String, CodingKey {
        case saveAsZip
        case subDirectoryName
        case showHiddenSlides
        case svgResponsiveLayout
        case jpegQuality
        case picturesCompression
        case deletePicturesCroppedAreas
        case notesPosition
        case commentsPosition
        case commentsAreaWidth
        case commentsAreaColor
        case showCommentsByNoAuthor
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        saveAsZip = try? values.decode(Bool.self, forKey: .saveAsZip)
        subDirectoryName = try? values.decode(String.self, forKey: .subDirectoryName)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        svgResponsiveLayout = try? values.decode(Bool.self, forKey: .svgResponsiveLayout)
        jpegQuality = try? values.decode(Int.self, forKey: .jpegQuality)
        picturesCompression = try? values.decode(PicturesCompression.self, forKey: .picturesCompression)
        deletePicturesCroppedAreas = try? values.decode(Bool.self, forKey: .deletePicturesCroppedAreas)
        notesPosition = try? values.decode(NotesPosition.self, forKey: .notesPosition)
        commentsPosition = try? values.decode(CommentsPosition.self, forKey: .commentsPosition)
        commentsAreaWidth = try? values.decode(Int.self, forKey: .commentsAreaWidth)
        commentsAreaColor = try? values.decode(String.self, forKey: .commentsAreaColor)
        showCommentsByNoAuthor = try? values.decode(Bool.self, forKey: .showCommentsByNoAuthor)
        self.format = "html"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (saveAsZip != nil) {
            try? container.encode(saveAsZip, forKey: .saveAsZip)
        }
        if (subDirectoryName != nil) {
            try? container.encode(subDirectoryName, forKey: .subDirectoryName)
        }
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (svgResponsiveLayout != nil) {
            try? container.encode(svgResponsiveLayout, forKey: .svgResponsiveLayout)
        }
        if (jpegQuality != nil) {
            try? container.encode(jpegQuality, forKey: .jpegQuality)
        }
        if (picturesCompression != nil) {
            try? container.encode(picturesCompression, forKey: .picturesCompression)
        }
        if (deletePicturesCroppedAreas != nil) {
            try? container.encode(deletePicturesCroppedAreas, forKey: .deletePicturesCroppedAreas)
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

