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


/** Summary zoom frame. */
public class SummaryZoomFrame: ShapeBase {

    public enum ZoomLayout: String, Codable { 
        case gridLayout = "GridLayout"
        case fixedLayout = "FixedLayout"
    }
    /** Zoom layout type */
    public var zoomLayout: ZoomLayout?
    /** Zoom frame sections */
    public var sections: [SummaryZoomSection]?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let zoomLayoutValue = source["zoomLayout"] ?? source["ZoomLayout"]
        if zoomLayoutValue != nil {
            let zoomLayoutStringValue = zoomLayoutValue! as? String
            if zoomLayoutStringValue != nil {
                let zoomLayoutEnumValue = ZoomLayout(rawValue: zoomLayoutStringValue!)
                if zoomLayoutEnumValue != nil {
                    self.zoomLayout = zoomLayoutEnumValue!
                }
            }
        }
        let sectionsValue = source["sections"] ?? source["Sections"]
        if sectionsValue != nil {
            var sectionsArray: [SummaryZoomSection] = []
            let sectionsDictionaryValue = sectionsValue! as? [Any]
            if sectionsDictionaryValue != nil {
                sectionsDictionaryValue!.forEach { sectionsAnyItem in
                    let sectionsItem = sectionsAnyItem as? [String:Any]
                    var added = false
                    if sectionsItem != nil {
                        let (sectionsInstance, error) = ClassRegistry.getClassFromDictionary(SummaryZoomSection.self, sectionsItem!)
                        if error == nil && sectionsInstance != nil {
                            let sectionsArrayItem = sectionsInstance! as? SummaryZoomSection
                            if sectionsArrayItem != nil {
                                sectionsArray.append(sectionsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        sectionsArray.append(SummaryZoomSection())
                    }
                }
            }
            self.sections = sectionsArray
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, zoomLayout: ZoomLayout? = nil, sections: [SummaryZoomSection]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type)
        self.zoomLayout = zoomLayout
        self.sections = sections
        self.type = ModelType.summaryZoomFrame
    }

    private enum CodingKeys: String, CodingKey {
        case zoomLayout
        case sections
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        zoomLayout = try? values.decode(ZoomLayout.self, forKey: .zoomLayout)
        sections = try? values.decode([SummaryZoomSection].self, forKey: .sections)
        self.type = ModelType.summaryZoomFrame
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (zoomLayout != nil) {
            try? container.encode(zoomLayout, forKey: .zoomLayout)
        }
        if (sections != nil) {
            try? container.encode(sections, forKey: .sections)
        }
    }

}

