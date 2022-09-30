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


/** File Version */
public class FileVersion: StorageFile {

    /** File Version ID. */
    public var versionId: String?
    /** Specifies whether the file is (true) or is not (false) the latest version of an file. */
    public var isLatest: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let versionIdValue = source["versionId"] ?? source["VersionId"]
        if versionIdValue != nil {
            self.versionId = versionIdValue! as? String
        }
        let isLatestValue = source["isLatest"] ?? source["IsLatest"]
        if isLatestValue != nil {
            self.isLatest = isLatestValue! as? Bool
        }
    }

    public init(name: String? = nil, isFolder: Bool? = nil, modifiedDate: Date? = nil, size: Int64? = nil, path: String? = nil, versionId: String? = nil, isLatest: Bool? = nil) {
        super.init(name: name, isFolder: isFolder, modifiedDate: modifiedDate, size: size, path: path)
        self.versionId = versionId
        self.isLatest = isLatest
    }

    private enum CodingKeys: String, CodingKey {
        case versionId
        case isLatest
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        versionId = try? values.decode(String.self, forKey: .versionId)
        isLatest = try? values.decode(Bool.self, forKey: .isLatest)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (versionId != nil) {
            try? container.encode(versionId, forKey: .versionId)
        }
        if (isLatest != nil) {
            try? container.encode(isLatest, forKey: .isLatest)
        }
    }

}

