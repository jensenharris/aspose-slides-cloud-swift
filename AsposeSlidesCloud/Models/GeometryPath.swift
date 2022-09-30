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


/** Represents GeometryPath of the shape */
public class GeometryPath: Codable {

    public enum FillMode: String, Codable { 
        case _none = "None"
        case normal = "Normal"
        case lighten = "Lighten"
        case lightenLess = "LightenLess"
        case darken = "Darken"
        case darkenLess = "DarkenLess"
    }
    /** Path fill mode */
    public var fillMode: FillMode?
    /** Stroke */
    public var stroke: Bool?
    /** List of PathSegmen objects */
    public var pathData: [PathSegment]?

    func fillValues(_ source: [String:Any]) throws {
        let fillModeValue = source["fillMode"] ?? source["FillMode"]
        if fillModeValue != nil {
            let fillModeStringValue = fillModeValue! as? String
            if fillModeStringValue != nil {
                let fillModeEnumValue = FillMode(rawValue: fillModeStringValue!)
                if fillModeEnumValue != nil {
                    self.fillMode = fillModeEnumValue!
                }
            }
        }
        let strokeValue = source["stroke"] ?? source["Stroke"]
        if strokeValue != nil {
            self.stroke = strokeValue! as? Bool
        }
        let pathDataValue = source["pathData"] ?? source["PathData"]
        if pathDataValue != nil {
            var pathDataArray: [PathSegment] = []
            let pathDataDictionaryValue = pathDataValue! as? [Any]
            if pathDataDictionaryValue != nil {
                pathDataDictionaryValue!.forEach { pathDataAnyItem in
                    let pathDataItem = pathDataAnyItem as? [String:Any]
                    var added = false
                    if pathDataItem != nil {
                        let (pathDataInstance, error) = ClassRegistry.getClassFromDictionary(PathSegment.self, pathDataItem!)
                        if error == nil && pathDataInstance != nil {
                            let pathDataArrayItem = pathDataInstance! as? PathSegment
                            if pathDataArrayItem != nil {
                                pathDataArray.append(pathDataArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        pathDataArray.append(PathSegment())
                    }
                }
            }
            self.pathData = pathDataArray
        }
    }

    public init(fillMode: FillMode? = nil, stroke: Bool? = nil, pathData: [PathSegment]? = nil) {
        self.fillMode = fillMode
        self.stroke = stroke
        self.pathData = pathData
    }

    private enum CodingKeys: String, CodingKey {
        case fillMode
        case stroke
        case pathData
    }

}

