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


/** Protection properties. */
public class ProtectionProperties: ResourceBase {

    /** True if document properties are encrypted. Has effect only for password protected presentations. */
    public var encryptDocumentProperties: Bool?
    /** True if the document should be opened as read-only. */
    public var readOnlyRecommended: Bool?

    private enum CodingKeys: String, CodingKey {
        case encryptDocumentProperties
        case readOnlyRecommended
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, encryptDocumentProperties: Bool? = nil, readOnlyRecommended: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.encryptDocumentProperties = encryptDocumentProperties
        self.readOnlyRecommended = readOnlyRecommended
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        encryptDocumentProperties = try values.decode(Bool?.self, forKey: .encryptDocumentProperties)
        readOnlyRecommended = try values.decode(Bool?.self, forKey: .readOnlyRecommended)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(encryptDocumentProperties, forKey: .encryptDocumentProperties)
        try container.encode(readOnlyRecommended, forKey: .readOnlyRecommended)
    }


}

