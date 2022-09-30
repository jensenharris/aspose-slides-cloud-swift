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


/** Provides options that control how a presentation is saved in Gif format. */
public class GifExportOptions: ImageExportOptionsBase {

    /** Determines whether hidden slides will be exported. */
    public var exportHiddenSlides: Bool?
    /** Gets or sets transition FPS [frames/sec] */
    public var transitionFps: Int?
    /** Gets or sets default delay time [ms]. */
    public var defaultDelay: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let exportHiddenSlidesValue = source["exportHiddenSlides"] ?? source["ExportHiddenSlides"]
        if exportHiddenSlidesValue != nil {
            self.exportHiddenSlides = exportHiddenSlidesValue! as? Bool
        }
        let transitionFpsValue = source["transitionFps"] ?? source["TransitionFps"]
        if transitionFpsValue != nil {
            self.transitionFps = transitionFpsValue! as? Int
        }
        let defaultDelayValue = source["defaultDelay"] ?? source["DefaultDelay"]
        if defaultDelayValue != nil {
            self.defaultDelay = defaultDelayValue! as? Int
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, height: Int? = nil, width: Int? = nil, exportHiddenSlides: Bool? = nil, transitionFps: Int? = nil, defaultDelay: Int? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format, height: height, width: width)
        self.exportHiddenSlides = exportHiddenSlides
        self.transitionFps = transitionFps
        self.defaultDelay = defaultDelay
        self.format = "gif"
    }

    private enum CodingKeys: String, CodingKey {
        case exportHiddenSlides
        case transitionFps
        case defaultDelay
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        exportHiddenSlides = try? values.decode(Bool.self, forKey: .exportHiddenSlides)
        transitionFps = try? values.decode(Int.self, forKey: .transitionFps)
        defaultDelay = try? values.decode(Int.self, forKey: .defaultDelay)
        self.format = "gif"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (exportHiddenSlides != nil) {
            try? container.encode(exportHiddenSlides, forKey: .exportHiddenSlides)
        }
        if (transitionFps != nil) {
            try? container.encode(transitionFps, forKey: .transitionFps)
        }
        if (defaultDelay != nil) {
            try? container.encode(defaultDelay, forKey: .defaultDelay)
        }
    }

}

