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


/** Light rig */
public class LightRig: Codable {

    public enum Direction: String, Codable { 
        case topLeft = "TopLeft"
        case top = "Top"
        case topRight = "TopRight"
        case _right = "Right"
        case bottomRight = "BottomRight"
        case bottom = "Bottom"
        case bottomLeft = "BottomLeft"
        case _left = "Left"
        case notDefined = "NotDefined"
    }
    public enum LightType: String, Codable { 
        case balanced = "Balanced"
        case brightRoom = "BrightRoom"
        case chilly = "Chilly"
        case contrasting = "Contrasting"
        case flat = "Flat"
        case flood = "Flood"
        case freezing = "Freezing"
        case glow = "Glow"
        case harsh = "Harsh"
        case legacyFlat1 = "LegacyFlat1"
        case legacyFlat2 = "LegacyFlat2"
        case legacyFlat3 = "LegacyFlat3"
        case legacyFlat4 = "LegacyFlat4"
        case legacyHarsh1 = "LegacyHarsh1"
        case legacyHarsh2 = "LegacyHarsh2"
        case legacyHarsh3 = "LegacyHarsh3"
        case legacyHarsh4 = "LegacyHarsh4"
        case legacyNormal1 = "LegacyNormal1"
        case legacyNormal2 = "LegacyNormal2"
        case legacyNormal3 = "LegacyNormal3"
        case legacyNormal4 = "LegacyNormal4"
        case morning = "Morning"
        case soft = "Soft"
        case sunrise = "Sunrise"
        case sunset = "Sunset"
        case threePt = "ThreePt"
        case twoPt = "TwoPt"
        case notDefined = "NotDefined"
    }
    /** Light direction */
    public var direction: Direction?
    /** Light type */
    public var lightType: LightType?
    /** XRotation */
    public var xRotation: Double?
    /** YRotation */
    public var yRotation: Double?
    /** ZRotation */
    public var zRotation: Double?

    private enum CodingKeys: String, CodingKey {
        case direction
        case lightType
        case xRotation
        case yRotation
        case zRotation
    }

    public init(direction: Direction? = nil, lightType: LightType? = nil, xRotation: Double? = nil, yRotation: Double? = nil, zRotation: Double? = nil) {
        self.direction = direction
        self.lightType = lightType
        self.xRotation = xRotation
        self.yRotation = yRotation
        self.zRotation = zRotation
    }


}

