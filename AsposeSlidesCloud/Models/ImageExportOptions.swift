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


/** Provides options that control how a presentation is saved in an image format. */
public class ImageExportOptions: ImageExportOptionsBase {

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
    /** Gets or sets the position of the notes on the page. */
    public var notesPosition: NotesPosition?
    /** Gets or sets the position of the comments on the page. */
    public var commentsPosition: CommentsPosition?
    /** Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right). */
    public var commentsAreaWidth: Int?
    /** Gets or sets the color of comments area (Applies only if comments are displayed on the right). */
    public var commentsAreaColor: String?
    /** Show hidden slides. If true, hidden are exported. */
    public var showHiddenSlides: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
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
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, height: Int? = nil, width: Int? = nil, notesPosition: NotesPosition? = nil, commentsPosition: CommentsPosition? = nil, commentsAreaWidth: Int? = nil, commentsAreaColor: String? = nil, showHiddenSlides: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format, height: height, width: width)
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showHiddenSlides = showHiddenSlides
        self.format = "image"
    }

    private enum CodingKeys: String, CodingKey {
        case notesPosition
        case commentsPosition
        case commentsAreaWidth
        case commentsAreaColor
        case showHiddenSlides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        notesPosition = try? values.decode(NotesPosition.self, forKey: .notesPosition)
        commentsPosition = try? values.decode(CommentsPosition.self, forKey: .commentsPosition)
        commentsAreaWidth = try? values.decode(Int.self, forKey: .commentsAreaWidth)
        commentsAreaColor = try? values.decode(String.self, forKey: .commentsAreaColor)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        self.format = "image"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
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
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
    }

}

