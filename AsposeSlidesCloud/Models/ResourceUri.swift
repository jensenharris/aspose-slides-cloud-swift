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


/** Represents Resource URI */
public class ResourceUri: Codable {

    /** Gets or sets the href. */
    public var href: String?
    /** Gets or sets the relation. */
    public var relation: String?
    /** Gets or sets the type of link. */
    public var linkType: String?
    /** Gets or sets the title of link. */
    public var title: String?
    /** Resource slide index. */
    public var slideIndex: Int?
    /** Resource shape index. */
    public var shapeIndex: Int?

    func fillValues(_ source: [String:Any]) throws {
        let hrefValue = source["href"]
        if hrefValue != nil {
            self.href = hrefValue! as? String
        }
        let relationValue = source["relation"]
        if relationValue != nil {
            self.relation = relationValue! as? String
        }
        let linkTypeValue = source["linkType"]
        if linkTypeValue != nil {
            self.linkType = linkTypeValue! as? String
        }
        let titleValue = source["title"]
        if titleValue != nil {
            self.title = titleValue! as? String
        }
        let slideIndexValue = source["slideIndex"]
        if slideIndexValue != nil {
            self.slideIndex = slideIndexValue! as? Int
        }
        let shapeIndexValue = source["shapeIndex"]
        if shapeIndexValue != nil {
            self.shapeIndex = shapeIndexValue! as? Int
        }
    }

    public init(href: String? = nil, relation: String? = nil, linkType: String? = nil, title: String? = nil, slideIndex: Int? = nil, shapeIndex: Int? = nil) {
        self.href = href
        self.relation = relation
        self.linkType = linkType
        self.title = title
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
    }

    private enum CodingKeys: String, CodingKey {
        case href
        case relation
        case linkType
        case title
        case slideIndex
        case shapeIndex
    }

}

