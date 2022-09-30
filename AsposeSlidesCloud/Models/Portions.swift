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
public class Portions: ResourceBase {

    /** List of portion links. */
    public var items: [Portion]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let itemsValue = source["items"] ?? source["Items"]
        if itemsValue != nil {
            var itemsArray: [Portion] = []
            let itemsDictionaryValue = itemsValue! as? [Any]
            if itemsDictionaryValue != nil {
                itemsDictionaryValue!.forEach { itemsAnyItem in
                    let itemsItem = itemsAnyItem as? [String:Any]
                    var added = false
                    if itemsItem != nil {
                        let (itemsInstance, error) = ClassRegistry.getClassFromDictionary(Portion.self, itemsItem!)
                        if error == nil && itemsInstance != nil {
                            let itemsArrayItem = itemsInstance! as? Portion
                            if itemsArrayItem != nil {
                                itemsArray.append(itemsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        itemsArray.append(Portion())
                    }
                }
            }
            self.items = itemsArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, items: [Portion]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.items = items
    }

    private enum CodingKeys: String, CodingKey {
        case items
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        items = try? values.decode([Portion].self, forKey: .items)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (items != nil) {
            try? container.encode(items, forKey: .items)
        }
    }

}

