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


/** Represents font scheme */
public class FontScheme: ResourceBase {

    /** Gets or sets fonts collection for a \&quot;heading\&quot; part of the slide. */
    public var major: FontSet?
    /** Gets or sets  the fonts collection for a \&quot;body\&quot; part of the slide. */
    public var minor: FontSet?
    /** Gets or sets the name. */
    public var name: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let majorValue = source["major"]
        if majorValue != nil {
            let majorDictionaryValue = majorValue! as? [String:Any]
            if majorDictionaryValue != nil {
                let (majorInstance, error) = ClassRegistry.getClassFromDictionary(FontSet.self, majorDictionaryValue!)
                if error == nil && majorInstance != nil {
                    self.major = majorInstance! as? FontSet
                }
            }
        }
        let minorValue = source["minor"]
        if minorValue != nil {
            let minorDictionaryValue = minorValue! as? [String:Any]
            if minorDictionaryValue != nil {
                let (minorInstance, error) = ClassRegistry.getClassFromDictionary(FontSet.self, minorDictionaryValue!)
                if error == nil && minorInstance != nil {
                    self.minor = minorInstance! as? FontSet
                }
            }
        }
        let nameValue = source["name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, major: FontSet? = nil, minor: FontSet? = nil, name: String? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.major = major
        self.minor = minor
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case major
        case minor
        case name
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        major = try? values.decode(FontSet.self, forKey: .major)
        minor = try? values.decode(FontSet.self, forKey: .minor)
        name = try? values.decode(String.self, forKey: .name)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (major != nil) {
            try? container.encode(major, forKey: .major)
        }
        if (minor != nil) {
            try? container.encode(minor, forKey: .minor)
        }
        if (name != nil) {
            try? container.encode(name, forKey: .name)
        }
    }

}

