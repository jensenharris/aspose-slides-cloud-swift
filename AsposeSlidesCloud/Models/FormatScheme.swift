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


/** Represents Format Scheme for slide&#39;s theme */
public class FormatScheme: ResourceBase {

    /** Background styles. */
    public var backgroundStyles: [FillFormat]?
    /** Effect styles. */
    public var effectStyles: [EffectFormat]?
    /** Fill styles. */
    public var fillStyles: [FillFormat]?
    /** Line style. */
    public var lineStyles: [LineFormat]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let backgroundStylesValue = source["backgroundStyles"] ?? source["BackgroundStyles"]
        if backgroundStylesValue != nil {
            var backgroundStylesArray: [FillFormat] = []
            let backgroundStylesDictionaryValue = backgroundStylesValue! as? [Any]
            if backgroundStylesDictionaryValue != nil {
                backgroundStylesDictionaryValue!.forEach { backgroundStylesAnyItem in
                    let backgroundStylesItem = backgroundStylesAnyItem as? [String:Any]
                    var added = false
                    if backgroundStylesItem != nil {
                        let (backgroundStylesInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, backgroundStylesItem!)
                        if error == nil && backgroundStylesInstance != nil {
                            let backgroundStylesArrayItem = backgroundStylesInstance! as? FillFormat
                            if backgroundStylesArrayItem != nil {
                                backgroundStylesArray.append(backgroundStylesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        backgroundStylesArray.append(FillFormat())
                    }
                }
            }
            self.backgroundStyles = backgroundStylesArray
        }
        let effectStylesValue = source["effectStyles"] ?? source["EffectStyles"]
        if effectStylesValue != nil {
            var effectStylesArray: [EffectFormat] = []
            let effectStylesDictionaryValue = effectStylesValue! as? [Any]
            if effectStylesDictionaryValue != nil {
                effectStylesDictionaryValue!.forEach { effectStylesAnyItem in
                    let effectStylesItem = effectStylesAnyItem as? [String:Any]
                    var added = false
                    if effectStylesItem != nil {
                        let (effectStylesInstance, error) = ClassRegistry.getClassFromDictionary(EffectFormat.self, effectStylesItem!)
                        if error == nil && effectStylesInstance != nil {
                            let effectStylesArrayItem = effectStylesInstance! as? EffectFormat
                            if effectStylesArrayItem != nil {
                                effectStylesArray.append(effectStylesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        effectStylesArray.append(EffectFormat())
                    }
                }
            }
            self.effectStyles = effectStylesArray
        }
        let fillStylesValue = source["fillStyles"] ?? source["FillStyles"]
        if fillStylesValue != nil {
            var fillStylesArray: [FillFormat] = []
            let fillStylesDictionaryValue = fillStylesValue! as? [Any]
            if fillStylesDictionaryValue != nil {
                fillStylesDictionaryValue!.forEach { fillStylesAnyItem in
                    let fillStylesItem = fillStylesAnyItem as? [String:Any]
                    var added = false
                    if fillStylesItem != nil {
                        let (fillStylesInstance, error) = ClassRegistry.getClassFromDictionary(FillFormat.self, fillStylesItem!)
                        if error == nil && fillStylesInstance != nil {
                            let fillStylesArrayItem = fillStylesInstance! as? FillFormat
                            if fillStylesArrayItem != nil {
                                fillStylesArray.append(fillStylesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        fillStylesArray.append(FillFormat())
                    }
                }
            }
            self.fillStyles = fillStylesArray
        }
        let lineStylesValue = source["lineStyles"] ?? source["LineStyles"]
        if lineStylesValue != nil {
            var lineStylesArray: [LineFormat] = []
            let lineStylesDictionaryValue = lineStylesValue! as? [Any]
            if lineStylesDictionaryValue != nil {
                lineStylesDictionaryValue!.forEach { lineStylesAnyItem in
                    let lineStylesItem = lineStylesAnyItem as? [String:Any]
                    var added = false
                    if lineStylesItem != nil {
                        let (lineStylesInstance, error) = ClassRegistry.getClassFromDictionary(LineFormat.self, lineStylesItem!)
                        if error == nil && lineStylesInstance != nil {
                            let lineStylesArrayItem = lineStylesInstance! as? LineFormat
                            if lineStylesArrayItem != nil {
                                lineStylesArray.append(lineStylesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        lineStylesArray.append(LineFormat())
                    }
                }
            }
            self.lineStyles = lineStylesArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, backgroundStyles: [FillFormat]? = nil, effectStyles: [EffectFormat]? = nil, fillStyles: [FillFormat]? = nil, lineStyles: [LineFormat]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.backgroundStyles = backgroundStyles
        self.effectStyles = effectStyles
        self.fillStyles = fillStyles
        self.lineStyles = lineStyles
    }

    private enum CodingKeys: String, CodingKey {
        case backgroundStyles
        case effectStyles
        case fillStyles
        case lineStyles
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        backgroundStyles = try? values.decode([FillFormat].self, forKey: .backgroundStyles)
        effectStyles = try? values.decode([EffectFormat].self, forKey: .effectStyles)
        fillStyles = try? values.decode([FillFormat].self, forKey: .fillStyles)
        lineStyles = try? values.decode([LineFormat].self, forKey: .lineStyles)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (backgroundStyles != nil) {
            try? container.encode(backgroundStyles, forKey: .backgroundStyles)
        }
        if (effectStyles != nil) {
            try? container.encode(effectStyles, forKey: .effectStyles)
        }
        if (fillStyles != nil) {
            try? container.encode(fillStyles, forKey: .fillStyles)
        }
        if (lineStyles != nil) {
            try? container.encode(lineStyles, forKey: .lineStyles)
        }
    }

}

