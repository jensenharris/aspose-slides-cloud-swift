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


/** Represents reflection effect  */
public class ReflectionEffect: Codable {

    public enum RectangleAlign: String, Codable { 
        case topLeft = "TopLeft"
        case top = "Top"
        case topRight = "TopRight"
        case _left = "Left"
        case center = "Center"
        case _right = "Right"
        case bottomLeft = "BottomLeft"
        case bottom = "Bottom"
        case bottomRight = "BottomRight"
        case notDefined = "NotDefined"
    }
    /** direction */
    public var direction: Double?
    /** fade direction */
    public var fadeDirection: Double?
    /** distance */
    public var distance: Double?
    /** blur radius */
    public var blurRadius: Double?
    /** scale horizontal */
    public var scaleHorizontal: Double?
    /** scale vertical */
    public var scaleVertical: Double?
    /** skew horizontal */
    public var skewHorizontal: Double?
    /** skew vertical */
    public var skewVertical: Double?
    /** start pos alpha */
    public var startPosAlpha: Double?
    /** end pos alpha */
    public var endPosAlpha: Double?
    /** start reflection opacity */
    public var startReflectionOpacity: Double?
    /** end reflection opacity */
    public var endReflectionOpacity: Double?
    /** rectangle alignment */
    public var rectangleAlign: RectangleAlign?
    /** true if the reflection should rotate with the shape when the shape is rotated */
    public var rotateShadowWithShape: Bool?

    func fillValues(_ source: [String:Any]) throws {
        let directionValue = source["direction"]
        if directionValue != nil {
            self.direction = directionValue! as? Double
        }
        let fadeDirectionValue = source["fadeDirection"]
        if fadeDirectionValue != nil {
            self.fadeDirection = fadeDirectionValue! as? Double
        }
        let distanceValue = source["distance"]
        if distanceValue != nil {
            self.distance = distanceValue! as? Double
        }
        let blurRadiusValue = source["blurRadius"]
        if blurRadiusValue != nil {
            self.blurRadius = blurRadiusValue! as? Double
        }
        let scaleHorizontalValue = source["scaleHorizontal"]
        if scaleHorizontalValue != nil {
            self.scaleHorizontal = scaleHorizontalValue! as? Double
        }
        let scaleVerticalValue = source["scaleVertical"]
        if scaleVerticalValue != nil {
            self.scaleVertical = scaleVerticalValue! as? Double
        }
        let skewHorizontalValue = source["skewHorizontal"]
        if skewHorizontalValue != nil {
            self.skewHorizontal = skewHorizontalValue! as? Double
        }
        let skewVerticalValue = source["skewVertical"]
        if skewVerticalValue != nil {
            self.skewVertical = skewVerticalValue! as? Double
        }
        let startPosAlphaValue = source["startPosAlpha"]
        if startPosAlphaValue != nil {
            self.startPosAlpha = startPosAlphaValue! as? Double
        }
        let endPosAlphaValue = source["endPosAlpha"]
        if endPosAlphaValue != nil {
            self.endPosAlpha = endPosAlphaValue! as? Double
        }
        let startReflectionOpacityValue = source["startReflectionOpacity"]
        if startReflectionOpacityValue != nil {
            self.startReflectionOpacity = startReflectionOpacityValue! as? Double
        }
        let endReflectionOpacityValue = source["endReflectionOpacity"]
        if endReflectionOpacityValue != nil {
            self.endReflectionOpacity = endReflectionOpacityValue! as? Double
        }
        let rectangleAlignValue = source["rectangleAlign"]
        if rectangleAlignValue != nil {
            let rectangleAlignStringValue = rectangleAlignValue! as? String
            if rectangleAlignStringValue != nil {
                let rectangleAlignEnumValue = RectangleAlign(rawValue: rectangleAlignStringValue!)
                if rectangleAlignEnumValue != nil {
                    self.rectangleAlign = rectangleAlignEnumValue!
                }
            }
        }
        let rotateShadowWithShapeValue = source["rotateShadowWithShape"]
        if rotateShadowWithShapeValue != nil {
            self.rotateShadowWithShape = rotateShadowWithShapeValue! as? Bool
        }
    }

    public init(direction: Double? = nil, fadeDirection: Double? = nil, distance: Double? = nil, blurRadius: Double? = nil, scaleHorizontal: Double? = nil, scaleVertical: Double? = nil, skewHorizontal: Double? = nil, skewVertical: Double? = nil, startPosAlpha: Double? = nil, endPosAlpha: Double? = nil, startReflectionOpacity: Double? = nil, endReflectionOpacity: Double? = nil, rectangleAlign: RectangleAlign? = nil, rotateShadowWithShape: Bool? = nil) {
        self.direction = direction
        self.fadeDirection = fadeDirection
        self.distance = distance
        self.blurRadius = blurRadius
        self.scaleHorizontal = scaleHorizontal
        self.scaleVertical = scaleVertical
        self.skewHorizontal = skewHorizontal
        self.skewVertical = skewVertical
        self.startPosAlpha = startPosAlpha
        self.endPosAlpha = endPosAlpha
        self.startReflectionOpacity = startReflectionOpacity
        self.endReflectionOpacity = endReflectionOpacity
        self.rectangleAlign = rectangleAlign
        self.rotateShadowWithShape = rotateShadowWithShape
    }

    private enum CodingKeys: String, CodingKey {
        case direction
        case fadeDirection
        case distance
        case blurRadius
        case scaleHorizontal
        case scaleVertical
        case skewHorizontal
        case skewVertical
        case startPosAlpha
        case endPosAlpha
        case startReflectionOpacity
        case endReflectionOpacity
        case rectangleAlign
        case rotateShadowWithShape
    }

}

