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


/** Represents VideoFrame resource. */
public class VideoFrame: GeometryShape {

    public enum PlayMode: String, Codable { 
        case auto = "Auto"
        case onClick = "OnClick"
        case allSlides = "AllSlides"
        case inClickSequence = "InClickSequence"
        case mixed = "Mixed"
    }
    public enum Volume: String, Codable { 
        case mute = "Mute"
        case low = "Low"
        case medium = "Medium"
        case loud = "Loud"
        case mixed = "Mixed"
    }
    /** Determines whether a video is shown in full screen mode. */
    public var fullScreenMode: Bool?
    /** Determines whether a VideoFrame is hidden.  */
    public var hideAtShowing: Bool?
    /** Determines whether a video is looped. */
    public var playLoopMode: Bool?
    /** Returns or sets the video play mode.   */
    public var playMode: PlayMode?
    /** Determines whether a video is automatically rewinded to start as soon as the movie has finished playing */
    public var rewindVideo: Bool?
    /** Returns or sets the audio volume. */
    public var volume: Volume?
    /** Video data encoded in base64. */
    public var base64Data: String?

    private enum CodingKeys: String, CodingKey {
        case fullScreenMode
        case hideAtShowing
        case playLoopMode
        case playMode
        case rewindVideo
        case volume
        case base64Data
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, fullScreenMode: Bool? = nil, hideAtShowing: Bool? = nil, playLoopMode: Bool? = nil, playMode: PlayMode? = nil, rewindVideo: Bool? = nil, volume: Volume? = nil, base64Data: String? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, shapeType: shapeType)
        self.fullScreenMode = fullScreenMode
        self.hideAtShowing = hideAtShowing
        self.playLoopMode = playLoopMode
        self.playMode = playMode
        self.rewindVideo = rewindVideo
        self.volume = volume
        self.base64Data = base64Data
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fullScreenMode = try values.decode(Bool?.self, forKey: .fullScreenMode)
        hideAtShowing = try values.decode(Bool?.self, forKey: .hideAtShowing)
        playLoopMode = try values.decode(Bool?.self, forKey: .playLoopMode)
        playMode = try values.decode(PlayMode?.self, forKey: .playMode)
        rewindVideo = try values.decode(Bool?.self, forKey: .rewindVideo)
        volume = try values.decode(Volume?.self, forKey: .volume)
        base64Data = try values.decode(String?.self, forKey: .base64Data)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fullScreenMode, forKey: .fullScreenMode)
        try container.encode(hideAtShowing, forKey: .hideAtShowing)
        try container.encode(playLoopMode, forKey: .playLoopMode)
        try container.encode(playMode, forKey: .playMode)
        try container.encode(rewindVideo, forKey: .rewindVideo)
        try container.encode(volume, forKey: .volume)
        try container.encode(base64Data, forKey: .base64Data)
    }


}

