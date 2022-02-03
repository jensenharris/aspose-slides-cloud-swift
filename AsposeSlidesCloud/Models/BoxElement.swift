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

    private enum CodingKeys: String, CodingKey {
        case base
        case operatorEmulator
        case noBreak
        case differential
        case alignmentPoint
        case explicitBreak
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, operatorEmulator: Bool? = nil, noBreak: Bool? = nil, differential: Bool? = nil, alignmentPoint: Bool? = nil, explicitBreak: Int? = nil) {
        super.init(type: type)
        self.base = base
        self.operatorEmulator = operatorEmulator
        self.noBreak = noBreak
        self.differential = differential
        self.alignmentPoint = alignmentPoint
        self.explicitBreak = explicitBreak
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try values.decode(MathElement?.self, forKey: .base)
        operatorEmulator = try values.decode(Bool?.self, forKey: .operatorEmulator)
        noBreak = try values.decode(Bool?.self, forKey: .noBreak)
        differential = try values.decode(Bool?.self, forKey: .differential)
        alignmentPoint = try values.decode(Bool?.self, forKey: .alignmentPoint)
        explicitBreak = try values.decode(Int?.self, forKey: .explicitBreak)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(base, forKey: .base)
        try container.encode(operatorEmulator, forKey: .operatorEmulator)
        try container.encode(noBreak, forKey: .noBreak)
        try container.encode(differential, forKey: .differential)
        try container.encode(alignmentPoint, forKey: .alignmentPoint)
        try container.encode(explicitBreak, forKey: .explicitBreak)
    }


}

