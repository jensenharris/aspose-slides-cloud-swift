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


/** Represents container for GeometryPath objects */
public class GeometryPaths: Codable {

    /** List of GeometryPath objects */
    public var paths: [GeometryPath]?

    func fillValues(_ source: [String:Any]) throws {
        let pathsValue = source["paths"]
        if pathsValue != nil {
            var pathsArray: [GeometryPath] = []
            let pathsDictionaryValue = pathsValue! as? [Any]
            if pathsDictionaryValue != nil {
                pathsDictionaryValue!.forEach { pathsAnyItem in
                    let pathsItem = pathsAnyItem as? [String:Any]
                    var added = false
                    if pathsItem != nil {
                        let (pathsInstance, error) = ClassRegistry.getClassFromDictionary(GeometryPath.self, pathsItem!)
                        if error == nil && pathsInstance != nil {
                            let pathsArrayItem = pathsInstance! as? GeometryPath
                            if pathsArrayItem != nil {
                                pathsArray.append(pathsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        pathsArray.append(GeometryPath())
                    }
                }
            }
            self.paths = pathsArray
        }
    }

    public init(paths: [GeometryPath]? = nil) {
        self.paths = paths
    }

    private enum CodingKeys: String, CodingKey {
        case paths
    }

}

