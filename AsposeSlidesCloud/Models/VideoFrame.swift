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
    /** Picture fill format. */
    public var pictureFillFormat: PictureFill?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let fullScreenModeValue = source["fullScreenMode"] ?? source["FullScreenMode"]
        if fullScreenModeValue != nil {
            self.fullScreenMode = fullScreenModeValue! as? Bool
        }
        let hideAtShowingValue = source["hideAtShowing"] ?? source["HideAtShowing"]
        if hideAtShowingValue != nil {
            self.hideAtShowing = hideAtShowingValue! as? Bool
        }
        let playLoopModeValue = source["playLoopMode"] ?? source["PlayLoopMode"]
        if playLoopModeValue != nil {
            self.playLoopMode = playLoopModeValue! as? Bool
        }
        let playModeValue = source["playMode"] ?? source["PlayMode"]
        if playModeValue != nil {
            let playModeStringValue = playModeValue! as? String
            if playModeStringValue != nil {
                let playModeEnumValue = PlayMode(rawValue: playModeStringValue!)
                if playModeEnumValue != nil {
                    self.playMode = playModeEnumValue!
                }
            }
        }
        let rewindVideoValue = source["rewindVideo"] ?? source["RewindVideo"]
        if rewindVideoValue != nil {
            self.rewindVideo = rewindVideoValue! as? Bool
        }
        let volumeValue = source["volume"] ?? source["Volume"]
        if volumeValue != nil {
            let volumeStringValue = volumeValue! as? String
            if volumeStringValue != nil {
                let volumeEnumValue = Volume(rawValue: volumeStringValue!)
                if volumeEnumValue != nil {
                    self.volume = volumeEnumValue!
                }
            }
        }
        let base64DataValue = source["base64Data"] ?? source["Base64Data"]
        if base64DataValue != nil {
            self.base64Data = base64DataValue! as? String
        }
        let pictureFillFormatValue = source["pictureFillFormat"] ?? source["PictureFillFormat"]
        if pictureFillFormatValue != nil {
            let pictureFillFormatDictionaryValue = pictureFillFormatValue! as? [String:Any]
            if pictureFillFormatDictionaryValue != nil {
                let (pictureFillFormatInstance, error) = ClassRegistry.getClassFromDictionary(PictureFill.self, pictureFillFormatDictionaryValue!)
                if error == nil && pictureFillFormatInstance != nil {
                    self.pictureFillFormat = pictureFillFormatInstance! as? PictureFill
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, fullScreenMode: Bool? = nil, hideAtShowing: Bool? = nil, playLoopMode: Bool? = nil, playMode: PlayMode? = nil, rewindVideo: Bool? = nil, volume: Volume? = nil, base64Data: String? = nil, pictureFillFormat: PictureFill? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, shapeType: shapeType)
        self.fullScreenMode = fullScreenMode
        self.hideAtShowing = hideAtShowing
        self.playLoopMode = playLoopMode
        self.playMode = playMode
        self.rewindVideo = rewindVideo
        self.volume = volume
        self.base64Data = base64Data
        self.pictureFillFormat = pictureFillFormat
        self.type = ModelType.videoFrame
    }

    private enum CodingKeys: String, CodingKey {
        case fullScreenMode
        case hideAtShowing
        case playLoopMode
        case playMode
        case rewindVideo
        case volume
        case base64Data
        case pictureFillFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fullScreenMode = try? values.decode(Bool.self, forKey: .fullScreenMode)
        hideAtShowing = try? values.decode(Bool.self, forKey: .hideAtShowing)
        playLoopMode = try? values.decode(Bool.self, forKey: .playLoopMode)
        playMode = try? values.decode(PlayMode.self, forKey: .playMode)
        rewindVideo = try? values.decode(Bool.self, forKey: .rewindVideo)
        volume = try? values.decode(Volume.self, forKey: .volume)
        base64Data = try? values.decode(String.self, forKey: .base64Data)
        pictureFillFormat = try? values.decode(PictureFill.self, forKey: .pictureFillFormat)
        self.type = ModelType.videoFrame
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (fullScreenMode != nil) {
            try? container.encode(fullScreenMode, forKey: .fullScreenMode)
        }
        if (hideAtShowing != nil) {
            try? container.encode(hideAtShowing, forKey: .hideAtShowing)
        }
        if (playLoopMode != nil) {
            try? container.encode(playLoopMode, forKey: .playLoopMode)
        }
        if (playMode != nil) {
            try? container.encode(playMode, forKey: .playMode)
        }
        if (rewindVideo != nil) {
            try? container.encode(rewindVideo, forKey: .rewindVideo)
        }
        if (volume != nil) {
            try? container.encode(volume, forKey: .volume)
        }
        if (base64Data != nil) {
            try? container.encode(base64Data, forKey: .base64Data)
        }
        if (pictureFillFormat != nil) {
            try? container.encode(pictureFillFormat, forKey: .pictureFillFormat)
        }
    }

}

