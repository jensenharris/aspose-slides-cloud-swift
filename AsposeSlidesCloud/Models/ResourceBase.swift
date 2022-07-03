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


/** Base class for all Slide&#39;s DTO objects  */
public class ResourceBase: Codable {

    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?

    func fillValues(_ source: [String:Any]) throws {
        let selfUriValue = source["selfUri"]
        if selfUriValue != nil {
            let selfUriDictionaryValue = selfUriValue! as? [String:Any]
            if selfUriDictionaryValue != nil {
                let (selfUriInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, selfUriDictionaryValue!)
                if error == nil && selfUriInstance != nil {
                    self.selfUri = selfUriInstance! as? ResourceUri
                }
            }
        }
        let alternateLinksValue = source["alternateLinks"]
        if alternateLinksValue != nil {
            var alternateLinksArray: [ResourceUri] = []
            let alternateLinksDictionaryValue = alternateLinksValue! as? [Any]
            if alternateLinksDictionaryValue != nil {
                alternateLinksDictionaryValue!.forEach { alternateLinksAnyItem in
                    let alternateLinksItem = alternateLinksAnyItem as? [String:Any]
                    var added = false
                    if alternateLinksItem != nil {
                        let (alternateLinksInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, alternateLinksItem!)
                        if error == nil && alternateLinksInstance != nil {
                            let alternateLinksArrayItem = alternateLinksInstance! as? ResourceUri
                            if alternateLinksArrayItem != nil {
                                alternateLinksArray.append(alternateLinksArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        alternateLinksArray.append(ResourceUri())
                    }
                }
            }
            self.alternateLinks = alternateLinksArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
    }

    private enum CodingKeys: String, CodingKey {
        case selfUri
        case alternateLinks
    }

}

