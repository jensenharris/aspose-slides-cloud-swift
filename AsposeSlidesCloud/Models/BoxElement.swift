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


/** Box element. */
public class BoxElement: MathElement {

    /** Base */
    public var base: MathElement?
    /** Operator emulator */
    public var operatorEmulator: Bool?
    /** No break */
    public var noBreak: Bool?
    /** Differential */
    public var differential: Bool?
    /** Alignment point */
    public var alignmentPoint: Bool?
    /** Explicit break */
    public var explicitBreak: Int?

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
        let operatorEmulatorValue = source["operatorEmulator"] ?? source["OperatorEmulator"]
        if operatorEmulatorValue != nil {
            self.operatorEmulator = operatorEmulatorValue! as? Bool
        }
        let noBreakValue = source["noBreak"] ?? source["NoBreak"]
        if noBreakValue != nil {
            self.noBreak = noBreakValue! as? Bool
        }
        let differentialValue = source["differential"] ?? source["Differential"]
        if differentialValue != nil {
            self.differential = differentialValue! as? Bool
        }
        let alignmentPointValue = source["alignmentPoint"] ?? source["AlignmentPoint"]
        if alignmentPointValue != nil {
            self.alignmentPoint = alignmentPointValue! as? Bool
        }
        let explicitBreakValue = source["explicitBreak"] ?? source["ExplicitBreak"]
        if explicitBreakValue != nil {
            self.explicitBreak = explicitBreakValue! as? Int
        }
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, operatorEmulator: Bool? = nil, noBreak: Bool? = nil, differential: Bool? = nil, alignmentPoint: Bool? = nil, explicitBreak: Int? = nil) {
        super.init(type: type)
        self.base = base
        self.operatorEmulator = operatorEmulator
        self.noBreak = noBreak
        self.differential = differential
        self.alignmentPoint = alignmentPoint
        self.explicitBreak = explicitBreak
        self.type = ModelType.box
    }

    private enum CodingKeys: String, CodingKey {
        case base
        case operatorEmulator
        case noBreak
        case differential
        case alignmentPoint
        case explicitBreak
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try? values.decode(MathElement.self, forKey: .base)
        operatorEmulator = try? values.decode(Bool.self, forKey: .operatorEmulator)
        noBreak = try? values.decode(Bool.self, forKey: .noBreak)
        differential = try? values.decode(Bool.self, forKey: .differential)
        alignmentPoint = try? values.decode(Bool.self, forKey: .alignmentPoint)
        explicitBreak = try? values.decode(Int.self, forKey: .explicitBreak)
        self.type = ModelType.box
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (base != nil) {
            try? container.encode(base, forKey: .base)
        }
        if (operatorEmulator != nil) {
            try? container.encode(operatorEmulator, forKey: .operatorEmulator)
        }
        if (noBreak != nil) {
            try? container.encode(noBreak, forKey: .noBreak)
        }
        if (differential != nil) {
            try? container.encode(differential, forKey: .differential)
        }
        if (alignmentPoint != nil) {
            try? container.encode(alignmentPoint, forKey: .alignmentPoint)
        }
        if (explicitBreak != nil) {
            try? container.encode(explicitBreak, forKey: .explicitBreak)
        }
    }

}

