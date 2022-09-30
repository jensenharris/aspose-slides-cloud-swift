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


/** Represents fileSystem file with path. */
public class PathOutputFile: OutputFile {

    /** Get or sets path to file. */
    public var path: String?
    /** Get or sets name of storage. */
    public var storage: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let pathValue = source["path"] ?? source["Path"]
        if pathValue != nil {
            self.path = pathValue! as? String
        }
        let storageValue = source["storage"] ?? source["Storage"]
        if storageValue != nil {
            self.storage = storageValue! as? String
        }
    }

    public init(type: ModelType? = nil, path: String? = nil, storage: String? = nil) {
        super.init(type: type)
        self.path = path
        self.storage = storage
        self.type = ModelType.path
    }

    private enum CodingKeys: String, CodingKey {
        case path
        case storage
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        path = try? values.decode(String.self, forKey: .path)
        storage = try? values.decode(String.self, forKey: .storage)
        self.type = ModelType.path
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (path != nil) {
            try? container.encode(path, forKey: .path)
        }
        if (storage != nil) {
            try? container.encode(storage, forKey: .storage)
        }
    }

}

