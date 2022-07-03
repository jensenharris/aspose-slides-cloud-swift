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


/** Provides options that control how a presentation is saved in XPS format. */
public class XpsExportOptions: ExportOptions {

    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** True to convert all metafiles used in a presentation to the PNG images. */
    public var saveMetafilesAsPng: Bool?
    /** True to draw black frame around each slide. */
    public var drawSlidesFrame: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let showHiddenSlidesValue = source["showHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
        let saveMetafilesAsPngValue = source["saveMetafilesAsPng"]
        if saveMetafilesAsPngValue != nil {
            self.saveMetafilesAsPng = saveMetafilesAsPngValue! as? Bool
        }
        let drawSlidesFrameValue = source["drawSlidesFrame"]
        if drawSlidesFrameValue != nil {
            self.drawSlidesFrame = drawSlidesFrameValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, format: String? = nil, showHiddenSlides: Bool? = nil, saveMetafilesAsPng: Bool? = nil, drawSlidesFrame: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, format: format)
        self.showHiddenSlides = showHiddenSlides
        self.saveMetafilesAsPng = saveMetafilesAsPng
        self.drawSlidesFrame = drawSlidesFrame
        self.format = "xps"
    }

    private enum CodingKeys: String, CodingKey {
        case showHiddenSlides
        case saveMetafilesAsPng
        case drawSlidesFrame
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        saveMetafilesAsPng = try? values.decode(Bool.self, forKey: .saveMetafilesAsPng)
        drawSlidesFrame = try? values.decode(Bool.self, forKey: .drawSlidesFrame)
        self.format = "xps"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (saveMetafilesAsPng != nil) {
            try? container.encode(saveMetafilesAsPng, forKey: .saveMetafilesAsPng)
        }
        if (drawSlidesFrame != nil) {
            try? container.encode(drawSlidesFrame, forKey: .drawSlidesFrame)
        }
    }

}

