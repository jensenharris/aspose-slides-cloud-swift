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


/** Layout slide. */
public class LayoutSlide: ResourceBase {

    public enum ModelType: String, Codable { 
        case title = "Title"
        case text = "Text"
        case twoColumnText = "TwoColumnText"
        case table = "Table"
        case textAndChart = "TextAndChart"
        case chartAndText = "ChartAndText"
        case diagram = "Diagram"
        case chart = "Chart"
        case textAndClipArt = "TextAndClipArt"
        case clipArtAndText = "ClipArtAndText"
        case titleOnly = "TitleOnly"
        case blank = "Blank"
        case textAndObject = "TextAndObject"
        case objectAndText = "ObjectAndText"
        case object = "Object"
        case titleAndObject = "TitleAndObject"
        case textAndMedia = "TextAndMedia"
        case mediaAndText = "MediaAndText"
        case objectOverText = "ObjectOverText"
        case textOverObject = "TextOverObject"
        case textAndTwoObjects = "TextAndTwoObjects"
        case twoObjectsAndText = "TwoObjectsAndText"
        case twoObjectsOverText = "TwoObjectsOverText"
        case fourObjects = "FourObjects"
        case verticalText = "VerticalText"
        case clipArtAndVerticalText = "ClipArtAndVerticalText"
        case verticalTitleAndText = "VerticalTitleAndText"
        case verticalTitleAndTextOverChart = "VerticalTitleAndTextOverChart"
        case twoObjects = "TwoObjects"
        case objectAndTwoObject = "ObjectAndTwoObject"
        case twoObjectsAndObject = "TwoObjectsAndObject"
        case sectionHeader = "SectionHeader"
        case twoTextAndTwoObjects = "TwoTextAndTwoObjects"
        case titleObjectAndCaption = "TitleObjectAndCaption"
        case pictureAndCaption = "PictureAndCaption"
        case custom = "Custom"
    }
    /** Name. */
    public var name: String?
    /** Layout slide type. */
    public var type: ModelType?
    /** Master slide link. */
    public var masterSlide: ResourceUri?
    /** List of depending slides. */
    public var dependingSlides: [ResourceUri]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let nameValue = source["name"] ?? source["Name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
        let typeValue = source["type"] ?? source["Type"]
        if typeValue != nil {
            let typeStringValue = typeValue! as? String
            if typeStringValue != nil {
                let typeEnumValue = ModelType(rawValue: typeStringValue!)
                if typeEnumValue != nil {
                    self.type = typeEnumValue!
                }
            }
        }
        let masterSlideValue = source["masterSlide"] ?? source["MasterSlide"]
        if masterSlideValue != nil {
            let masterSlideDictionaryValue = masterSlideValue! as? [String:Any]
            if masterSlideDictionaryValue != nil {
                let (masterSlideInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, masterSlideDictionaryValue!)
                if error == nil && masterSlideInstance != nil {
                    self.masterSlide = masterSlideInstance! as? ResourceUri
                }
            }
        }
        let dependingSlidesValue = source["dependingSlides"] ?? source["DependingSlides"]
        if dependingSlidesValue != nil {
            var dependingSlidesArray: [ResourceUri] = []
            let dependingSlidesDictionaryValue = dependingSlidesValue! as? [Any]
            if dependingSlidesDictionaryValue != nil {
                dependingSlidesDictionaryValue!.forEach { dependingSlidesAnyItem in
                    let dependingSlidesItem = dependingSlidesAnyItem as? [String:Any]
                    var added = false
                    if dependingSlidesItem != nil {
                        let (dependingSlidesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, dependingSlidesItem!)
                        if error == nil && dependingSlidesInstance != nil {
                            let dependingSlidesArrayItem = dependingSlidesInstance! as? ResourceUri
                            if dependingSlidesArrayItem != nil {
                                dependingSlidesArray.append(dependingSlidesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        dependingSlidesArray.append(ResourceUri())
                    }
                }
            }
            self.dependingSlides = dependingSlidesArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, type: ModelType? = nil, masterSlide: ResourceUri? = nil, dependingSlides: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.name = name
        self.type = type
        self.masterSlide = masterSlide
        self.dependingSlides = dependingSlides
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case masterSlide
        case dependingSlides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try? values.decode(String.self, forKey: .name)
        type = try? values.decode(ModelType.self, forKey: .type)
        masterSlide = try? values.decode(ResourceUri.self, forKey: .masterSlide)
        dependingSlides = try? values.decode([ResourceUri].self, forKey: .dependingSlides)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (name != nil) {
            try? container.encode(name, forKey: .name)
        }
        if (type != nil) {
            try? container.encode(type, forKey: .type)
        }
        if (masterSlide != nil) {
            try? container.encode(masterSlide, forKey: .masterSlide)
        }
        if (dependingSlides != nil) {
            try? container.encode(dependingSlides, forKey: .dependingSlides)
        }
    }

}

