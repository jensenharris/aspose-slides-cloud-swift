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


/** Represents fill overlay effect  */
public class FillOverlayEffect: Codable {

    public enum Blend: String, Codable { 
        case darken = "Darken"
        case lighten = "Lighten"
        case multiply = "Multiply"
        case overlay = "Overlay"
        case screen = "Screen"
    }
    /** blend mode */
    public var blend: Blend?

    func fillValues(_ source: [String:Any]) throws {
        let blendValue = source["blend"] ?? source["Blend"]
        if blendValue != nil {
            let blendStringValue = blendValue! as? String
            if blendStringValue != nil {
                let blendEnumValue = Blend(rawValue: blendStringValue!)
                if blendEnumValue != nil {
                    self.blend = blendEnumValue!
                }
            }
        }
    }

    public init(blend: Blend? = nil) {
        self.blend = blend
    }

    private enum CodingKeys: String, CodingKey {
        case blend
    }

}

