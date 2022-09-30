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


/** Represents text item, referenced by TextItems */
public class TextItem: Codable {

    /** Gets or sets the URI to resource that contains text */
    public var uri: ResourceUri?
    /** Gets or sets the text. */
    public var text: String?

    func fillValues(_ source: [String:Any]) throws {
        let uriValue = source["uri"] ?? source["Uri"]
        if uriValue != nil {
            let uriDictionaryValue = uriValue! as? [String:Any]
            if uriDictionaryValue != nil {
                let (uriInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, uriDictionaryValue!)
                if error == nil && uriInstance != nil {
                    self.uri = uriInstance! as? ResourceUri
                }
            }
        }
        let textValue = source["text"] ?? source["Text"]
        if textValue != nil {
            self.text = textValue! as? String
        }
    }

    public init(uri: ResourceUri? = nil, text: String? = nil) {
        self.uri = uri
        self.text = text
    }

    private enum CodingKeys: String, CodingKey {
        case uri
        case text
    }

}

