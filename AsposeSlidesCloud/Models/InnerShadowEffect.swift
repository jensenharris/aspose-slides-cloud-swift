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


/** Represents inner shadow effect  */
public class InnerShadowEffect: Codable {

    /** direction */
    public var direction: Double?
    /** distance */
    public var distance: Double?
    /** blur radius */
    public var blurRadius: Double?
    /** shadow color */
    public var shadowColor: String?

    func fillValues(_ source: [String:Any]) throws {
        let directionValue = source["direction"] ?? source["Direction"]
        if directionValue != nil {
            self.direction = directionValue! as? Double
        }
        let distanceValue = source["distance"] ?? source["Distance"]
        if distanceValue != nil {
            self.distance = distanceValue! as? Double
        }
        let blurRadiusValue = source["blurRadius"] ?? source["BlurRadius"]
        if blurRadiusValue != nil {
            self.blurRadius = blurRadiusValue! as? Double
        }
        let shadowColorValue = source["shadowColor"] ?? source["ShadowColor"]
        if shadowColorValue != nil {
            self.shadowColor = shadowColorValue! as? String
        }
    }

    public init(direction: Double? = nil, distance: Double? = nil, blurRadius: Double? = nil, shadowColor: String? = nil) {
        self.direction = direction
        self.distance = distance
        self.blurRadius = blurRadius
        self.shadowColor = shadowColor
    }

    private enum CodingKeys: String, CodingKey {
        case direction
        case distance
        case blurRadius
        case shadowColor
    }

}

