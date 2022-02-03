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

    private enum CodingKeys: String, CodingKey {
        case startShapeConnectedTo
        case startShapeConnectedToIndex
        case endShapeConnectedTo
        case endShapeConnectedToIndex
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, shapes: ResourceUri? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, startShapeConnectedTo: ResourceUri? = nil, startShapeConnectedToIndex: Int? = nil, endShapeConnectedTo: ResourceUri? = nil, endShapeConnectedToIndex: Int? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, shapes: shapes, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, shapeType: shapeType)
        self.startShapeConnectedTo = startShapeConnectedTo
        self.startShapeConnectedToIndex = startShapeConnectedToIndex
        self.endShapeConnectedTo = endShapeConnectedTo
        self.endShapeConnectedToIndex = endShapeConnectedToIndex
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        startShapeConnectedTo = try values.decode(ResourceUri?.self, forKey: .startShapeConnectedTo)
        startShapeConnectedToIndex = try values.decode(Int?.self, forKey: .startShapeConnectedToIndex)
        endShapeConnectedTo = try values.decode(ResourceUri?.self, forKey: .endShapeConnectedTo)
        endShapeConnectedToIndex = try values.decode(Int?.self, forKey: .endShapeConnectedToIndex)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(startShapeConnectedTo, forKey: .startShapeConnectedTo)
        try container.encode(startShapeConnectedToIndex, forKey: .startShapeConnectedToIndex)
        try container.encode(endShapeConnectedTo, forKey: .endShapeConnectedTo)
        try container.encode(endShapeConnectedToIndex, forKey: .endShapeConnectedToIndex)
    }


}

