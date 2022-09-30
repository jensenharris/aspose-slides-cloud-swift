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


/** Provides options that control how a presentation is saved in SWF format. */
public class SwfExportOptions: ExportOptions {

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
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** Specifies whether the generated SWF document should be compressed or not. Default is true.  */
    public var compressed: Bool?
    /** Specifies whether the generated SWF document should include the integrated document viewer or not. Default is true.  */
    public var viewerIncluded: Bool?
    /** Specifies whether border around pages should be shown. Default is true.  */
    public var showPageBorder: Bool?
    /** Show/hide fullscreen button. Can be overridden in flashvars. Default is true.  */
    public var showFullScreen: Bool?
    /** Show/hide page stepper. Can be overridden in flashvars. Default is true.  */
    public var showPageStepper: Bool?
    /** Show/hide search section. Can be overridden in flashvars. Default is true.  */
    public var showSearch: Bool?
    /** Show/hide whole top pane. Can be overridden in flashvars. Default is true.  */
    public var showTopPane: Bool?
    /** Show/hide bottom pane. Can be overridden in flashvars. Default is true.  */
    public var showBottomPane: Bool?
    /** Show/hide left pane. Can be overridden in flashvars. Default is true.  */
    public var showLeftPane: Bool?
    /** Start with opened left pane. Can be overridden in flashvars. Default is false.  */
    public var startOpenLeftPane: Bool?
    /** Enable/disable context menu. Default is true.  */
    public var enableContextMenu: Bool?
    /** Image that will be displayed as logo in the top right corner of the viewer. The image data is a base 64 string. Image should be 32x64 pixels PNG image, otherwise logo can be displayed improperly.  */
    public var logoImage: String?
    /** Gets or sets the full hyperlink address for a logo. Has an effect only if a LogoImage is specified.  */
    public var logoLink: String?
    /** Specifies the quality of JPEG images. Default is 95. */
    public var jpegQuality: Int?
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
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
        let compressedValue = source["compressed"] ?? source["Compressed"]
        if compressedValue != nil {
            self.compressed = compressedValue! as? Bool
        }
        let viewerIncludedValue = source["viewerIncluded"] ?? source["ViewerIncluded"]
        if viewerIncludedValue != nil {
            self.viewerIncluded = viewerIncludedValue! as? Bool
        }
        let showPageBorderValue = source["showPageBorder"] ?? source["ShowPageBorder"]
        if showPageBorderValue != nil {
            self.showPageBorder = showPageBorderValue! as? Bool
        }
        let showFullScreenValue = source["showFullScreen"] ?? source["ShowFullScreen"]
        if showFullScreenValue != nil {
            self.showFullScreen = showFullScreenValue! as? Bool
        }
        let showPageStepperValue = source["showPageStepper"] ?? source["ShowPageStepper"]
        if showPageStepperValue != nil {
            self.showPageStepper = showPageStepperValue! as? Bool
        }
        let showSearchValue = source["showSearch"] ?? source["ShowSearch"]
        if showSearchValue != nil {
            self.showSearch = showSearchValue! as? Bool
        }
        let showTopPaneValue = source["showTopPane"] ?? source["ShowTopPane"]
        if showTopPaneValue != nil {
            self.showTopPane = showTopPaneValue! as? Bool
        }
        let showBottomPaneValue = source["showBottomPane"] ?? source["ShowBottomPane"]
        if showBottomPaneValue != nil {
            self.showBottomPane = showBottomPaneValue! as? Bool
        }
        let showLeftPaneValue = source["showLeftPane"] ?? source["ShowLeftPane"]
        if showLeftPaneValue != nil {
            self.showLeftPane = showLeftPaneValue! as? Bool
        }
        let startOpenLeftPaneValue = source["startOpenLeftPane"] ?? source["StartOpenLeftPane"]
        if startOpenLeftPaneValue != nil {
            self.startOpenLeftPane = startOpenLeftPaneValue! as? Bool
        }
        let enableContextMenuValue = source["enableContextMenu"] ?? source["EnableContextMenu"]
        if enableContextMenuValue != nil {
            self.enableContextMenu = enableContextMenuValue! as? Bool
        }
        let logoImageValue = source["logoImage"] ?? source["LogoImage"]
        if logoImageValue != nil {
            self.logoImage = logoImageValue! as? String
        }
        let logoLinkValue = source["logoLink"] ?? source["LogoLink"]
        if logoLinkValue != nil {
            self.logoLink = logoLinkValue! as? String
        }
        let jpegQualityValue = source["jpegQuality"] ?? source["JpegQuality"]
        if jpegQualityValue != nil {
            self.jpegQuality = jpegQualityValue! as? Int
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

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, showHiddenSlides: Bool? = nil, compressed: Bool? = nil, viewerIncluded: Bool? = nil, showPageBorder: Bool? = nil, showFullScreen: Bool? = nil, showPageStepper: Bool? = nil, showSearch: Bool? = nil, showTopPane: Bool? = nil, showBottomPane: Bool? = nil, showLeftPane: Bool? = nil, startOpenLeftPane: Bool? = nil, enableContextMenu: Bool? = nil, logoImage: String? = nil, logoLink: String? = nil, jpegQuality: Int? = nil, notesPosition: NotesPosition? = nil, commentsPosition: CommentsPosition? = nil, commentsAreaWidth: Int? = nil, commentsAreaColor: String? = nil, showCommentsByNoAuthor: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.showHiddenSlides = showHiddenSlides
        self.compressed = compressed
        self.viewerIncluded = viewerIncluded
        self.showPageBorder = showPageBorder
        self.showFullScreen = showFullScreen
        self.showPageStepper = showPageStepper
        self.showSearch = showSearch
        self.showTopPane = showTopPane
        self.showBottomPane = showBottomPane
        self.showLeftPane = showLeftPane
        self.startOpenLeftPane = startOpenLeftPane
        self.enableContextMenu = enableContextMenu
        self.logoImage = logoImage
        self.logoLink = logoLink
        self.jpegQuality = jpegQuality
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
        self.format = "swf"
    }

