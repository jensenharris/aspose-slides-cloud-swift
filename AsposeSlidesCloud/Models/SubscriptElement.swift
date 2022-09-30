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
public class SubscriptElement: MathElement {

    /** Base argument */
    public var base: MathElement?
    /** Subscript */
    public var _subscript: MathElement?

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
        let _subscriptValue = source["_subscript"] ?? source["Subscript"]
        if _subscriptValue != nil {
            let _subscriptDictionaryValue = _subscriptValue! as? [String:Any]
            if _subscriptDictionaryValue != nil {
                let (_subscriptInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, _subscriptDictionaryValue!)
                if error == nil && _subscriptInstance != nil {
                    self._subscript = _subscriptInstance! as? MathElement
                }
            }
        }
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, _subscript: MathElement? = nil) {
        super.init(type: type)
        self.base = base
        self._subscript = _subscript
        self.type = ModelType.subscriptElement
    }

    private enum CodingKeys: String, CodingKey {
        case base
        case _subscript
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try? values.decode(MathElement.self, forKey: .base)
        _subscript = try? values.decode(MathElement.self, forKey: ._subscript)
        self.type = ModelType.subscriptElement
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (base != nil) {
            try? container.encode(base, forKey: .base)
        }
        if (_subscript != nil) {
            try? container.encode(_subscript, forKey: ._subscript)
        }
    }

}

