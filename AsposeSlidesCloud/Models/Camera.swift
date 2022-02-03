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


/** Camera */
public class Camera: Codable {

    public enum CameraType: String, Codable { 
        case isometricBottomDown = "IsometricBottomDown"
        case isometricBottomUp = "IsometricBottomUp"
        case isometricLeftDown = "IsometricLeftDown"
        case isometricLeftUp = "IsometricLeftUp"
        case isometricOffAxis1Left = "IsometricOffAxis1Left"
        case isometricOffAxis1Right = "IsometricOffAxis1Right"
        case isometricOffAxis1Top = "IsometricOffAxis1Top"
        case isometricOffAxis2Left = "IsometricOffAxis2Left"
        case isometricOffAxis2Right = "IsometricOffAxis2Right"
        case isometricOffAxis2Top = "IsometricOffAxis2Top"
        case isometricOffAxis3Bottom = "IsometricOffAxis3Bottom"
        case isometricOffAxis3Left = "IsometricOffAxis3Left"
        case isometricOffAxis3Right = "IsometricOffAxis3Right"
        case isometricOffAxis4Bottom = "IsometricOffAxis4Bottom"
        case isometricOffAxis4Left = "IsometricOffAxis4Left"
        case isometricOffAxis4Right = "IsometricOffAxis4Right"
        case isometricRightDown = "IsometricRightDown"
        case isometricRightUp = "IsometricRightUp"
        case isometricTopDown = "IsometricTopDown"
        case isometricTopUp = "IsometricTopUp"
        case legacyObliqueBottom = "LegacyObliqueBottom"
        case legacyObliqueBottomLeft = "LegacyObliqueBottomLeft"
        case legacyObliqueBottomRight = "LegacyObliqueBottomRight"
        case legacyObliqueFront = "LegacyObliqueFront"
        case legacyObliqueLeft = "LegacyObliqueLeft"
        case legacyObliqueRight = "LegacyObliqueRight"
        case legacyObliqueTop = "LegacyObliqueTop"
        case legacyObliqueTopLeft = "LegacyObliqueTopLeft"
        case legacyObliqueTopRight = "LegacyObliqueTopRight"
        case legacyPerspectiveBottom = "LegacyPerspectiveBottom"
        case legacyPerspectiveBottomLeft = "LegacyPerspectiveBottomLeft"
        case legacyPerspectiveBottomRight = "LegacyPerspectiveBottomRight"
        case legacyPerspectiveFront = "LegacyPerspectiveFront"
        case legacyPerspectiveLeft = "LegacyPerspectiveLeft"
        case legacyPerspectiveRight = "LegacyPerspectiveRight"
        case legacyPerspectiveTop = "LegacyPerspectiveTop"
        case legacyPerspectiveTopLeft = "LegacyPerspectiveTopLeft"
        case legacyPerspectiveTopRight = "LegacyPerspectiveTopRight"
        case obliqueBottom = "ObliqueBottom"
        case obliqueBottomLeft = "ObliqueBottomLeft"
        case obliqueBottomRight = "ObliqueBottomRight"
        case obliqueLeft = "ObliqueLeft"
        case obliqueRight = "ObliqueRight"
        case obliqueTop = "ObliqueTop"
        case obliqueTopLeft = "ObliqueTopLeft"
        case obliqueTopRight = "ObliqueTopRight"
        case orthographicFront = "OrthographicFront"
        case perspectiveAbove = "PerspectiveAbove"
        case perspectiveAboveLeftFacing = "PerspectiveAboveLeftFacing"
        case perspectiveAboveRightFacing = "PerspectiveAboveRightFacing"
        case perspectiveBelow = "PerspectiveBelow"
        case perspectiveContrastingLeftFacing = "PerspectiveContrastingLeftFacing"
        case perspectiveContrastingRightFacing = "PerspectiveContrastingRightFacing"
        case perspectiveFront = "PerspectiveFront"
        case perspectiveHeroicExtremeLeftFacing = "PerspectiveHeroicExtremeLeftFacing"
        case perspectiveHeroicExtremeRightFacing = "PerspectiveHeroicExtremeRightFacing"
        case perspectiveHeroicLeftFacing = "PerspectiveHeroicLeftFacing"
        case perspectiveHeroicRightFacing = "PerspectiveHeroicRightFacing"
        case perspectiveLeft = "PerspectiveLeft"
        case perspectiveRelaxed = "PerspectiveRelaxed"
        case perspectiveRelaxedModerately = "PerspectiveRelaxedModerately"
        case perspectiveRight = "PerspectiveRight"
        case notDefined = "NotDefined"
    }
    /** Camera type */
    public var cameraType: CameraType?
    /** Camera FOV */
    public var fieldOfViewAngle: Double?
    /** Camera zoom */
    public var zoom: Double?
    /** XRotation */
    public var xRotation: Double?
    /** YRotation */
    public var yRotation: Double?
    /** ZRotation */
    public var zRotation: Double?

    private enum CodingKeys: String, CodingKey {
        case cameraType
        case fieldOfViewAngle
        case zoom
        case xRotation
        case yRotation
        case zRotation
    }

    public init(cameraType: CameraType? = nil, fieldOfViewAngle: Double? = nil, zoom: Double? = nil, xRotation: Double? = nil, yRotation: Double? = nil, zRotation: Double? = nil) {
        self.cameraType = cameraType
        self.fieldOfViewAngle = fieldOfViewAngle
        self.zoom = zoom
        self.xRotation = xRotation
        self.yRotation = yRotation
        self.zRotation = zRotation
    }


}

