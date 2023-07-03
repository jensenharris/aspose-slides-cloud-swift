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


/** Represents VBA module. */
public class VbaModule: ResourceBase {

    /** VBA module name.  */
    public var name: String?
    /** VBA module source code. */
    public var sourceCode: String?
    /** List of references.  */
    public var references: [VbaReference]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let nameValue = source["name"] ?? source["Name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
        let sourceCodeValue = source["sourceCode"] ?? source["SourceCode"]
        if sourceCodeValue != nil {
            self.sourceCode = sourceCodeValue! as? String
        }
        let referencesValue = source["references"] ?? source["References"]
        if referencesValue != nil {
            var referencesArray: [VbaReference] = []
            let referencesDictionaryValue = referencesValue! as? [Any]
            if referencesDictionaryValue != nil {
                referencesDictionaryValue!.forEach { referencesAnyItem in
                    let referencesItem = referencesAnyItem as? [String:Any]
                    var added = false
                    if referencesItem != nil {
                        let (referencesInstance, error) = ClassRegistry.getClassFromDictionary(VbaReference.self, referencesItem!)
                        if error == nil && referencesInstance != nil {
                            let referencesArrayItem = referencesInstance! as? VbaReference
                            if referencesArrayItem != nil {
                                referencesArray.append(referencesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        referencesArray.append(VbaReference())
                    }
                }
            }
            self.references = referencesArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, sourceCode: String? = nil, references: [VbaReference]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.name = name
        self.sourceCode = sourceCode
        self.references = references
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case sourceCode
        case references
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try? values.decode(String.self, forKey: .name)
        sourceCode = try? values.decode(String.self, forKey: .sourceCode)
        references = try? values.decode([VbaReference].self, forKey: .references)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (name != nil) {
            try? container.encode(name, forKey: .name)
        }
        if (sourceCode != nil) {
            try? container.encode(sourceCode, forKey: .sourceCode)
        }
        if (references != nil) {
            try? container.encode(references, forKey: .references)
        }
    }

}

