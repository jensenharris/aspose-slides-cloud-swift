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


/** Represents Excel spreadsheet data source. */
public class Workbook: DataSource {

    /** Worksheet index. */
    public var worksheetIndex: Int?
    /** Column index of the first value. */
    public var columnIndex: Int?
    /** Row index of the first value. */
    public var rowIndex: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let worksheetIndexValue = source["worksheetIndex"] ?? source["WorksheetIndex"]
        if worksheetIndexValue != nil {
            self.worksheetIndex = worksheetIndexValue! as? Int
        }
        let columnIndexValue = source["columnIndex"] ?? source["ColumnIndex"]
        if columnIndexValue != nil {
            self.columnIndex = columnIndexValue! as? Int
        }
        let rowIndexValue = source["rowIndex"] ?? source["RowIndex"]
        if rowIndexValue != nil {
            self.rowIndex = rowIndexValue! as? Int
        }
    }

    public init(type: ModelType? = nil, worksheetIndex: Int? = nil, columnIndex: Int? = nil, rowIndex: Int? = nil) {
        super.init(type: type)
        self.worksheetIndex = worksheetIndex
        self.columnIndex = columnIndex
        self.rowIndex = rowIndex
        self.type = ModelType.workbook
    }

    private enum CodingKeys: String, CodingKey {
        case worksheetIndex
        case columnIndex
        case rowIndex
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        worksheetIndex = try? values.decode(Int.self, forKey: .worksheetIndex)
        columnIndex = try? values.decode(Int.self, forKey: .columnIndex)
        rowIndex = try? values.decode(Int.self, forKey: .rowIndex)
        self.type = ModelType.workbook
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (worksheetIndex != nil) {
            try? container.encode(worksheetIndex, forKey: .worksheetIndex)
        }
        if (columnIndex != nil) {
            try? container.encode(columnIndex, forKey: .columnIndex)
        }
        if (rowIndex != nil) {
            try? container.encode(rowIndex, forKey: .rowIndex)
        }
    }

}

