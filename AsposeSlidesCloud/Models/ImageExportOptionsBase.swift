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


/** The class provides shared options for image formats. */
public class ImageExportOptionsBase: ExportOptions {

    /** Gets or sets the height of slides in the output image format. */
    public var height: Int?
    /** Gets or sets the height of slides in the output the output image format. */
    public var width: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let heightValue = source["height"]
        if heightValue != nil {
            self.height = heightValue! as? Int
        }
        let widthValue = source["width"]
        if widthValue != nil {
            self.width = widthValue! as? Int
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, format: String? = nil, height: Int? = nil, width: Int? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, format: format)
        self.height = height
        self.width = width
    }

    private enum CodingKeys: String, CodingKey {
        case height
        case width
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try? values.decode(Int.self, forKey: .height)
        width = try? values.decode(Int.self, forKey: .width)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (height != nil) {
            try? container.encode(height, forKey: .height)
        }
        if (width != nil) {
            try? container.encode(width, forKey: .width)
        }
    }

}

