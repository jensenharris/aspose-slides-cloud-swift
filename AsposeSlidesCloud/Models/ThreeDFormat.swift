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


/** ThreeDFormat */
public class ThreeDFormat: Codable {

    public enum Material: String, Codable { 
        case clear = "Clear"
        case dkEdge = "DkEdge"
        case flat = "Flat"
        case legacyMatte = "LegacyMatte"
        case legacyMetal = "LegacyMetal"
        case legacyPlastic = "LegacyPlastic"
        case legacyWireframe = "LegacyWireframe"
        case matte = "Matte"
        case metal = "Metal"
        case plastic = "Plastic"
        case powder = "Powder"
        case softEdge = "SoftEdge"
        case softmetal = "Softmetal"
        case translucentPowder = "TranslucentPowder"
        case warmMatte = "WarmMatte"
        case notDefined = "NotDefined"
    }
    /** Type of a bottom 3D bevel.              */
    public var bevelBottom: ShapeBevel?
    /** Type of a top 3D bevel.              */
    public var bevelTop: ShapeBevel?
    /** Camera */
    public var camera: Camera?
    /** Contour color */
    public var contourColor: String?
    /** Contour width */
    public var contourWidth: Double?
    /** Depth */
    public var depth: Double?
    /** Extrusion color */
    public var extrusionColor: String?
    /** Extrusion height */
    public var extrusionHeight: Double?
    /** Light rig */
    public var lightRig: LightRig?
    /** Material */
    public var material: Material?

    private enum CodingKeys: String, CodingKey {
        case bevelBottom
        case bevelTop
        case camera
        case contourColor
        case contourWidth
        case depth
        case extrusionColor
        case extrusionHeight
        case lightRig
        case material
    }

    public init(bevelBottom: ShapeBevel? = nil, bevelTop: ShapeBevel? = nil, camera: Camera? = nil, contourColor: String? = nil, contourWidth: Double? = nil, depth: Double? = nil, extrusionColor: String? = nil, extrusionHeight: Double? = nil, lightRig: LightRig? = nil, material: Material? = nil) {
        self.bevelBottom = bevelBottom
        self.bevelTop = bevelTop
        self.camera = camera
        self.contourColor = contourColor
        self.contourWidth = contourWidth
        self.depth = depth
        self.extrusionColor = extrusionColor
        self.extrusionHeight = extrusionHeight
        self.lightRig = lightRig
        self.material = material
    }


}

