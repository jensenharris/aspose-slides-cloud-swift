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


/** Section list. */
public class Sections: ResourceBase {

    /** List of slide links. */
    public var sectionList: [Section]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let sectionListValue = source["sectionList"]
        if sectionListValue != nil {
            var sectionListArray: [Section] = []
            let sectionListDictionaryValue = sectionListValue! as? [Any]
            if sectionListDictionaryValue != nil {
                sectionListDictionaryValue!.forEach { sectionListAnyItem in
                    let sectionListItem = sectionListAnyItem as? [String:Any]
                    var added = false
                    if sectionListItem != nil {
                        let (sectionListInstance, error) = ClassRegistry.getClassFromDictionary(Section.self, sectionListItem!)
                        if error == nil && sectionListInstance != nil {
                            let sectionListArrayItem = sectionListInstance! as? Section
                            if sectionListArrayItem != nil {
                                sectionListArray.append(sectionListArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        sectionListArray.append(Section())
                    }
                }
            }
            self.sectionList = sectionListArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, sectionList: [Section]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.sectionList = sectionList
    }

    private enum CodingKeys: String, CodingKey {
        case sectionList
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        sectionList = try? values.decode([Section].self, forKey: .sectionList)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (sectionList != nil) {
            try? container.encode(sectionList, forKey: .sectionList)
        }
    }

}

