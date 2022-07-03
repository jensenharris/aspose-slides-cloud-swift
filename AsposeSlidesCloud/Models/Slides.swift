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


/** Slide list. */
public class Slides: ResourceBase {

    /** List of slide links. */
    public var slideList: [ResourceUri]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let slideListValue = source["slideList"]
        if slideListValue != nil {
            var slideListArray: [ResourceUri] = []
            let slideListDictionaryValue = slideListValue! as? [Any]
            if slideListDictionaryValue != nil {
                slideListDictionaryValue!.forEach { slideListAnyItem in
                    let slideListItem = slideListAnyItem as? [String:Any]
                    var added = false
                    if slideListItem != nil {
                        let (slideListInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, slideListItem!)
                        if error == nil && slideListInstance != nil {
                            let slideListArrayItem = slideListInstance! as? ResourceUri
                            if slideListArrayItem != nil {
                                slideListArray.append(slideListArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        slideListArray.append(ResourceUri())
                    }
                }
            }
            self.slideList = slideListArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, slideList: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.slideList = slideList
    }

    private enum CodingKeys: String, CodingKey {
        case slideList
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        slideList = try? values.decode([ResourceUri].self, forKey: .slideList)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (slideList != nil) {
            try? container.encode(slideList, forKey: .slideList)
        }
    }

}

