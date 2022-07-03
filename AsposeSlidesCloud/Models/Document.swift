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


/** Represents document DTO. */
public class Document: ResourceBase {

    /** Link to Document properties. */
    public var documentProperties: ResourceUri?
    /** Link to Document properties. */
    public var viewProperties: ResourceUri?
    /** Link to slides collection. */
    public var slides: ResourceUri?
    /** Link to images collection. */
    public var images: ResourceUri?
    /** Link to layout slides collection. */
    public var layoutSlides: ResourceUri?
    /** Link to master slides collection. */
    public var masterSlides: ResourceUri?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let documentPropertiesValue = source["documentProperties"]
        if documentPropertiesValue != nil {
            let documentPropertiesDictionaryValue = documentPropertiesValue! as? [String:Any]
            if documentPropertiesDictionaryValue != nil {
                let (documentPropertiesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, documentPropertiesDictionaryValue!)
                if error == nil && documentPropertiesInstance != nil {
                    self.documentProperties = documentPropertiesInstance! as? ResourceUri
                }
            }
        }
        let viewPropertiesValue = source["viewProperties"]
        if viewPropertiesValue != nil {
            let viewPropertiesDictionaryValue = viewPropertiesValue! as? [String:Any]
            if viewPropertiesDictionaryValue != nil {
                let (viewPropertiesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, viewPropertiesDictionaryValue!)
                if error == nil && viewPropertiesInstance != nil {
                    self.viewProperties = viewPropertiesInstance! as? ResourceUri
                }
            }
        }
        let slidesValue = source["slides"]
        if slidesValue != nil {
            let slidesDictionaryValue = slidesValue! as? [String:Any]
            if slidesDictionaryValue != nil {
                let (slidesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, slidesDictionaryValue!)
                if error == nil && slidesInstance != nil {
                    self.slides = slidesInstance! as? ResourceUri
                }
            }
        }
        let imagesValue = source["images"]
        if imagesValue != nil {
            let imagesDictionaryValue = imagesValue! as? [String:Any]
            if imagesDictionaryValue != nil {
                let (imagesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, imagesDictionaryValue!)
                if error == nil && imagesInstance != nil {
                    self.images = imagesInstance! as? ResourceUri
                }
            }
        }
        let layoutSlidesValue = source["layoutSlides"]
        if layoutSlidesValue != nil {
            let layoutSlidesDictionaryValue = layoutSlidesValue! as? [String:Any]
            if layoutSlidesDictionaryValue != nil {
                let (layoutSlidesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, layoutSlidesDictionaryValue!)
                if error == nil && layoutSlidesInstance != nil {
                    self.layoutSlides = layoutSlidesInstance! as? ResourceUri
                }
            }
        }
        let masterSlidesValue = source["masterSlides"]
        if masterSlidesValue != nil {
            let masterSlidesDictionaryValue = masterSlidesValue! as? [String:Any]
            if masterSlidesDictionaryValue != nil {
                let (masterSlidesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, masterSlidesDictionaryValue!)
                if error == nil && masterSlidesInstance != nil {
                    self.masterSlides = masterSlidesInstance! as? ResourceUri
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, documentProperties: ResourceUri? = nil, viewProperties: ResourceUri? = nil, slides: ResourceUri? = nil, images: ResourceUri? = nil, layoutSlides: ResourceUri? = nil, masterSlides: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.documentProperties = documentProperties
        self.viewProperties = viewProperties
        self.slides = slides
        self.images = images
        self.layoutSlides = layoutSlides
        self.masterSlides = masterSlides
    }

    private enum CodingKeys: String, CodingKey {
        case documentProperties
        case viewProperties
        case slides
        case images
        case layoutSlides
        case masterSlides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        documentProperties = try? values.decode(ResourceUri.self, forKey: .documentProperties)
        viewProperties = try? values.decode(ResourceUri.self, forKey: .viewProperties)
        slides = try? values.decode(ResourceUri.self, forKey: .slides)
        images = try? values.decode(ResourceUri.self, forKey: .images)
        layoutSlides = try? values.decode(ResourceUri.self, forKey: .layoutSlides)
        masterSlides = try? values.decode(ResourceUri.self, forKey: .masterSlides)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (documentProperties != nil) {
            try? container.encode(documentProperties, forKey: .documentProperties)
        }
        if (viewProperties != nil) {
            try? container.encode(viewProperties, forKey: .viewProperties)
        }
        if (slides != nil) {
            try? container.encode(slides, forKey: .slides)
        }
        if (images != nil) {
            try? container.encode(images, forKey: .images)
        }
        if (layoutSlides != nil) {
            try? container.encode(layoutSlides, forKey: .layoutSlides)
        }
        if (masterSlides != nil) {
            try? container.encode(masterSlides, forKey: .masterSlides)
        }
    }

}