    private enum CodingKeys: String, CodingKey {
        case showHiddenSlides
        case compressed
        case viewerIncluded
        case showPageBorder
        case showFullScreen
        case showPageStepper
        case showSearch
        case showTopPane
        case showBottomPane
        case showLeftPane
        case startOpenLeftPane
        case enableContextMenu
        case logoImage
        case logoLink
        case jpegQuality
        case notesPosition
        case commentsPosition
        case commentsAreaWidth
        case commentsAreaColor
        case showCommentsByNoAuthor
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        compressed = try? values.decode(Bool.self, forKey: .compressed)
        viewerIncluded = try? values.decode(Bool.self, forKey: .viewerIncluded)
        showPageBorder = try? values.decode(Bool.self, forKey: .showPageBorder)
        showFullScreen = try? values.decode(Bool.self, forKey: .showFullScreen)
        showPageStepper = try? values.decode(Bool.self, forKey: .showPageStepper)
        showSearch = try? values.decode(Bool.self, forKey: .showSearch)
        showTopPane = try? values.decode(Bool.self, forKey: .showTopPane)
        showBottomPane = try? values.decode(Bool.self, forKey: .showBottomPane)
        showLeftPane = try? values.decode(Bool.self, forKey: .showLeftPane)
        startOpenLeftPane = try? values.decode(Bool.self, forKey: .startOpenLeftPane)
        enableContextMenu = try? values.decode(Bool.self, forKey: .enableContextMenu)
        logoImage = try? values.decode(String.self, forKey: .logoImage)
        logoLink = try? values.decode(String.self, forKey: .logoLink)
        jpegQuality = try? values.decode(Int.self, forKey: .jpegQuality)
        notesPosition = try? values.decode(NotesPosition.self, forKey: .notesPosition)
        commentsPosition = try? values.decode(CommentsPosition.self, forKey: .commentsPosition)
        commentsAreaWidth = try? values.decode(Int.self, forKey: .commentsAreaWidth)
        commentsAreaColor = try? values.decode(String.self, forKey: .commentsAreaColor)
        showCommentsByNoAuthor = try? values.decode(Bool.self, forKey: .showCommentsByNoAuthor)
        self.format = "swf"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (compressed != nil) {
            try? container.encode(compressed, forKey: .compressed)
        }
        if (viewerIncluded != nil) {
            try? container.encode(viewerIncluded, forKey: .viewerIncluded)
        }
        if (showPageBorder != nil) {
            try? container.encode(showPageBorder, forKey: .showPageBorder)
        }
        if (showFullScreen != nil) {
            try? container.encode(showFullScreen, forKey: .showFullScreen)
        }
        if (showPageStepper != nil) {
            try? container.encode(showPageStepper, forKey: .showPageStepper)
        }
        if (showSearch != nil) {
            try? container.encode(showSearch, forKey: .showSearch)
        }
        if (showTopPane != nil) {
            try? container.encode(showTopPane, forKey: .showTopPane)
        }
        if (showBottomPane != nil) {
            try? container.encode(showBottomPane, forKey: .showBottomPane)
        }
        if (showLeftPane != nil) {
            try? container.encode(showLeftPane, forKey: .showLeftPane)
        }
        if (startOpenLeftPane != nil) {
            try? container.encode(startOpenLeftPane, forKey: .startOpenLeftPane)
        }
        if (enableContextMenu != nil) {
            try? container.encode(enableContextMenu, forKey: .enableContextMenu)
        }
        if (logoImage != nil) {
            try? container.encode(logoImage, forKey: .logoImage)
        }
        if (logoLink != nil) {
            try? container.encode(logoLink, forKey: .logoLink)
        }
        if (jpegQuality != nil) {
            try? container.encode(jpegQuality, forKey: .jpegQuality)
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

