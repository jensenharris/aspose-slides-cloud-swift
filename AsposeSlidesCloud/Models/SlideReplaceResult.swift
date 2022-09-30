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


/** Represents slide replace result DTO. */
public class SlideReplaceResult: Slide {

    /** Gets or sets the number of matches  */
    public var matches: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let matchesValue = source["matches"] ?? source["Matches"]
        if matchesValue != nil {
            self.matches = matchesValue! as? Int
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, width: Double? = nil, height: Double? = nil, showMasterShapes: Bool? = nil, layoutSlide: ResourceUri? = nil, shapes: ResourceUri? = nil, theme: ResourceUri? = nil, placeholders: ResourceUri? = nil, images: ResourceUri? = nil, comments: ResourceUri? = nil, background: ResourceUri? = nil, notesSlide: ResourceUri? = nil, matches: Int? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, width: width, height: height, showMasterShapes: showMasterShapes, layoutSlide: layoutSlide, shapes: shapes, theme: theme, placeholders: placeholders, images: images, comments: comments, background: background, notesSlide: notesSlide)
        self.matches = matches
    }

    private enum CodingKeys: String, CodingKey {
        case matches
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        matches = try? values.decode(Int.self, forKey: .matches)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (matches != nil) {
            try? container.encode(matches, forKey: .matches)
        }
    }

}

