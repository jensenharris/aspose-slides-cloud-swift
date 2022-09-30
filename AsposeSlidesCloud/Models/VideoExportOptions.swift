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

    public enum TransitionType: String, Codable { 
        case _none = "None"
        case fade = "Fade"
        case distance = "Distance"
        case slidedown = "Slidedown"
        case slideright = "Slideright"
        case slideleft = "Slideleft"
        case slideup = "Slideup"
        case smoothleft = "Smoothleft"
        case smoothright = "Smoothright"
        case smoothup = "Smoothup"
        case smoothdown = "Smoothdown"
        case rectcrop = "Rectcrop"
        case circlecrop = "Circlecrop"
        case circleclose = "Circleclose"
        case circleopen = "Circleopen"
        case horzclose = "Horzclose"
        case horzopen = "Horzopen"
        case vertclose = "Vertclose"
        case vertopen = "Vertopen"
        case diagbl = "Diagbl"
        case diagbr = "Diagbr"
        case diagtl = "Diagtl"
        case diagtr = "Diagtr"
        case hlslice = "Hlslice"
        case hrslice = "Hrslice"
        case vuslice = "Vuslice"
        case vdslice = "Vdslice"
        case dissolve = "Dissolve"
        case pixelize = "Pixelize"
        case radial = "Radial"
    }
    public enum VideoResolutionType: String, Codable { 
        case fullHD = "FullHD"
        case sd = "SD"
        case hd = "HD"
        case qhd = "QHD"
    }
    /** Slides transition duration. */
    public var slidesTransitionDuration: Int?
    /** Video transition type */
    public var transitionType: TransitionType?
    /** Duration of transition defined in TransitionType property. */
    public var transitionDuration: Int?
    /** Video resolution type */
    public var videoResolutionType: VideoResolutionType?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let slidesTransitionDurationValue = source["slidesTransitionDuration"] ?? source["SlidesTransitionDuration"]
        if slidesTransitionDurationValue != nil {
            self.slidesTransitionDuration = slidesTransitionDurationValue! as? Int
        }
        let transitionTypeValue = source["transitionType"] ?? source["TransitionType"]
        if transitionTypeValue != nil {
            let transitionTypeStringValue = transitionTypeValue! as? String
            if transitionTypeStringValue != nil {
                let transitionTypeEnumValue = TransitionType(rawValue: transitionTypeStringValue!)
                if transitionTypeEnumValue != nil {
                    self.transitionType = transitionTypeEnumValue!
                }
            }
        }
        let transitionDurationValue = source["transitionDuration"] ?? source["TransitionDuration"]
        if transitionDurationValue != nil {
            self.transitionDuration = transitionDurationValue! as? Int
        }
        let videoResolutionTypeValue = source["videoResolutionType"] ?? source["VideoResolutionType"]
        if videoResolutionTypeValue != nil {
            let videoResolutionTypeStringValue = videoResolutionTypeValue! as? String
            if videoResolutionTypeStringValue != nil {
                let videoResolutionTypeEnumValue = VideoResolutionType(rawValue: videoResolutionTypeStringValue!)
                if videoResolutionTypeEnumValue != nil {
                    self.videoResolutionType = videoResolutionTypeEnumValue!
                }
            }
        }
    }

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, slidesTransitionDuration: Int? = nil, transitionType: TransitionType? = nil, transitionDuration: Int? = nil, videoResolutionType: VideoResolutionType? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.slidesTransitionDuration = slidesTransitionDuration
        self.transitionType = transitionType
        self.transitionDuration = transitionDuration
        self.videoResolutionType = videoResolutionType
        self.format = "mpeg4"
    }

    private enum CodingKeys: String, CodingKey {
        case slidesTransitionDuration
        case transitionType
        case transitionDuration
        case videoResolutionType
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        slidesTransitionDuration = try? values.decode(Int.self, forKey: .slidesTransitionDuration)
        transitionType = try? values.decode(TransitionType.self, forKey: .transitionType)
        transitionDuration = try? values.decode(Int.self, forKey: .transitionDuration)
        videoResolutionType = try? values.decode(VideoResolutionType.self, forKey: .videoResolutionType)
        self.format = "mpeg4"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (slidesTransitionDuration != nil) {
            try? container.encode(slidesTransitionDuration, forKey: .slidesTransitionDuration)
        }
        if (transitionType != nil) {
            try? container.encode(transitionType, forKey: .transitionType)
        }
        if (transitionDuration != nil) {
            try? container.encode(transitionDuration, forKey: .transitionDuration)
        }
        if (videoResolutionType != nil) {
            try? container.encode(videoResolutionType, forKey: .videoResolutionType)
        }
    }

}

