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
public class SlideAnimation: ResourceBase {

    /** Main sequence. */
    public var mainSequence: [Effect]?
    /** Interactive sequence list. */
    public var interactiveSequences: [InteractiveSequence]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let mainSequenceValue = source["mainSequence"]
        if mainSequenceValue != nil {
            var mainSequenceArray: [Effect] = []
            let mainSequenceDictionaryValue = mainSequenceValue! as? [Any]
            if mainSequenceDictionaryValue != nil {
                mainSequenceDictionaryValue!.forEach { mainSequenceAnyItem in
                    let mainSequenceItem = mainSequenceAnyItem as? [String:Any]
                    var added = false
                    if mainSequenceItem != nil {
                        let (mainSequenceInstance, error) = ClassRegistry.getClassFromDictionary(Effect.self, mainSequenceItem!)
                        if error == nil && mainSequenceInstance != nil {
                            let mainSequenceArrayItem = mainSequenceInstance! as? Effect
                            if mainSequenceArrayItem != nil {
                                mainSequenceArray.append(mainSequenceArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        mainSequenceArray.append(Effect())
                    }
                }
            }
            self.mainSequence = mainSequenceArray
        }
        let interactiveSequencesValue = source["interactiveSequences"]
        if interactiveSequencesValue != nil {
            var interactiveSequencesArray: [InteractiveSequence] = []
            let interactiveSequencesDictionaryValue = interactiveSequencesValue! as? [Any]
            if interactiveSequencesDictionaryValue != nil {
                interactiveSequencesDictionaryValue!.forEach { interactiveSequencesAnyItem in
                    let interactiveSequencesItem = interactiveSequencesAnyItem as? [String:Any]
                    var added = false
                    if interactiveSequencesItem != nil {
                        let (interactiveSequencesInstance, error) = ClassRegistry.getClassFromDictionary(InteractiveSequence.self, interactiveSequencesItem!)
                        if error == nil && interactiveSequencesInstance != nil {
                            let interactiveSequencesArrayItem = interactiveSequencesInstance! as? InteractiveSequence
                            if interactiveSequencesArrayItem != nil {
                                interactiveSequencesArray.append(interactiveSequencesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        interactiveSequencesArray.append(InteractiveSequence())
                    }
                }
            }
            self.interactiveSequences = interactiveSequencesArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, mainSequence: [Effect]? = nil, interactiveSequences: [InteractiveSequence]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.mainSequence = mainSequence
        self.interactiveSequences = interactiveSequences
    }

    private enum CodingKeys: String, CodingKey {
        case mainSequence
        case interactiveSequences
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        mainSequence = try? values.decode([Effect].self, forKey: .mainSequence)
        interactiveSequences = try? values.decode([InteractiveSequence].self, forKey: .interactiveSequences)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (mainSequence != nil) {
            try? container.encode(mainSequence, forKey: .mainSequence)
        }
        if (interactiveSequences != nil) {
            try? container.encode(interactiveSequences, forKey: .interactiveSequences)
        }
    }

}

