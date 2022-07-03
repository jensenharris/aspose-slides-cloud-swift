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


/** Slide&#39;s color scheme DTO */
public class ColorScheme: ResourceBase {

    /** First accent color. */
    public var accent1: String?
    /** Second accent color. */
    public var accent2: String?
    /** Third accent color. */
    public var accent3: String?
    /** Fourth accent color. */
    public var accent4: String?
    /** Fifth accent color. */
    public var accent5: String?
    /** Sixth accent color. */
    public var accent6: String?
    /** First dark color. */
    public var dark1: String?
    /** Second dark color. */
    public var dark2: String?
    /** Visited hyperlink color. */
    public var followedHyperlink: String?
    /** Hyperlink color/ */
    public var hyperlink: String?
    /** First light color. */
    public var light1: String?
    /** Second light color. */
    public var light2: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let accent1Value = source["accent1"]
        if accent1Value != nil {
            self.accent1 = accent1Value! as? String
        }
        let accent2Value = source["accent2"]
        if accent2Value != nil {
            self.accent2 = accent2Value! as? String
        }
        let accent3Value = source["accent3"]
        if accent3Value != nil {
            self.accent3 = accent3Value! as? String
        }
        let accent4Value = source["accent4"]
        if accent4Value != nil {
            self.accent4 = accent4Value! as? String
        }
        let accent5Value = source["accent5"]
        if accent5Value != nil {
            self.accent5 = accent5Value! as? String
        }
        let accent6Value = source["accent6"]
        if accent6Value != nil {
            self.accent6 = accent6Value! as? String
        }
        let dark1Value = source["dark1"]
        if dark1Value != nil {
            self.dark1 = dark1Value! as? String
        }
        let dark2Value = source["dark2"]
        if dark2Value != nil {
            self.dark2 = dark2Value! as? String
        }
        let followedHyperlinkValue = source["followedHyperlink"]
        if followedHyperlinkValue != nil {
            self.followedHyperlink = followedHyperlinkValue! as? String
        }
        let hyperlinkValue = source["hyperlink"]
        if hyperlinkValue != nil {
            self.hyperlink = hyperlinkValue! as? String
        }
        let light1Value = source["light1"]
        if light1Value != nil {
            self.light1 = light1Value! as? String
        }
        let light2Value = source["light2"]
        if light2Value != nil {
            self.light2 = light2Value! as? String
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, accent1: String? = nil, accent2: String? = nil, accent3: String? = nil, accent4: String? = nil, accent5: String? = nil, accent6: String? = nil, dark1: String? = nil, dark2: String? = nil, followedHyperlink: String? = nil, hyperlink: String? = nil, light1: String? = nil, light2: String? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.accent1 = accent1
        self.accent2 = accent2
        self.accent3 = accent3
        self.accent4 = accent4
        self.accent5 = accent5
        self.accent6 = accent6
        self.dark1 = dark1
        self.dark2 = dark2
        self.followedHyperlink = followedHyperlink
        self.hyperlink = hyperlink
        self.light1 = light1
        self.light2 = light2
    }

    private enum CodingKeys: String, CodingKey {
        case accent1
        case accent2
        case accent3
        case accent4
        case accent5
        case accent6
        case dark1
        case dark2
        case followedHyperlink
        case hyperlink
        case light1
        case light2
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        accent1 = try? values.decode(String.self, forKey: .accent1)
        accent2 = try? values.decode(String.self, forKey: .accent2)
        accent3 = try? values.decode(String.self, forKey: .accent3)
        accent4 = try? values.decode(String.self, forKey: .accent4)
        accent5 = try? values.decode(String.self, forKey: .accent5)
        accent6 = try? values.decode(String.self, forKey: .accent6)
        dark1 = try? values.decode(String.self, forKey: .dark1)
        dark2 = try? values.decode(String.self, forKey: .dark2)
        followedHyperlink = try? values.decode(String.self, forKey: .followedHyperlink)
        hyperlink = try? values.decode(String.self, forKey: .hyperlink)
        light1 = try? values.decode(String.self, forKey: .light1)
        light2 = try? values.decode(String.self, forKey: .light2)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (accent1 != nil) {
            try? container.encode(accent1, forKey: .accent1)
        }
        if (accent2 != nil) {
            try? container.encode(accent2, forKey: .accent2)
        }
        if (accent3 != nil) {
            try? container.encode(accent3, forKey: .accent3)
        }
        if (accent4 != nil) {
            try? container.encode(accent4, forKey: .accent4)
        }
        if (accent5 != nil) {
            try? container.encode(accent5, forKey: .accent5)
        }
        if (accent6 != nil) {
            try? container.encode(accent6, forKey: .accent6)
        }
        if (dark1 != nil) {
            try? container.encode(dark1, forKey: .dark1)
        }
        if (dark2 != nil) {
            try? container.encode(dark2, forKey: .dark2)
        }
        if (followedHyperlink != nil) {
            try? container.encode(followedHyperlink, forKey: .followedHyperlink)
        }
        if (hyperlink != nil) {
            try? container.encode(hyperlink, forKey: .hyperlink)
        }
        if (light1 != nil) {
            try? container.encode(light1, forKey: .light1)
        }
        if (light2 != nil) {
            try? container.encode(light2, forKey: .light2)
        }
    }

}

