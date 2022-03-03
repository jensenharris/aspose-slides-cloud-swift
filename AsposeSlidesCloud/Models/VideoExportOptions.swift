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


/** Provides options that control how a presentation is saved in an video format. */
public class VideoExportOptions: ExportOptions {

    public enum VideoResolutionType: String, Codable { 
        case fullHD = "FullHD"
        case sd = "SD"
        case hd = "HD"
        case qhd = "QHD"
    }
    /** Transition duration. */
    public var transitionDuration: Int?
    /** Video resolution type */
    public var videoResolutionType: VideoResolutionType?

    private enum CodingKeys: String, CodingKey {
        case transitionDuration
        case videoResolutionType
    }

    public init(defaultRegularFont: String? = nil, height: Int? = nil, width: Int? = nil, format: String? = nil, transitionDuration: Int? = nil, videoResolutionType: VideoResolutionType? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, height: height, width: width, format: format)
        self.transitionDuration = transitionDuration
        self.videoResolutionType = videoResolutionType
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        transitionDuration = try values.decode(Int?.self, forKey: .transitionDuration)
        videoResolutionType = try values.decode(VideoResolutionType?.self, forKey: .videoResolutionType)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transitionDuration, forKey: .transitionDuration)
        try container.encode(videoResolutionType, forKey: .videoResolutionType)
    }


}

