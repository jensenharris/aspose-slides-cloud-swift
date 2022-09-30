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


/** Slides document properties. */
public class DocumentProperties: ResourceBase {

    /** Document property list. */
    public var list: [DocumentProperty]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let listValue = source["list"] ?? source["List"]
        if listValue != nil {
            var listArray: [DocumentProperty] = []
            let listDictionaryValue = listValue! as? [Any]
            if listDictionaryValue != nil {
                listDictionaryValue!.forEach { listAnyItem in
                    let listItem = listAnyItem as? [String:Any]
                    var added = false
                    if listItem != nil {
                        let (listInstance, error) = ClassRegistry.getClassFromDictionary(DocumentProperty.self, listItem!)
                        if error == nil && listInstance != nil {
                            let listArrayItem = listInstance! as? DocumentProperty
                            if listArrayItem != nil {
                                listArray.append(listArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        listArray.append(DocumentProperty())
                    }
                }
            }
            self.list = listArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, list: [DocumentProperty]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.list = list
    }

    private enum CodingKeys: String, CodingKey {
        case list
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        list = try? values.decode([DocumentProperty].self, forKey: .list)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (list != nil) {
            try? container.encode(list, forKey: .list)
        }
    }

}

