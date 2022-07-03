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


/** Represents list of Links to Shapes resources */
public class Shapes: ResourceBase {

    /** List of shape links. */
    public var shapesLinks: [ResourceUri]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let shapesLinksValue = source["shapesLinks"]
        if shapesLinksValue != nil {
            var shapesLinksArray: [ResourceUri] = []
            let shapesLinksDictionaryValue = shapesLinksValue! as? [Any]
            if shapesLinksDictionaryValue != nil {
                shapesLinksDictionaryValue!.forEach { shapesLinksAnyItem in
                    let shapesLinksItem = shapesLinksAnyItem as? [String:Any]
                    var added = false
                    if shapesLinksItem != nil {
                        let (shapesLinksInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, shapesLinksItem!)
                        if error == nil && shapesLinksInstance != nil {
                            let shapesLinksArrayItem = shapesLinksInstance! as? ResourceUri
                            if shapesLinksArrayItem != nil {
                                shapesLinksArray.append(shapesLinksArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        shapesLinksArray.append(ResourceUri())
                    }
                }
            }
            self.shapesLinks = shapesLinksArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, shapesLinks: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.shapesLinks = shapesLinks
    }

    private enum CodingKeys: String, CodingKey {
        case shapesLinks
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        shapesLinks = try? values.decode([ResourceUri].self, forKey: .shapesLinks)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (shapesLinks != nil) {
            try? container.encode(shapesLinks, forKey: .shapesLinks)
        }
    }

}

