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


/** Represents Connector resource. */
public class Connector: GeometryShape {

    /** Start shape link. */
    public var startShapeConnectedTo: ResourceUri?
    /** Start shape index. */
    public var startShapeConnectedToIndex: Int?
    /** End shape link. */
    public var endShapeConnectedTo: ResourceUri?
    /** End shape index. */
    public var endShapeConnectedToIndex: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let startShapeConnectedToValue = source["startShapeConnectedTo"] ?? source["StartShapeConnectedTo"]
        if startShapeConnectedToValue != nil {
            let startShapeConnectedToDictionaryValue = startShapeConnectedToValue! as? [String:Any]
            if startShapeConnectedToDictionaryValue != nil {
                let (startShapeConnectedToInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, startShapeConnectedToDictionaryValue!)
                if error == nil && startShapeConnectedToInstance != nil {
                    self.startShapeConnectedTo = startShapeConnectedToInstance! as? ResourceUri
                }
            }
        }
        let startShapeConnectedToIndexValue = source["startShapeConnectedToIndex"] ?? source["StartShapeConnectedToIndex"]
        if startShapeConnectedToIndexValue != nil {
            self.startShapeConnectedToIndex = startShapeConnectedToIndexValue! as? Int
        }
        let endShapeConnectedToValue = source["endShapeConnectedTo"] ?? source["EndShapeConnectedTo"]
        if endShapeConnectedToValue != nil {
            let endShapeConnectedToDictionaryValue = endShapeConnectedToValue! as? [String:Any]
            if endShapeConnectedToDictionaryValue != nil {
                let (endShapeConnectedToInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, endShapeConnectedToDictionaryValue!)
                if error == nil && endShapeConnectedToInstance != nil {
                    self.endShapeConnectedTo = endShapeConnectedToInstance! as? ResourceUri
                }
            }
        }
        let endShapeConnectedToIndexValue = source["endShapeConnectedToIndex"] ?? source["EndShapeConnectedToIndex"]
        if endShapeConnectedToIndexValue != nil {
            self.endShapeConnectedToIndex = endShapeConnectedToIndexValue! as? Int
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, startShapeConnectedTo: ResourceUri? = nil, startShapeConnectedToIndex: Int? = nil, endShapeConnectedTo: ResourceUri? = nil, endShapeConnectedToIndex: Int? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, shapeType: shapeType)
        self.startShapeConnectedTo = startShapeConnectedTo
        self.startShapeConnectedToIndex = startShapeConnectedToIndex
        self.endShapeConnectedTo = endShapeConnectedTo
        self.endShapeConnectedToIndex = endShapeConnectedToIndex
        self.type = ModelType.connector
    }

    private enum CodingKeys: String, CodingKey {
        case startShapeConnectedTo
        case startShapeConnectedToIndex
        case endShapeConnectedTo
        case endShapeConnectedToIndex
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        startShapeConnectedTo = try? values.decode(ResourceUri.self, forKey: .startShapeConnectedTo)
        startShapeConnectedToIndex = try? values.decode(Int.self, forKey: .startShapeConnectedToIndex)
        endShapeConnectedTo = try? values.decode(ResourceUri.self, forKey: .endShapeConnectedTo)
        endShapeConnectedToIndex = try? values.decode(Int.self, forKey: .endShapeConnectedToIndex)
        self.type = ModelType.connector
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (startShapeConnectedTo != nil) {
            try? container.encode(startShapeConnectedTo, forKey: .startShapeConnectedTo)
        }
        if (startShapeConnectedToIndex != nil) {
            try? container.encode(startShapeConnectedToIndex, forKey: .startShapeConnectedToIndex)
        }
        if (endShapeConnectedTo != nil) {
            try? container.encode(endShapeConnectedTo, forKey: .endShapeConnectedTo)
        }
        if (endShapeConnectedToIndex != nil) {
            try? container.encode(endShapeConnectedToIndex, forKey: .endShapeConnectedToIndex)
        }
    }

}

