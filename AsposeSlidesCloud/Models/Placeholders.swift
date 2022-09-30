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


/** Placeholder list. */
public class Placeholders: ResourceBase {

    /** List for placeholder links. */
    public var placeholderLinks: [ResourceUri]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let placeholderLinksValue = source["placeholderLinks"] ?? source["PlaceholderLinks"]
        if placeholderLinksValue != nil {
            var placeholderLinksArray: [ResourceUri] = []
            let placeholderLinksDictionaryValue = placeholderLinksValue! as? [Any]
            if placeholderLinksDictionaryValue != nil {
                placeholderLinksDictionaryValue!.forEach { placeholderLinksAnyItem in
                    let placeholderLinksItem = placeholderLinksAnyItem as? [String:Any]
                    var added = false
                    if placeholderLinksItem != nil {
                        let (placeholderLinksInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, placeholderLinksItem!)
                        if error == nil && placeholderLinksInstance != nil {
                            let placeholderLinksArrayItem = placeholderLinksInstance! as? ResourceUri
                            if placeholderLinksArrayItem != nil {
                                placeholderLinksArray.append(placeholderLinksArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        placeholderLinksArray.append(ResourceUri())
                    }
                }
            }
            self.placeholderLinks = placeholderLinksArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, placeholderLinks: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.placeholderLinks = placeholderLinks
    }

    private enum CodingKeys: String, CodingKey {
        case placeholderLinks
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        placeholderLinks = try? values.decode([ResourceUri].self, forKey: .placeholderLinks)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (placeholderLinks != nil) {
            try? container.encode(placeholderLinks, forKey: .placeholderLinks)
        }
    }

}

