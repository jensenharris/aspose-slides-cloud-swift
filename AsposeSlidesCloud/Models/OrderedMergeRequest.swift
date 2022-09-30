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


/** Request for presentations merge with optional order of slides */
public class OrderedMergeRequest: Codable {

    /** Gets or sets the presentation paths. */
    public var presentations: [PresentationToMerge]?

    func fillValues(_ source: [String:Any]) throws {
        let presentationsValue = source["presentations"] ?? source["Presentations"]
        if presentationsValue != nil {
            var presentationsArray: [PresentationToMerge] = []
            let presentationsDictionaryValue = presentationsValue! as? [Any]
            if presentationsDictionaryValue != nil {
                presentationsDictionaryValue!.forEach { presentationsAnyItem in
                    let presentationsItem = presentationsAnyItem as? [String:Any]
                    var added = false
                    if presentationsItem != nil {
                        let (presentationsInstance, error) = ClassRegistry.getClassFromDictionary(PresentationToMerge.self, presentationsItem!)
                        if error == nil && presentationsInstance != nil {
                            let presentationsArrayItem = presentationsInstance! as? PresentationToMerge
                            if presentationsArrayItem != nil {
                                presentationsArray.append(presentationsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        presentationsArray.append(PresentationToMerge())
                    }
                }
            }
            self.presentations = presentationsArray
        }
    }

    public init(presentations: [PresentationToMerge]? = nil) {
        self.presentations = presentations
    }

    private enum CodingKeys: String, CodingKey {
        case presentations
    }

}

