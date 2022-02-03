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


/** Specifies an N-ary mathematical object, such as Summation and Integral. */
public class NaryOperatorElement: MathElement {

    public enum LimitLocation: String, Codable { 
        case notDefined = "NotDefined"
        case underOver = "UnderOver"
        case subscriptSuperscript = "SubscriptSuperscript"
    }
    /** Base argument */
    public var base: MathElement?
    /** Subscript argument */
    public var _subscript: MathElement?
    /** Superscript argument */
    public var superscript: MathElement?
    /** Nary Operator Character */
    public var _operator: String?
    /** The location of limits (subscript and superscript) */
    public var limitLocation: LimitLocation?
    /** Operator Character grows vertically to match its operand height */
    public var growToMatchOperandHeight: Bool?
    /** Hide Subscript */
    public var hideSubscript: Bool?
    /** Hide Superscript */
    public var hideSuperscript: Bool?

    private enum CodingKeys: String, CodingKey {
        case base
        case _subscript
        case superscript
        case _operator
        case limitLocation
        case growToMatchOperandHeight
        case hideSubscript
        case hideSuperscript
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, _subscript: MathElement? = nil, superscript: MathElement? = nil, _operator: String? = nil, limitLocation: LimitLocation? = nil, growToMatchOperandHeight: Bool? = nil, hideSubscript: Bool? = nil, hideSuperscript: Bool? = nil) {
        super.init(type: type)
        self.base = base
        self._subscript = _subscript
        self.superscript = superscript
        self._operator = _operator
        self.limitLocation = limitLocation
        self.growToMatchOperandHeight = growToMatchOperandHeight
        self.hideSubscript = hideSubscript
        self.hideSuperscript = hideSuperscript
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try values.decode(MathElement?.self, forKey: .base)
        _subscript = try values.decode(MathElement?.self, forKey: ._subscript)
        superscript = try values.decode(MathElement?.self, forKey: .superscript)
        _operator = try values.decode(String?.self, forKey: ._operator)
        limitLocation = try values.decode(LimitLocation?.self, forKey: .limitLocation)
        growToMatchOperandHeight = try values.decode(Bool?.self, forKey: .growToMatchOperandHeight)
        hideSubscript = try values.decode(Bool?.self, forKey: .hideSubscript)
        hideSuperscript = try values.decode(Bool?.self, forKey: .hideSuperscript)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(base, forKey: .base)
        try container.encode(_subscript, forKey: ._subscript)
        try container.encode(superscript, forKey: .superscript)
        try container.encode(_operator, forKey: ._operator)
        try container.encode(limitLocation, forKey: .limitLocation)
        try container.encode(growToMatchOperandHeight, forKey: .growToMatchOperandHeight)
        try container.encode(hideSubscript, forKey: .hideSubscript)
        try container.encode(hideSuperscript, forKey: .hideSuperscript)
    }


}

