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


/** Slide show properties. */
public class SlideShowProperties: ResourceBase {

    public enum SlideShowType: String, Codable { 
        case browsedAtKiosk = "BrowsedAtKiosk"
        case browsedByIndividual = "BrowsedByIndividual"
        case presentedBySpeaker = "PresentedBySpeaker"
    }
    /** Loop slide show. */
    public var loop: Bool?
    /** Start slide in the slide show. */
    public var startSlide: Int?
    /** End slides in the slide show. */
    public var endSlide: Int?
    /** Pen color. */
    public var penColor: String?
    /** Show animation. */
    public var showAnimation: Bool?
    /** Show narrration. */
    public var showNarration: Bool?
    /** Use timings. */
    public var useTimings: Bool?
    /** Slide show type. */
    public var slideShowType: SlideShowType?
    /** Show scroll bar. Applied with BrowsedByIndividual slide show type. */
    public var showScrollbar: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let loopValue = source["loop"] ?? source["Loop"]
        if loopValue != nil {
            self.loop = loopValue! as? Bool
        }
        let startSlideValue = source["startSlide"] ?? source["StartSlide"]
        if startSlideValue != nil {
            self.startSlide = startSlideValue! as? Int
        }
        let endSlideValue = source["endSlide"] ?? source["EndSlide"]
        if endSlideValue != nil {
            self.endSlide = endSlideValue! as? Int
        }
        let penColorValue = source["penColor"] ?? source["PenColor"]
        if penColorValue != nil {
            self.penColor = penColorValue! as? String
        }
        let showAnimationValue = source["showAnimation"] ?? source["ShowAnimation"]
        if showAnimationValue != nil {
            self.showAnimation = showAnimationValue! as? Bool
        }
        let showNarrationValue = source["showNarration"] ?? source["ShowNarration"]
        if showNarrationValue != nil {
            self.showNarration = showNarrationValue! as? Bool
        }
        let useTimingsValue = source["useTimings"] ?? source["UseTimings"]
        if useTimingsValue != nil {
            self.useTimings = useTimingsValue! as? Bool
        }
        let slideShowTypeValue = source["slideShowType"] ?? source["SlideShowType"]
        if slideShowTypeValue != nil {
            let slideShowTypeStringValue = slideShowTypeValue! as? String
            if slideShowTypeStringValue != nil {
                let slideShowTypeEnumValue = SlideShowType(rawValue: slideShowTypeStringValue!)
                if slideShowTypeEnumValue != nil {
                    self.slideShowType = slideShowTypeEnumValue!
                }
            }
        }
        let showScrollbarValue = source["showScrollbar"] ?? source["ShowScrollbar"]
        if showScrollbarValue != nil {
            self.showScrollbar = showScrollbarValue! as? Bool
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, loop: Bool? = nil, startSlide: Int? = nil, endSlide: Int? = nil, penColor: String? = nil, showAnimation: Bool? = nil, showNarration: Bool? = nil, useTimings: Bool? = nil, slideShowType: SlideShowType? = nil, showScrollbar: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.loop = loop
        self.startSlide = startSlide
        self.endSlide = endSlide
        self.penColor = penColor
        self.showAnimation = showAnimation
        self.showNarration = showNarration
        self.useTimings = useTimings
        self.slideShowType = slideShowType
        self.showScrollbar = showScrollbar
    }

    private enum CodingKeys: String, CodingKey {
        case loop
        case startSlide
        case endSlide
        case penColor
        case showAnimation
        case showNarration
        case useTimings
        case slideShowType
        case showScrollbar
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        loop = try? values.decode(Bool.self, forKey: .loop)
        startSlide = try? values.decode(Int.self, forKey: .startSlide)
        endSlide = try? values.decode(Int.self, forKey: .endSlide)
        penColor = try? values.decode(String.self, forKey: .penColor)
        showAnimation = try? values.decode(Bool.self, forKey: .showAnimation)
        showNarration = try? values.decode(Bool.self, forKey: .showNarration)
        useTimings = try? values.decode(Bool.self, forKey: .useTimings)
        slideShowType = try? values.decode(SlideShowType.self, forKey: .slideShowType)
        showScrollbar = try? values.decode(Bool.self, forKey: .showScrollbar)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (loop != nil) {
            try? container.encode(loop, forKey: .loop)
        }
        if (startSlide != nil) {
            try? container.encode(startSlide, forKey: .startSlide)
        }
        if (endSlide != nil) {
            try? container.encode(endSlide, forKey: .endSlide)
        }
        if (penColor != nil) {
            try? container.encode(penColor, forKey: .penColor)
        }
        if (showAnimation != nil) {
            try? container.encode(showAnimation, forKey: .showAnimation)
        }
        if (showNarration != nil) {
            try? container.encode(showNarration, forKey: .showNarration)
        }
        if (useTimings != nil) {
            try? container.encode(useTimings, forKey: .useTimings)
        }
        if (slideShowType != nil) {
            try? container.encode(slideShowType, forKey: .slideShowType)
        }
        if (showScrollbar != nil) {
            try? container.encode(showScrollbar, forKey: .showScrollbar)
        }
    }

}

