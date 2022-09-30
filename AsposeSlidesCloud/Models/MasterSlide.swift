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


/** Master slide. */
public class MasterSlide: ResourceBase {

    /** Name. */
    public var name: String?
    /** List of layout slide links. */
    public var layoutSlides: [ResourceUri]?
    /** List of depending slide links. */
    public var dependingSlides: [ResourceUri]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let nameValue = source["name"] ?? source["Name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
        let layoutSlidesValue = source["layoutSlides"] ?? source["LayoutSlides"]
        if layoutSlidesValue != nil {
            var layoutSlidesArray: [ResourceUri] = []
            let layoutSlidesDictionaryValue = layoutSlidesValue! as? [Any]
            if layoutSlidesDictionaryValue != nil {
                layoutSlidesDictionaryValue!.forEach { layoutSlidesAnyItem in
                    let layoutSlidesItem = layoutSlidesAnyItem as? [String:Any]
                    var added = false
                    if layoutSlidesItem != nil {
                        let (layoutSlidesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, layoutSlidesItem!)
                        if error == nil && layoutSlidesInstance != nil {
                            let layoutSlidesArrayItem = layoutSlidesInstance! as? ResourceUri
                            if layoutSlidesArrayItem != nil {
                                layoutSlidesArray.append(layoutSlidesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        layoutSlidesArray.append(ResourceUri())
                    }
                }
            }
            self.layoutSlides = layoutSlidesArray
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

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, layoutSlides: [ResourceUri]? = nil, dependingSlides: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.name = name
        self.layoutSlides = layoutSlides
        self.dependingSlides = dependingSlides
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case layoutSlides
        case dependingSlides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try? values.decode(String.self, forKey: .name)
        layoutSlides = try? values.decode([ResourceUri].self, forKey: .layoutSlides)
        dependingSlides = try? values.decode([ResourceUri].self, forKey: .dependingSlides)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (name != nil) {
            try? container.encode(name, forKey: .name)
        }
        if (layoutSlides != nil) {
            try? container.encode(layoutSlides, forKey: .layoutSlides)
        }
        if (dependingSlides != nil) {
            try? container.encode(dependingSlides, forKey: .dependingSlides)
        }
    }

}

