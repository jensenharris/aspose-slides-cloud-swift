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


/** Delimiter element */
public class DelimiterElement: MathElement {

    public enum DelimiterShape: String, Codable { 
        case centered = "Centered"
        case match = "Match"
    }
    /** Arguments */
    public var arguments: [MathElement]?
    /** Beginning character */
    public var beginningCharacter: String?
    /** Separator character */
    public var separatorCharacter: String?
    /** Ending character */
    public var endingCharacter: String?
    /** Grow to match operand height */
    public var growToMatchOperandHeight: Bool?
    /** Delimiter shape */
    public var delimiterShape: DelimiterShape?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let argumentsValue = source["arguments"]
        if argumentsValue != nil {
            var argumentsArray: [MathElement] = []
            let argumentsDictionaryValue = argumentsValue! as? [Any]
            if argumentsDictionaryValue != nil {
                argumentsDictionaryValue!.forEach { argumentsAnyItem in
                    let argumentsItem = argumentsAnyItem as? [String:Any]
                    var added = false
                    if argumentsItem != nil {
                        let (argumentsInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, argumentsItem!)
                        if error == nil && argumentsInstance != nil {
                            let argumentsArrayItem = argumentsInstance! as? MathElement
                            if argumentsArrayItem != nil {
                                argumentsArray.append(argumentsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        argumentsArray.append(MathElement())
                    }
                }
            }
            self.arguments = argumentsArray
        }
        let beginningCharacterValue = source["beginningCharacter"]
        if beginningCharacterValue != nil {
            self.beginningCharacter = beginningCharacterValue! as? String
        }
        let separatorCharacterValue = source["separatorCharacter"]
        if separatorCharacterValue != nil {
            self.separatorCharacter = separatorCharacterValue! as? String
        }
        let endingCharacterValue = source["endingCharacter"]
        if endingCharacterValue != nil {
            self.endingCharacter = endingCharacterValue! as? String
        }
        let growToMatchOperandHeightValue = source["growToMatchOperandHeight"]
        if growToMatchOperandHeightValue != nil {
            self.growToMatchOperandHeight = growToMatchOperandHeightValue! as? Bool
        }
        let delimiterShapeValue = source["delimiterShape"]
        if delimiterShapeValue != nil {
            let delimiterShapeStringValue = delimiterShapeValue! as? String
            if delimiterShapeStringValue != nil {
                let delimiterShapeEnumValue = DelimiterShape(rawValue: delimiterShapeStringValue!)
                if delimiterShapeEnumValue != nil {
                    self.delimiterShape = delimiterShapeEnumValue!
                }
            }
        }
    }

    public init(type: ModelType? = nil, arguments: [MathElement]? = nil, beginningCharacter: String? = nil, separatorCharacter: String? = nil, endingCharacter: String? = nil, growToMatchOperandHeight: Bool? = nil, delimiterShape: DelimiterShape? = nil) {
        super.init(type: type)
        self.arguments = arguments
        self.beginningCharacter = beginningCharacter
        self.separatorCharacter = separatorCharacter
        self.endingCharacter = endingCharacter
        self.growToMatchOperandHeight = growToMatchOperandHeight
        self.delimiterShape = delimiterShape
        self.type = ModelType.delimiter
    }

    private enum CodingKeys: String, CodingKey {
        case arguments
        case beginningCharacter
        case separatorCharacter
        case endingCharacter
        case growToMatchOperandHeight
        case delimiterShape
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        arguments = try? values.decode([MathElement].self, forKey: .arguments)
        beginningCharacter = try? values.decode(String.self, forKey: .beginningCharacter)
        separatorCharacter = try? values.decode(String.self, forKey: .separatorCharacter)
        endingCharacter = try? values.decode(String.self, forKey: .endingCharacter)
        growToMatchOperandHeight = try? values.decode(Bool.self, forKey: .growToMatchOperandHeight)
        delimiterShape = try? values.decode(DelimiterShape.self, forKey: .delimiterShape)
        self.type = ModelType.delimiter
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (arguments != nil) {
            try? container.encode(arguments, forKey: .arguments)
        }
        if (beginningCharacter != nil) {
            try? container.encode(beginningCharacter, forKey: .beginningCharacter)
        }
        if (separatorCharacter != nil) {
            try? container.encode(separatorCharacter, forKey: .separatorCharacter)
        }
        if (endingCharacter != nil) {
            try? container.encode(endingCharacter, forKey: .endingCharacter)
        }
        if (growToMatchOperandHeight != nil) {
            try? container.encode(growToMatchOperandHeight, forKey: .growToMatchOperandHeight)
        }
        if (delimiterShape != nil) {
            try? container.encode(delimiterShape, forKey: .delimiterShape)
        }
    }

}

