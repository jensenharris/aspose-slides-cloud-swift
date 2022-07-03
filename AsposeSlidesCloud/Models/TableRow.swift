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


/** Table Row. */
public class TableRow: Codable {

    /** Cells for the row. */
    public var cells: [TableCell]?
    /** Minimal height of the row. */
    public var minimalHeight: Double?
    /** Height of the row. */
    public var height: Double?

    func fillValues(_ source: [String:Any]) throws {
        let cellsValue = source["cells"]
        if cellsValue != nil {
            var cellsArray: [TableCell] = []
            let cellsDictionaryValue = cellsValue! as? [Any]
            if cellsDictionaryValue != nil {
                cellsDictionaryValue!.forEach { cellsAnyItem in
                    let cellsItem = cellsAnyItem as? [String:Any]
                    var added = false
                    if cellsItem != nil {
                        let (cellsInstance, error) = ClassRegistry.getClassFromDictionary(TableCell.self, cellsItem!)
                        if error == nil && cellsInstance != nil {
                            let cellsArrayItem = cellsInstance! as? TableCell
                            if cellsArrayItem != nil {
                                cellsArray.append(cellsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        cellsArray.append(TableCell())
                    }
                }
            }
            self.cells = cellsArray
        }
        let minimalHeightValue = source["minimalHeight"]
        if minimalHeightValue != nil {
            self.minimalHeight = minimalHeightValue! as? Double
        }
        let heightValue = source["height"]
        if heightValue != nil {
            self.height = heightValue! as? Double
        }
    }

    public init(cells: [TableCell]? = nil, minimalHeight: Double? = nil, height: Double? = nil) {
        self.cells = cells
        self.minimalHeight = minimalHeight
        self.height = height
    }

    private enum CodingKeys: String, CodingKey {
        case cells
        case minimalHeight
        case height
    }

}

