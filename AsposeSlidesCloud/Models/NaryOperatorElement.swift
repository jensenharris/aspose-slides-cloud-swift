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
        let _operatorValue = source["_operator"] ?? source["Operator"]
        if _operatorValue != nil {
            self._operator = _operatorValue! as? String
        }
        let limitLocationValue = source["limitLocation"] ?? source["LimitLocation"]
        if limitLocationValue != nil {
            let limitLocationStringValue = limitLocationValue! as? String
            if limitLocationStringValue != nil {
                let limitLocationEnumValue = LimitLocation(rawValue: limitLocationStringValue!)
                if limitLocationEnumValue != nil {
                    self.limitLocation = limitLocationEnumValue!
                }
            }
        }
        let growToMatchOperandHeightValue = source["growToMatchOperandHeight"] ?? source["GrowToMatchOperandHeight"]
        if growToMatchOperandHeightValue != nil {
            self.growToMatchOperandHeight = growToMatchOperandHeightValue! as? Bool
        }
        let hideSubscriptValue = source["hideSubscript"] ?? source["HideSubscript"]
        if hideSubscriptValue != nil {
            self.hideSubscript = hideSubscriptValue! as? Bool
        }
        let hideSuperscriptValue = source["hideSuperscript"] ?? source["HideSuperscript"]
        if hideSuperscriptValue != nil {
            self.hideSuperscript = hideSuperscriptValue! as? Bool
        }
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
        self.type = ModelType.naryOperator
    }

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

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try? values.decode(MathElement.self, forKey: .base)
        _subscript = try? values.decode(MathElement.self, forKey: ._subscript)
        superscript = try? values.decode(MathElement.self, forKey: .superscript)
        _operator = try? values.decode(String.self, forKey: ._operator)
        limitLocation = try? values.decode(LimitLocation.self, forKey: .limitLocation)
        growToMatchOperandHeight = try? values.decode(Bool.self, forKey: .growToMatchOperandHeight)
        hideSubscript = try? values.decode(Bool.self, forKey: .hideSubscript)
        hideSuperscript = try? values.decode(Bool.self, forKey: .hideSuperscript)
        self.type = ModelType.naryOperator
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
        if (superscript != nil) {
            try? container.encode(superscript, forKey: .superscript)
        }
        if (_operator != nil) {
            try? container.encode(_operator, forKey: ._operator)
        }
        if (limitLocation != nil) {
            try? container.encode(limitLocation, forKey: .limitLocation)
        }
        if (growToMatchOperandHeight != nil) {
            try? container.encode(growToMatchOperandHeight, forKey: .growToMatchOperandHeight)
        }
        if (hideSubscript != nil) {
            try? container.encode(hideSubscript, forKey: .hideSubscript)
        }
        if (hideSuperscript != nil) {
            try? container.encode(hideSuperscript, forKey: .hideSuperscript)
        }
    }

}

