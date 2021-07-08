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
    /** Password for read protection. */
    public var readPassword: String?
    /** Password for write protection. */
    public var writePassword: String?
    /** Returns true if the presentation protected for editing.  */
    public var isWriteProtected: Bool?
    /** Returns true if the presentation protected for reading.  */
    public var isEncrypted: Bool?

    private enum CodingKeys: String, CodingKey {
        case encryptDocumentProperties
        case readOnlyRecommended
        case readPassword
        case writePassword
        case isWriteProtected
        case isEncrypted
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, encryptDocumentProperties: Bool? = nil, readOnlyRecommended: Bool? = nil, readPassword: String? = nil, writePassword: String? = nil, isWriteProtected: Bool? = nil, isEncrypted: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.encryptDocumentProperties = encryptDocumentProperties
        self.readOnlyRecommended = readOnlyRecommended
        self.readPassword = readPassword
        self.writePassword = writePassword
        self.isWriteProtected = isWriteProtected
        self.isEncrypted = isEncrypted
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        encryptDocumentProperties = try values.decode(Bool?.self, forKey: .encryptDocumentProperties)
        readOnlyRecommended = try values.decode(Bool?.self, forKey: .readOnlyRecommended)
        readPassword = try values.decode(String?.self, forKey: .readPassword)
        writePassword = try values.decode(String?.self, forKey: .writePassword)
        isWriteProtected = try values.decode(Bool?.self, forKey: .isWriteProtected)
        isEncrypted = try values.decode(Bool?.self, forKey: .isEncrypted)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(encryptDocumentProperties, forKey: .encryptDocumentProperties)
        try container.encode(readOnlyRecommended, forKey: .readOnlyRecommended)
        try container.encode(readPassword, forKey: .readPassword)
        try container.encode(writePassword, forKey: .writePassword)
        try container.encode(isWriteProtected, forKey: .isWriteProtected)
        try container.encode(isEncrypted, forKey: .isEncrypted)
    }


}

