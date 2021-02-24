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


/** Line format. */
public class LineFormat: Codable {

    public enum Alignment: String, Codable { 
        case center = "Center"
        case inset = "Inset"
        case notDefined = "NotDefined"
    }
    public enum CapStyle: String, Codable { 
        case round = "Round"
        case square = "Square"
        case flat = "Flat"
        case notDefined = "NotDefined"
    }
    public enum DashStyle: String, Codable { 
        case solid = "Solid"
        case dot = "Dot"
        case dash = "Dash"
        case largeDash = "LargeDash"
        case dashDot = "DashDot"
        case largeDashDot = "LargeDashDot"
        case largeDashDotDot = "LargeDashDotDot"
        case systemDash = "SystemDash"
        case systemDot = "SystemDot"
        case systemDashDot = "SystemDashDot"
        case systemDashDotDot = "SystemDashDotDot"
        case custom = "Custom"
        case notDefined = "NotDefined"
    }
    public enum JoinStyle: String, Codable { 
        case round = "Round"
        case bevel = "Bevel"
        case miter = "Miter"
        case notDefined = "NotDefined"
    }
    public enum Style: String, Codable { 
        case single = "Single"
        case thinThin = "ThinThin"
        case thinThick = "ThinThick"
        case thickThin = "ThickThin"
        case thickBetweenThin = "ThickBetweenThin"
        case notDefined = "NotDefined"
    }
    public enum SketchType: String, Codable { 
        case _none = "None"
        case curved = "Curved"
        case freehand = "Freehand"
        case scribble = "Scribble"
        case notDefined = "NotDefined"
    }
    /** Alignment. */
    public var alignment: Alignment?
    /** Cap style. */
    public var capStyle: CapStyle?
    /** Dash style. */
    public var dashStyle: DashStyle?
    /** Join style. */
    public var joinStyle: JoinStyle?
    /** Style. */
    public var style: Style?
    /** Sketch type. */
    public var sketchType: SketchType?
    /** Begin arrowhead. */
    public var beginArrowHead: ArrowHeadProperties?
    /** End arrowhead. */
    public var endArrowHead: ArrowHeadProperties?
    /** Custom dash pattern. */
    public var customDashPattern: CustomDashPattern?
    /** Fill format. */
    public var fillFormat: FillFormat?
    /** Miter limit. */
    public var miterLimit: Double?
    /** Width. */
    public var width: Double?

    private enum CodingKeys: String, CodingKey {
        case alignment
        case capStyle
        case dashStyle
        case joinStyle
        case style
        case sketchType
        case beginArrowHead
        case endArrowHead
        case customDashPattern
        case fillFormat
        case miterLimit
        case width
    }

    public init(alignment: Alignment? = nil, capStyle: CapStyle? = nil, dashStyle: DashStyle? = nil, joinStyle: JoinStyle? = nil, style: Style? = nil, sketchType: SketchType? = nil, beginArrowHead: ArrowHeadProperties? = nil, endArrowHead: ArrowHeadProperties? = nil, customDashPattern: CustomDashPattern? = nil, fillFormat: FillFormat? = nil, miterLimit: Double? = nil, width: Double? = nil) {
        self.alignment = alignment
        self.capStyle = capStyle
        self.dashStyle = dashStyle
        self.joinStyle = joinStyle
        self.style = style
        self.sketchType = sketchType
        self.beginArrowHead = beginArrowHead
        self.endArrowHead = endArrowHead
        self.customDashPattern = customDashPattern
        self.fillFormat = fillFormat
        self.miterLimit = miterLimit
        self.width = width
    }


}

