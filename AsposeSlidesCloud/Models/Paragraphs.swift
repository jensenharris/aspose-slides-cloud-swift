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


/** Represents list of Links to Paragraphs resources */
public class Paragraphs: ResourceBase {

    /** List of paragraph links. */
    public var paragraphLinks: [ResourceUri]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let paragraphLinksValue = source["paragraphLinks"]
        if paragraphLinksValue != nil {
            var paragraphLinksArray: [ResourceUri] = []
            let paragraphLinksDictionaryValue = paragraphLinksValue! as? [Any]
            if paragraphLinksDictionaryValue != nil {
                paragraphLinksDictionaryValue!.forEach { paragraphLinksAnyItem in
                    let paragraphLinksItem = paragraphLinksAnyItem as? [String:Any]
                    var added = false
                    if paragraphLinksItem != nil {
                        let (paragraphLinksInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, paragraphLinksItem!)
                        if error == nil && paragraphLinksInstance != nil {
                            let paragraphLinksArrayItem = paragraphLinksInstance! as? ResourceUri
                            if paragraphLinksArrayItem != nil {
                                paragraphLinksArray.append(paragraphLinksArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        paragraphLinksArray.append(ResourceUri())
                    }
                }
            }
            self.paragraphLinks = paragraphLinksArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, paragraphLinks: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.paragraphLinks = paragraphLinks
    }

    private enum CodingKeys: String, CodingKey {
        case paragraphLinks
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        paragraphLinks = try? values.decode([ResourceUri].self, forKey: .paragraphLinks)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (paragraphLinks != nil) {
            try? container.encode(paragraphLinks, forKey: .paragraphLinks)
        }
    }

}

