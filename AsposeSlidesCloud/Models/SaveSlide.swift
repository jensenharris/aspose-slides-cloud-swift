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


/** Save slide task. */
public class SaveSlide: Task {

    public enum Format: String, Codable { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
        case xaml = "Xaml"
    }
    /** Output to save the slide to. */
    public var output: OutputFile?
    /** Save format. */
    public var format: Format?
    /** Save options. */
    public var options: ExportOptions?
    /** Result width for saving to an image format. */
    public var width: Int?
    /** Result height for saving to an image format. */
    public var height: Int?
    /** Slide index. */
    public var position: Int?

    private enum CodingKeys: String, CodingKey {
        case output
        case format
        case options
        case width
        case height
        case position
    }

    public init(type: ModelType? = nil, output: OutputFile? = nil, format: Format? = nil, options: ExportOptions? = nil, width: Int? = nil, height: Int? = nil, position: Int? = nil) {
        super.init(type: type)
        self.output = output
        self.format = format
        self.options = options
        self.width = width
        self.height = height
        self.position = position
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        output = try values.decode(OutputFile?.self, forKey: .output)
        format = try values.decode(Format?.self, forKey: .format)
        options = try values.decode(ExportOptions?.self, forKey: .options)
        width = try values.decode(Int?.self, forKey: .width)
        height = try values.decode(Int?.self, forKey: .height)
        position = try values.decode(Int?.self, forKey: .position)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(output, forKey: .output)
        try container.encode(format, forKey: .format)
        try container.encode(options, forKey: .options)
        try container.encode(width, forKey: .width)
        try container.encode(height, forKey: .height)
        try container.encode(position, forKey: .position)
    }


}

