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


/** Subscript object */
public class SuperscriptElement: MathElement {

    /** Base argument */
    public var base: MathElement?
    /** Superscript */
    public var superscript: MathElement?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let baseValue = source["base"] ?? source["Base"]
        if baseValue != nil {
            let baseDictionaryValue = baseValue! as? [String:Any]
            if baseDictionaryValue != nil {
                let (baseInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, baseDictionaryValue!)
                if error == nil && baseInstance != nil {
                    self.base = baseInstance! as? MathElement
                }
            }
        }
        let superscriptValue = source["superscript"] ?? source["Superscript"]
        if superscriptValue != nil {
            let superscriptDictionaryValue = superscriptValue! as? [String:Any]
            if superscriptDictionaryValue != nil {
                let (superscriptInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, superscriptDictionaryValue!)
                if error == nil && superscriptInstance != nil {
                    self.superscript = superscriptInstance! as? MathElement
                }
            }
        }
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, superscript: MathElement? = nil) {
        super.init(type: type)
        self.base = base
        self.superscript = superscript
        self.type = ModelType.superscriptElement
    }

    private enum CodingKeys: String, CodingKey {
        case base
        case superscript
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try? values.decode(MathElement.self, forKey: .base)
        superscript = try? values.decode(MathElement.self, forKey: .superscript)
        self.type = ModelType.superscriptElement
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (base != nil) {
            try? container.encode(base, forKey: .base)
        }
        if (superscript != nil) {
            try? container.encode(superscript, forKey: .superscript)
        }
    }

}

