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


/** An array of elements. */
public class ArrayElement: MathElement {

    public enum BaseJustification: String, Codable { 
        case notDefined = "NotDefined"
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
    }
    public enum RowSpacingRule: String, Codable { 
        case singleLineGap = "SingleLineGap"
        case oneAndAHalfLineGap = "OneAndAHalfLineGap"
        case twoLineGap = "TwoLineGap"
        case exactly = "Exactly"
        case multiple = "Multiple"
    }
    /** Arguments */
    public var arguments: [MathElement]?
    /** Specifies alignment of the array relative to surrounding text */
    public var baseJustification: BaseJustification?
    /** Maximum Distribution */
    public var maximumDistribution: Bool?
    /** Object Distribution */
    public var objectDistribution: Bool?
    /** The type of vertical spacing between array elements */
    public var rowSpacingRule: RowSpacingRule?
    /** Spacing between rows of an array */
    public var rowSpacing: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let argumentsValue = source["arguments"] ?? source["Arguments"]
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
        let baseJustificationValue = source["baseJustification"] ?? source["BaseJustification"]
        if baseJustificationValue != nil {
            let baseJustificationStringValue = baseJustificationValue! as? String
            if baseJustificationStringValue != nil {
                let baseJustificationEnumValue = BaseJustification(rawValue: baseJustificationStringValue!)
                if baseJustificationEnumValue != nil {
                    self.baseJustification = baseJustificationEnumValue!
                }
            }
        }
        let maximumDistributionValue = source["maximumDistribution"] ?? source["MaximumDistribution"]
        if maximumDistributionValue != nil {
            self.maximumDistribution = maximumDistributionValue! as? Bool
        }
        let objectDistributionValue = source["objectDistribution"] ?? source["ObjectDistribution"]
        if objectDistributionValue != nil {
            self.objectDistribution = objectDistributionValue! as? Bool
        }
        let rowSpacingRuleValue = source["rowSpacingRule"] ?? source["RowSpacingRule"]
        if rowSpacingRuleValue != nil {
            let rowSpacingRuleStringValue = rowSpacingRuleValue! as? String
            if rowSpacingRuleStringValue != nil {
                let rowSpacingRuleEnumValue = RowSpacingRule(rawValue: rowSpacingRuleStringValue!)
                if rowSpacingRuleEnumValue != nil {
                    self.rowSpacingRule = rowSpacingRuleEnumValue!
                }
            }
        }
        let rowSpacingValue = source["rowSpacing"] ?? source["RowSpacing"]
        if rowSpacingValue != nil {
            self.rowSpacing = rowSpacingValue! as? Int
        }
    }

    public init(type: ModelType? = nil, arguments: [MathElement]? = nil, baseJustification: BaseJustification? = nil, maximumDistribution: Bool? = nil, objectDistribution: Bool? = nil, rowSpacingRule: RowSpacingRule? = nil, rowSpacing: Int? = nil) {
        super.init(type: type)
        self.arguments = arguments
        self.baseJustification = baseJustification
        self.maximumDistribution = maximumDistribution
        self.objectDistribution = objectDistribution
        self.rowSpacingRule = rowSpacingRule
        self.rowSpacing = rowSpacing
        self.type = ModelType.array
    }

    private enum CodingKeys: String, CodingKey {
        case arguments
        case baseJustification
        case maximumDistribution
        case objectDistribution
        case rowSpacingRule
        case rowSpacing
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        arguments = try? values.decode([MathElement].self, forKey: .arguments)
        baseJustification = try? values.decode(BaseJustification.self, forKey: .baseJustification)
        maximumDistribution = try? values.decode(Bool.self, forKey: .maximumDistribution)
        objectDistribution = try? values.decode(Bool.self, forKey: .objectDistribution)
        rowSpacingRule = try? values.decode(RowSpacingRule.self, forKey: .rowSpacingRule)
        rowSpacing = try? values.decode(Int.self, forKey: .rowSpacing)
        self.type = ModelType.array
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (arguments != nil) {
            try? container.encode(arguments, forKey: .arguments)
        }
        if (baseJustification != nil) {
            try? container.encode(baseJustification, forKey: .baseJustification)
        }
        if (maximumDistribution != nil) {
            try? container.encode(maximumDistribution, forKey: .maximumDistribution)
        }
        if (objectDistribution != nil) {
            try? container.encode(objectDistribution, forKey: .objectDistribution)
        }
        if (rowSpacingRule != nil) {
            try? container.encode(rowSpacingRule, forKey: .rowSpacingRule)
        }
        if (rowSpacing != nil) {
            try? container.encode(rowSpacing, forKey: .rowSpacing)
        }
    }

}

