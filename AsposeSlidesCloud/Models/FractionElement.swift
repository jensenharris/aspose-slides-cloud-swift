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


/** Specifies the fraction object, consisting of a numerator and denominator separated by a fraction bar. */
public class FractionElement: MathElement {

    public enum FractionType: String, Codable { 
        case bar = "Bar"
        case skewed = "Skewed"
        case linear = "Linear"
        case noBar = "NoBar"
    }
    /** Fraction type */
    public var fractionType: FractionType?
    /** Numerator */
    public var numerator: MathElement?
    /** Denominator */
    public var denominator: MathElement?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let fractionTypeValue = source["fractionType"]
        if fractionTypeValue != nil {
            let fractionTypeStringValue = fractionTypeValue! as? String
            if fractionTypeStringValue != nil {
                let fractionTypeEnumValue = FractionType(rawValue: fractionTypeStringValue!)
                if fractionTypeEnumValue != nil {
                    self.fractionType = fractionTypeEnumValue!
                }
            }
        }
        let numeratorValue = source["numerator"]
        if numeratorValue != nil {
            let numeratorDictionaryValue = numeratorValue! as? [String:Any]
            if numeratorDictionaryValue != nil {
                let (numeratorInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, numeratorDictionaryValue!)
                if error == nil && numeratorInstance != nil {
                    self.numerator = numeratorInstance! as? MathElement
                }
            }
        }
        let denominatorValue = source["denominator"]
        if denominatorValue != nil {
            let denominatorDictionaryValue = denominatorValue! as? [String:Any]
            if denominatorDictionaryValue != nil {
                let (denominatorInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, denominatorDictionaryValue!)
                if error == nil && denominatorInstance != nil {
                    self.denominator = denominatorInstance! as? MathElement
                }
            }
        }
    }

    public init(type: ModelType? = nil, fractionType: FractionType? = nil, numerator: MathElement? = nil, denominator: MathElement? = nil) {
        super.init(type: type)
        self.fractionType = fractionType
        self.numerator = numerator
        self.denominator = denominator
        self.type = ModelType.fraction
    }

    private enum CodingKeys: String, CodingKey {
        case fractionType
        case numerator
        case denominator
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fractionType = try? values.decode(FractionType.self, forKey: .fractionType)
        numerator = try? values.decode(MathElement.self, forKey: .numerator)
        denominator = try? values.decode(MathElement.self, forKey: .denominator)
        self.type = ModelType.fraction
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (fractionType != nil) {
            try? container.encode(fractionType, forKey: .fractionType)
        }
        if (numerator != nil) {
            try? container.encode(numerator, forKey: .numerator)
        }
        if (denominator != nil) {
            try? container.encode(denominator, forKey: .denominator)
        }
    }

}

