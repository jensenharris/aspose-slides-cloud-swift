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


/** Specifies the Limit object */
public class LimitElement: MathElement {

    /** Base */
    public var base: MathElement?
    /** Limit */
    public var limit: MathElement?
    /** Specifies upper or lower limit */
    public var upperLimit: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let baseValue = source["base"]
        if baseValue != nil {
            let baseDictionaryValue = baseValue! as? [String:Any]
            if baseDictionaryValue != nil {
                let (baseInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, baseDictionaryValue!)
                if error == nil && baseInstance != nil {
                    self.base = baseInstance! as? MathElement
                }
            }
        }
        let limitValue = source["limit"]
        if limitValue != nil {
            let limitDictionaryValue = limitValue! as? [String:Any]
            if limitDictionaryValue != nil {
                let (limitInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, limitDictionaryValue!)
                if error == nil && limitInstance != nil {
                    self.limit = limitInstance! as? MathElement
                }
            }
        }
        let upperLimitValue = source["upperLimit"]
        if upperLimitValue != nil {
            self.upperLimit = upperLimitValue! as? Bool
        }
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, limit: MathElement? = nil, upperLimit: Bool? = nil) {
        super.init(type: type)
        self.base = base
        self.limit = limit
        self.upperLimit = upperLimit
        self.type = ModelType.limit
    }

    private enum CodingKeys: String, CodingKey {
        case base
        case limit
        case upperLimit
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try? values.decode(MathElement.self, forKey: .base)
        limit = try? values.decode(MathElement.self, forKey: .limit)
        upperLimit = try? values.decode(Bool.self, forKey: .upperLimit)
        self.type = ModelType.limit
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (base != nil) {
            try? container.encode(base, forKey: .base)
        }
        if (limit != nil) {
            try? container.encode(limit, forKey: .limit)
        }
        if (upperLimit != nil) {
            try? container.encode(upperLimit, forKey: .upperLimit)
        }
    }

}

