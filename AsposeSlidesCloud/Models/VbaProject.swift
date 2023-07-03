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


/** VBA project */
public class VbaProject: ResourceBase {

    /** VBA modules */
    public var modules: [ResourceUri]?
    /** VBA references */
    public var references: [VbaReference]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let modulesValue = source["modules"] ?? source["Modules"]
        if modulesValue != nil {
            var modulesArray: [ResourceUri] = []
            let modulesDictionaryValue = modulesValue! as? [Any]
            if modulesDictionaryValue != nil {
                modulesDictionaryValue!.forEach { modulesAnyItem in
                    let modulesItem = modulesAnyItem as? [String:Any]
                    var added = false
                    if modulesItem != nil {
                        let (modulesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, modulesItem!)
                        if error == nil && modulesInstance != nil {
                            let modulesArrayItem = modulesInstance! as? ResourceUri
                            if modulesArrayItem != nil {
                                modulesArray.append(modulesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        modulesArray.append(ResourceUri())
                    }
                }
            }
            self.modules = modulesArray
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

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, modules: [ResourceUri]? = nil, references: [VbaReference]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.modules = modules
        self.references = references
    }

    private enum CodingKeys: String, CodingKey {
        case modules
        case references
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        modules = try? values.decode([ResourceUri].self, forKey: .modules)
        references = try? values.decode([VbaReference].self, forKey: .references)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (modules != nil) {
            try? container.encode(modules, forKey: .modules)
        }
        if (references != nil) {
            try? container.encode(references, forKey: .references)
        }
    }

}

