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


/** Table cells merge options */
public class TableCellMergeOptions: Codable {

    /** Row index of the first cell */
    public var firstRowIndex: Int?
    /** First cell index in the row */
    public var firstCellIndex: Int?
    /** Row index of the last cell */
    public var lastRowIndex: Int?
    /** Last cell index in the row */
    public var lastCellIndex: Int?
    /** Allow splitting */
    public var allowSplitting: Bool?

    func fillValues(_ source: [String:Any]) throws {
        let firstRowIndexValue = source["firstRowIndex"] ?? source["FirstRowIndex"]
        if firstRowIndexValue != nil {
            self.firstRowIndex = firstRowIndexValue! as? Int
        }
        let firstCellIndexValue = source["firstCellIndex"] ?? source["FirstCellIndex"]
        if firstCellIndexValue != nil {
            self.firstCellIndex = firstCellIndexValue! as? Int
        }
        let lastRowIndexValue = source["lastRowIndex"] ?? source["LastRowIndex"]
        if lastRowIndexValue != nil {
            self.lastRowIndex = lastRowIndexValue! as? Int
        }
        let lastCellIndexValue = source["lastCellIndex"] ?? source["LastCellIndex"]
        if lastCellIndexValue != nil {
            self.lastCellIndex = lastCellIndexValue! as? Int
        }
        let allowSplittingValue = source["allowSplitting"] ?? source["AllowSplitting"]
        if allowSplittingValue != nil {
            self.allowSplitting = allowSplittingValue! as? Bool
        }
    }

    public init(firstRowIndex: Int? = nil, firstCellIndex: Int? = nil, lastRowIndex: Int? = nil, lastCellIndex: Int? = nil, allowSplitting: Bool? = nil) {
        self.firstRowIndex = firstRowIndex
        self.firstCellIndex = firstCellIndex
        self.lastRowIndex = lastRowIndex
        self.lastCellIndex = lastCellIndex
        self.allowSplitting = allowSplitting
    }

    private enum CodingKeys: String, CodingKey {
        case firstRowIndex
        case firstCellIndex
        case lastRowIndex
        case lastCellIndex
        case allowSplitting
    }

}

