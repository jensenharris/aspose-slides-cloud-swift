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


/** Reorder slide task. */
public class ReorderSlide: Task {

    /** Old position. */
    public var oldPosition: Int?
    /** New position. */
    public var newPosition: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let oldPositionValue = source["oldPosition"]
        if oldPositionValue != nil {
            self.oldPosition = oldPositionValue! as? Int
        }
        let newPositionValue = source["newPosition"]
        if newPositionValue != nil {
            self.newPosition = newPositionValue! as? Int
        }
    }

    public init(type: ModelType? = nil, oldPosition: Int? = nil, newPosition: Int? = nil) {
        super.init(type: type)
        self.oldPosition = oldPosition
        self.newPosition = newPosition
        self.type = ModelType.reoderSlide
    }

    private enum CodingKeys: String, CodingKey {
        case oldPosition
        case newPosition
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        oldPosition = try? values.decode(Int.self, forKey: .oldPosition)
        newPosition = try? values.decode(Int.self, forKey: .newPosition)
        self.type = ModelType.reoderSlide
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (oldPosition != nil) {
            try? container.encode(oldPosition, forKey: .oldPosition)
        }
        if (newPosition != nil) {
            try? container.encode(newPosition, forKey: .newPosition)
        }
    }

}

