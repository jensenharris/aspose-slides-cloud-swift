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


/** Represents placeholder */
public class Placeholder: ResourceBase {

    public enum Orientation: String, Codable { 
        case horizontal = "Horizontal"
        case vertical = "Vertical"
    }
    public enum Size: String, Codable { 
        case full = "Full"
        case half = "Half"
        case quarter = "Quarter"
    }
    public enum ModelType: String, Codable { 
        case title = "Title"
        case body = "Body"
        case centeredTitle = "CenteredTitle"
        case subtitle = "Subtitle"
        case dateAndTime = "DateAndTime"
        case slideNumber = "SlideNumber"
        case footer = "Footer"
        case header = "Header"
        case object = "Object"
        case chart = "Chart"
        case table = "Table"
        case clipArt = "ClipArt"
        case diagram = "Diagram"
        case media = "Media"
        case slideImage = "SlideImage"
        case picture = "Picture"
    }
    /** Index. */
    public var index: Int?
    /** Orientation. */
    public var orientation: Orientation?
    /** Size. */
    public var size: Size?
    /** Placeholder type. */
    public var type: ModelType?
    /** Shape link. */
    public var shape: ResourceUri?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let indexValue = source["index"] ?? source["Index"]
        if indexValue != nil {
            self.index = indexValue! as? Int
        }
        let orientationValue = source["orientation"] ?? source["Orientation"]
        if orientationValue != nil {
            let orientationStringValue = orientationValue! as? String
            if orientationStringValue != nil {
                let orientationEnumValue = Orientation(rawValue: orientationStringValue!)
                if orientationEnumValue != nil {
                    self.orientation = orientationEnumValue!
                }
            }
        }
        let sizeValue = source["size"] ?? source["Size"]
        if sizeValue != nil {
            let sizeStringValue = sizeValue! as? String
            if sizeStringValue != nil {
                let sizeEnumValue = Size(rawValue: sizeStringValue!)
                if sizeEnumValue != nil {
                    self.size = sizeEnumValue!
                }
            }
        }
        let typeValue = source["type"] ?? source["Type"]
        if typeValue != nil {
            let typeStringValue = typeValue! as? String
            if typeStringValue != nil {
                let typeEnumValue = ModelType(rawValue: typeStringValue!)
                if typeEnumValue != nil {
                    self.type = typeEnumValue!
                }
            }
        }
        let shapeValue = source["shape"] ?? source["Shape"]
        if shapeValue != nil {
            let shapeDictionaryValue = shapeValue! as? [String:Any]
            if shapeDictionaryValue != nil {
                let (shapeInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, shapeDictionaryValue!)
                if error == nil && shapeInstance != nil {
                    self.shape = shapeInstance! as? ResourceUri
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, index: Int? = nil, orientation: Orientation? = nil, size: Size? = nil, type: ModelType? = nil, shape: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.index = index
        self.orientation = orientation
        self.size = size
        self.type = type
        self.shape = shape
    }

    private enum CodingKeys: String, CodingKey {
        case index
        case orientation
        case size
        case type
        case shape
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        index = try? values.decode(Int.self, forKey: .index)
        orientation = try? values.decode(Orientation.self, forKey: .orientation)
        size = try? values.decode(Size.self, forKey: .size)
        type = try? values.decode(ModelType.self, forKey: .type)
        shape = try? values.decode(ResourceUri.self, forKey: .shape)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (index != nil) {
            try? container.encode(index, forKey: .index)
        }
        if (orientation != nil) {
            try? container.encode(orientation, forKey: .orientation)
        }
        if (size != nil) {
            try? container.encode(size, forKey: .size)
        }
        if (type != nil) {
            try? container.encode(type, forKey: .type)
        }
        if (shape != nil) {
            try? container.encode(shape, forKey: .shape)
        }
    }

}

