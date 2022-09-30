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


/** Represents text bounds within a paragraph or portion. */
public class TextBounds: Codable {

    /** X coordinate of the text bounds. */
    public var X: Double?
    /** X coordinate of the text bounds.              */
    public var Y: Double?
    /** Width of the text bounds. */
    public var width: Double?
    /** Height of the text bounds. */
    public var height: Double?

    func fillValues(_ source: [String:Any]) throws {
        let XValue = source["X"] ?? source["X"]
        if XValue != nil {
            self.X = XValue! as? Double
        }
        let YValue = source["Y"] ?? source["Y"]
        if YValue != nil {
            self.Y = YValue! as? Double
        }
        let widthValue = source["width"] ?? source["Width"]
        if widthValue != nil {
            self.width = widthValue! as? Double
        }
        let heightValue = source["height"] ?? source["Height"]
        if heightValue != nil {
            self.height = heightValue! as? Double
        }
    }

    public init(X: Double? = nil, Y: Double? = nil, width: Double? = nil, height: Double? = nil) {
        self.X = X
        self.Y = Y
        self.width = width
        self.height = height
    }

    private enum CodingKeys: String, CodingKey {
        case X
        case Y
        case width
        case height
    }

}

