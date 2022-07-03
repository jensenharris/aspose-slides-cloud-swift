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


/** Radical function */
public class RadicalElement: MathElement {

    /** Base argument */
    public var base: MathElement?
    /** Degree argument */
    public var degree: MathElement?
    /** Hide degree */
    public var hideDegree: Bool?

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
        let degreeValue = source["degree"]
        if degreeValue != nil {
            let degreeDictionaryValue = degreeValue! as? [String:Any]
            if degreeDictionaryValue != nil {
                let (degreeInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, degreeDictionaryValue!)
                if error == nil && degreeInstance != nil {
                    self.degree = degreeInstance! as? MathElement
                }
            }
        }
        let hideDegreeValue = source["hideDegree"]
        if hideDegreeValue != nil {
            self.hideDegree = hideDegreeValue! as? Bool
        }
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, degree: MathElement? = nil, hideDegree: Bool? = nil) {
        super.init(type: type)
        self.base = base
        self.degree = degree
        self.hideDegree = hideDegree
        self.type = ModelType.radical
    }

    private enum CodingKeys: String, CodingKey {
        case base
        case degree
        case hideDegree
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try? values.decode(MathElement.self, forKey: .base)
        degree = try? values.decode(MathElement.self, forKey: .degree)
        hideDegree = try? values.decode(Bool.self, forKey: .hideDegree)
        self.type = ModelType.radical
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (base != nil) {
            try? container.encode(base, forKey: .base)
        }
        if (degree != nil) {
            try? container.encode(degree, forKey: .degree)
        }
        if (hideDegree != nil) {
            try? container.encode(hideDegree, forKey: .hideDegree)
        }
    }

}

