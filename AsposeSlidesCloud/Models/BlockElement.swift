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


/** Specifies an instance of mathematical text that contained within a MathParagraph and starts on its own line. */
public class BlockElement: MathElement {

    /** List of math elements. */
    public var mathElementList: [MathElement]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let mathElementListValue = source["mathElementList"] ?? source["MathElementList"]
        if mathElementListValue != nil {
            var mathElementListArray: [MathElement] = []
            let mathElementListDictionaryValue = mathElementListValue! as? [Any]
            if mathElementListDictionaryValue != nil {
                mathElementListDictionaryValue!.forEach { mathElementListAnyItem in
                    let mathElementListItem = mathElementListAnyItem as? [String:Any]
                    var added = false
                    if mathElementListItem != nil {
                        let (mathElementListInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, mathElementListItem!)
                        if error == nil && mathElementListInstance != nil {
                            let mathElementListArrayItem = mathElementListInstance! as? MathElement
                            if mathElementListArrayItem != nil {
                                mathElementListArray.append(mathElementListArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        mathElementListArray.append(MathElement())
                    }
                }
            }
            self.mathElementList = mathElementListArray
        }
    }

    public init(type: ModelType? = nil, mathElementList: [MathElement]? = nil) {
        super.init(type: type)
        self.mathElementList = mathElementList
        self.type = ModelType.block
    }

    private enum CodingKeys: String, CodingKey {
        case mathElementList
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        mathElementList = try? values.decode([MathElement].self, forKey: .mathElementList)
        self.type = ModelType.block
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (mathElementList != nil) {
            try? container.encode(mathElementList, forKey: .mathElementList)
        }
    }

}

