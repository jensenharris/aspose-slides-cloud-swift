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


/** Split document result. */
public class SplitDocumentResult: ResourceBase {

    /** List of slide links. */
    public var slides: [ResourceUri]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let slidesValue = source["slides"]
        if slidesValue != nil {
            var slidesArray: [ResourceUri] = []
            let slidesDictionaryValue = slidesValue! as? [Any]
            if slidesDictionaryValue != nil {
                slidesDictionaryValue!.forEach { slidesAnyItem in
                    let slidesItem = slidesAnyItem as? [String:Any]
                    var added = false
                    if slidesItem != nil {
                        let (slidesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, slidesItem!)
                        if error == nil && slidesInstance != nil {
                            let slidesArrayItem = slidesInstance! as? ResourceUri
                            if slidesArrayItem != nil {
                                slidesArray.append(slidesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        slidesArray.append(ResourceUri())
                    }
                }
            }
            self.slides = slidesArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, slides: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.slides = slides
    }

    private enum CodingKeys: String, CodingKey {
        case slides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        slides = try? values.decode([ResourceUri].self, forKey: .slides)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (slides != nil) {
            try? container.encode(slides, forKey: .slides)
        }
    }

}

