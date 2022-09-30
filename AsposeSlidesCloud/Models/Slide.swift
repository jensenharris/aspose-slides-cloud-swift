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


/** Presentation slide. */
public class Slide: ResourceBase {

    /** Gets or sets the width. */
    public var width: Double?
    /** Gets or sets the height. */
    public var height: Double?
    /** Specifies if shapes of the master slide should be shown on the slide. True by default. */
    public var showMasterShapes: Bool?
    /** Gets or sets the  link to the layout slide. */
    public var layoutSlide: ResourceUri?
    /** Gets or sets the  link to list of top-level shapes. */
    public var shapes: ResourceUri?
    /** Gets or sets the link to theme. */
    public var theme: ResourceUri?
    /** Gets or sets the  link to placeholders. */
    public var placeholders: ResourceUri?
    /** Gets or sets the link to images. */
    public var images: ResourceUri?
    /** Gets or sets the link to comments. */
    public var comments: ResourceUri?
    /** Get or sets the link to slide&#39;s background */
    public var background: ResourceUri?
    /** Get or sets the link to notes slide. */
    public var notesSlide: ResourceUri?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let widthValue = source["width"] ?? source["Width"]
        if widthValue != nil {
            self.width = widthValue! as? Double
        }
        let heightValue = source["height"] ?? source["Height"]
        if heightValue != nil {
            self.height = heightValue! as? Double
        }
        let showMasterShapesValue = source["showMasterShapes"] ?? source["ShowMasterShapes"]
        if showMasterShapesValue != nil {
            self.showMasterShapes = showMasterShapesValue! as? Bool
        }
        let layoutSlideValue = source["layoutSlide"] ?? source["LayoutSlide"]
        if layoutSlideValue != nil {
            let layoutSlideDictionaryValue = layoutSlideValue! as? [String:Any]
            if layoutSlideDictionaryValue != nil {
                let (layoutSlideInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, layoutSlideDictionaryValue!)
                if error == nil && layoutSlideInstance != nil {
                    self.layoutSlide = layoutSlideInstance! as? ResourceUri
                }
            }
        }
        let shapesValue = source["shapes"] ?? source["Shapes"]
        if shapesValue != nil {
            let shapesDictionaryValue = shapesValue! as? [String:Any]
            if shapesDictionaryValue != nil {
                let (shapesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, shapesDictionaryValue!)
                if error == nil && shapesInstance != nil {
                    self.shapes = shapesInstance! as? ResourceUri
                }
            }
        }
        let themeValue = source["theme"] ?? source["Theme"]
        if themeValue != nil {
            let themeDictionaryValue = themeValue! as? [String:Any]
            if themeDictionaryValue != nil {
                let (themeInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, themeDictionaryValue!)
                if error == nil && themeInstance != nil {
                    self.theme = themeInstance! as? ResourceUri
                }
            }
        }
        let placeholdersValue = source["placeholders"] ?? source["Placeholders"]
        if placeholdersValue != nil {
            let placeholdersDictionaryValue = placeholdersValue! as? [String:Any]
            if placeholdersDictionaryValue != nil {
                let (placeholdersInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, placeholdersDictionaryValue!)
                if error == nil && placeholdersInstance != nil {
                    self.placeholders = placeholdersInstance! as? ResourceUri
                }
            }
        }
        let imagesValue = source["images"] ?? source["Images"]
        if imagesValue != nil {
            let imagesDictionaryValue = imagesValue! as? [String:Any]
            if imagesDictionaryValue != nil {
                let (imagesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, imagesDictionaryValue!)
                if error == nil && imagesInstance != nil {
                    self.images = imagesInstance! as? ResourceUri
                }
            }
        }
        let commentsValue = source["comments"] ?? source["Comments"]
        if commentsValue != nil {
            let commentsDictionaryValue = commentsValue! as? [String:Any]
            if commentsDictionaryValue != nil {
                let (commentsInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, commentsDictionaryValue!)
                if error == nil && commentsInstance != nil {
                    self.comments = commentsInstance! as? ResourceUri
                }
            }
        }
        let backgroundValue = source["background"] ?? source["Background"]
        if backgroundValue != nil {
            let backgroundDictionaryValue = backgroundValue! as? [String:Any]
            if backgroundDictionaryValue != nil {
                let (backgroundInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, backgroundDictionaryValue!)
                if error == nil && backgroundInstance != nil {
                    self.background = backgroundInstance! as? ResourceUri
                }
            }
        }
        let notesSlideValue = source["notesSlide"] ?? source["NotesSlide"]
        if notesSlideValue != nil {
            let notesSlideDictionaryValue = notesSlideValue! as? [String:Any]
            if notesSlideDictionaryValue != nil {
                let (notesSlideInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, notesSlideDictionaryValue!)
                if error == nil && notesSlideInstance != nil {
                    self.notesSlide = notesSlideInstance! as? ResourceUri
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, width: Double? = nil, height: Double? = nil, showMasterShapes: Bool? = nil, layoutSlide: ResourceUri? = nil, shapes: ResourceUri? = nil, theme: ResourceUri? = nil, placeholders: ResourceUri? = nil, images: ResourceUri? = nil, comments: ResourceUri? = nil, background: ResourceUri? = nil, notesSlide: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.width = width
        self.height = height
        self.showMasterShapes = showMasterShapes
        self.layoutSlide = layoutSlide
        self.shapes = shapes
        self.theme = theme
        self.placeholders = placeholders
        self.images = images
        self.comments = comments
        self.background = background
        self.notesSlide = notesSlide
    }

    private enum CodingKeys: String, CodingKey {
        case width
        case height
        case showMasterShapes
        case layoutSlide
        case shapes
        case theme
        case placeholders
        case images
        case comments
        case background
        case notesSlide
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        width = try? values.decode(Double.self, forKey: .width)
        height = try? values.decode(Double.self, forKey: .height)
        showMasterShapes = try? values.decode(Bool.self, forKey: .showMasterShapes)
        layoutSlide = try? values.decode(ResourceUri.self, forKey: .layoutSlide)
        shapes = try? values.decode(ResourceUri.self, forKey: .shapes)
        theme = try? values.decode(ResourceUri.self, forKey: .theme)
        placeholders = try? values.decode(ResourceUri.self, forKey: .placeholders)
        images = try? values.decode(ResourceUri.self, forKey: .images)
        comments = try? values.decode(ResourceUri.self, forKey: .comments)
        background = try? values.decode(ResourceUri.self, forKey: .background)
        notesSlide = try? values.decode(ResourceUri.self, forKey: .notesSlide)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (width != nil) {
            try? container.encode(width, forKey: .width)
        }
        if (height != nil) {
            try? container.encode(height, forKey: .height)
        }
        if (showMasterShapes != nil) {
            try? container.encode(showMasterShapes, forKey: .showMasterShapes)
        }
        if (layoutSlide != nil) {
            try? container.encode(layoutSlide, forKey: .layoutSlide)
        }
        if (shapes != nil) {
            try? container.encode(shapes, forKey: .shapes)
        }
        if (theme != nil) {
            try? container.encode(theme, forKey: .theme)
        }
        if (placeholders != nil) {
            try? container.encode(placeholders, forKey: .placeholders)
        }
        if (images != nil) {
            try? container.encode(images, forKey: .images)
        }
        if (comments != nil) {
            try? container.encode(comments, forKey: .comments)
        }
        if (background != nil) {
            try? container.encode(background, forKey: .background)
        }
        if (notesSlide != nil) {
            try? container.encode(notesSlide, forKey: .notesSlide)
        }
    }

}

