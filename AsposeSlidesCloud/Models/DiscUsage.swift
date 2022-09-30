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


/** Class for disc space information. */
public class DiscUsage: Codable {

    /** Application used disc space. */
    public var usedSize: Int64?
    /** Total disc space. */
    public var totalSize: Int64?

    func fillValues(_ source: [String:Any]) throws {
        let usedSizeValue = source["usedSize"] ?? source["UsedSize"]
        if usedSizeValue != nil {
            self.usedSize = usedSizeValue! as? Int64
        }
        let totalSizeValue = source["totalSize"] ?? source["TotalSize"]
        if totalSizeValue != nil {
            self.totalSize = totalSizeValue! as? Int64
        }
    }

    public init(usedSize: Int64? = nil, totalSize: Int64? = nil) {
        self.usedSize = usedSize
        self.totalSize = totalSize
    }

    private enum CodingKeys: String, CodingKey {
        case usedSize
        case totalSize
    }

}

