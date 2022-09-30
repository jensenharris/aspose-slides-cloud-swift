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


/** Add shape task. */
public class AddShape: Task {

    /** Shape DTO. */
    public var shape: ShapeBase?
    /** Shape path for a grouped shape or smart art shape. */
    public var shapePath: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let shapeValue = source["shape"] ?? source["Shape"]
        if shapeValue != nil {
            let shapeDictionaryValue = shapeValue! as? [String:Any]
            if shapeDictionaryValue != nil {
                let (shapeInstance, error) = ClassRegistry.getClassFromDictionary(ShapeBase.self, shapeDictionaryValue!)
                if error == nil && shapeInstance != nil {
                    self.shape = shapeInstance! as? ShapeBase
                }
            }
        }
        let shapePathValue = source["shapePath"] ?? source["ShapePath"]
        if shapePathValue != nil {
            self.shapePath = shapePathValue! as? String
        }
    }

    public init(type: ModelType? = nil, shape: ShapeBase? = nil, shapePath: String? = nil) {
        super.init(type: type)
        self.shape = shape
        self.shapePath = shapePath
        self.type = ModelType.addShape
    }

    private enum CodingKeys: String, CodingKey {
        case shape
        case shapePath
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        shape = try? values.decode(ShapeBase.self, forKey: .shape)
        shapePath = try? values.decode(String.self, forKey: .shapePath)
        self.type = ModelType.addShape
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (shape != nil) {
            try? container.encode(shape, forKey: .shape)
        }
        if (shapePath != nil) {
            try? container.encode(shapePath, forKey: .shapePath)
        }
    }

}

