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


/** Represents a chart legend */
public class Legend: Codable {

    public enum Position: String, Codable { 
        case bottom = "Bottom"
        case _left = "Left"
        case _right = "Right"
        case top = "Top"
        case topRight = "TopRight"
    }
    /** position */
    public var position: Position?
    /** the X location */
    public var X: Double?
    /** the Y location */
    public var Y: Double?
    /** Width */
    public var width: Double?
    /** Height */
    public var height: Double?
    /** true if other elements are allowed to overlay the legend */
    public var overlay: Bool?
    /** Get or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Get or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Get or sets the line format. */
    public var lineFormat: LineFormat?
    /** Get or sets value determines the visibility of legend */
    public var hasLegend: Bool?

    private enum CodingKeys: String, CodingKey {
        case position
        case X
        case Y
        case width
        case height
        case overlay
        case fillFormat
        case effectFormat
        case lineFormat
        case hasLegend
    }

    public init(position: Position? = nil, X: Double? = nil, Y: Double? = nil, width: Double? = nil, height: Double? = nil, overlay: Bool? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, hasLegend: Bool? = nil) {
        self.position = position
        self.X = X
        self.Y = Y
        self.width = width
        self.height = height
        self.overlay = overlay
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
        self.hasLegend = hasLegend
    }


}

