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


/** Represents comments collection of slide */
public class InteractiveSequence: Codable {

    /** Effect list. */
    public var effects: [Effect]?
    /** Index of the shape that triggers the sequence. */
    public var triggerShapeIndex: Int?

    func fillValues(_ source: [String:Any]) throws {
        let effectsValue = source["effects"]
        if effectsValue != nil {
            var effectsArray: [Effect] = []
            let effectsDictionaryValue = effectsValue! as? [Any]
            if effectsDictionaryValue != nil {
                effectsDictionaryValue!.forEach { effectsAnyItem in
                    let effectsItem = effectsAnyItem as? [String:Any]
                    var added = false
                    if effectsItem != nil {
                        let (effectsInstance, error) = ClassRegistry.getClassFromDictionary(Effect.self, effectsItem!)
                        if error == nil && effectsInstance != nil {
                            let effectsArrayItem = effectsInstance! as? Effect
                            if effectsArrayItem != nil {
                                effectsArray.append(effectsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        effectsArray.append(Effect())
                    }
                }
            }
            self.effects = effectsArray
        }
        let triggerShapeIndexValue = source["triggerShapeIndex"]
        if triggerShapeIndexValue != nil {
            self.triggerShapeIndex = triggerShapeIndexValue! as? Int
        }
    }

    public init(effects: [Effect]? = nil, triggerShapeIndex: Int? = nil) {
        self.effects = effects
        self.triggerShapeIndex = triggerShapeIndex
    }

    private enum CodingKeys: String, CodingKey {
        case effects
        case triggerShapeIndex
    }

}

