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

    private enum CodingKeys: String, CodingKey {
        case fractionType
        case numerator
        case denominator
    }

    public init(type: ModelType? = nil, fractionType: FractionType? = nil, numerator: MathElement? = nil, denominator: MathElement? = nil) {
        super.init(type: type)
        self.fractionType = fractionType
        self.numerator = numerator
        self.denominator = denominator
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fractionType = try values.decode(FractionType?.self, forKey: .fractionType)
        numerator = try values.decode(MathElement?.self, forKey: .numerator)
        denominator = try values.decode(MathElement?.self, forKey: .denominator)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fractionType, forKey: .fractionType)
        try container.encode(numerator, forKey: .numerator)
        try container.encode(denominator, forKey: .denominator)
    }


}

