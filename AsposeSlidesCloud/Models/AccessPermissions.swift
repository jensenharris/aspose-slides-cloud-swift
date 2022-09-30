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


/** A set of properties specifying which access permissions should be granted when the document is opened with user access. */
public class AccessPermissions: Codable {

    /** The user may print the document (possibly not at the highest quality level, depending on whether bit HighQualityPrint is also set). */
    public var printDocument: Bool?
    /** The user may modify the contents of the document by operations other than those controlled by bits AddOrModifyFields, FillExistingFields, AssembleDocument. */
    public var modifyContent: Bool?
    /** The user may copy or otherwise extract text and graphics from the document by operations other than that controlled by bit ExtractTextAndGraphics. */
    public var copyTextAndGraphics: Bool?
    /** The user may add or modify text annotations, fill in interactive form fields, and, if bit ModifyContent is also set, create or modify interactive form fields (including signature fields). */
    public var addOrModifyFields: Bool?
    /** The user may fill in existing interactive form fields (including signature fields), even if bit AddOrModifyFields is clear. */
    public var fillExistingFields: Bool?
    /** The user may extract text and graphics in support of accessibility to users with disabilities or for other purposes. */
    public var extractTextAndGraphics: Bool?
    /** The user may assemble the document (insert, rotate, or delete pages and create bookmarks or thumbnail images), even if bit ModifyContent is clear. */
    public var assembleDocument: Bool?
    /** The user may print the document to a representation from which a faithful digital copy of the PDF content could be generated. When this bit is clear (and bit PrintDocument is set), printing is limited to a low-level representation of the appearance, possibly of degraded quality. */
    public var highQualityPrint: Bool?

    func fillValues(_ source: [String:Any]) throws {
        let printDocumentValue = source["printDocument"] ?? source["PrintDocument"]
        if printDocumentValue != nil {
            self.printDocument = printDocumentValue! as? Bool
        }
        let modifyContentValue = source["modifyContent"] ?? source["ModifyContent"]
        if modifyContentValue != nil {
            self.modifyContent = modifyContentValue! as? Bool
        }
        let copyTextAndGraphicsValue = source["copyTextAndGraphics"] ?? source["CopyTextAndGraphics"]
        if copyTextAndGraphicsValue != nil {
            self.copyTextAndGraphics = copyTextAndGraphicsValue! as? Bool
        }
        let addOrModifyFieldsValue = source["addOrModifyFields"] ?? source["AddOrModifyFields"]
        if addOrModifyFieldsValue != nil {
            self.addOrModifyFields = addOrModifyFieldsValue! as? Bool
        }
        let fillExistingFieldsValue = source["fillExistingFields"] ?? source["FillExistingFields"]
        if fillExistingFieldsValue != nil {
            self.fillExistingFields = fillExistingFieldsValue! as? Bool
        }
        let extractTextAndGraphicsValue = source["extractTextAndGraphics"] ?? source["ExtractTextAndGraphics"]
        if extractTextAndGraphicsValue != nil {
            self.extractTextAndGraphics = extractTextAndGraphicsValue! as? Bool
        }
        let assembleDocumentValue = source["assembleDocument"] ?? source["AssembleDocument"]
        if assembleDocumentValue != nil {
            self.assembleDocument = assembleDocumentValue! as? Bool
        }
        let highQualityPrintValue = source["highQualityPrint"] ?? source["HighQualityPrint"]
        if highQualityPrintValue != nil {
            self.highQualityPrint = highQualityPrintValue! as? Bool
        }
    }

    public init(printDocument: Bool? = nil, modifyContent: Bool? = nil, copyTextAndGraphics: Bool? = nil, addOrModifyFields: Bool? = nil, fillExistingFields: Bool? = nil, extractTextAndGraphics: Bool? = nil, assembleDocument: Bool? = nil, highQualityPrint: Bool? = nil) {
        self.printDocument = printDocument
        self.modifyContent = modifyContent
        self.copyTextAndGraphics = copyTextAndGraphics
        self.addOrModifyFields = addOrModifyFields
        self.fillExistingFields = fillExistingFields
        self.extractTextAndGraphics = extractTextAndGraphics
        self.assembleDocument = assembleDocument
        self.highQualityPrint = highQualityPrint
    }

    private enum CodingKeys: String, CodingKey {
        case printDocument
        case modifyContent
        case copyTextAndGraphics
        case addOrModifyFields
        case fillExistingFields
        case extractTextAndGraphics
        case assembleDocument
        case highQualityPrint
    }

}

