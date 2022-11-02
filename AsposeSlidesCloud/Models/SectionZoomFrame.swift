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


/** Section zoom frame.              */
public class SectionZoomFrame: ZoomObject {

    /** Index of the target section */
    public var targetSectionIndex: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let targetSectionIndexValue = source["targetSectionIndex"] ?? source["TargetSectionIndex"]
        if targetSectionIndexValue != nil {
            self.targetSectionIndex = targetSectionIndexValue! as? Int
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, x: Double? = nil, y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, imageType: ImageType? = nil, returnToParent: Bool? = nil, showBackground: Bool? = nil, image: ResourceUri? = nil, transitionDuration: Double? = nil, targetSectionIndex: Int? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, x: x, y: y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, imageType: imageType, returnToParent: returnToParent, showBackground: showBackground, image: image, transitionDuration: transitionDuration)
        self.targetSectionIndex = targetSectionIndex
        self.type = ModelType.sectionZoomFrame
    }

    private enum CodingKeys: String, CodingKey {
        case targetSectionIndex
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        targetSectionIndex = try? values.decode(Int.self, forKey: .targetSectionIndex)
        self.type = ModelType.sectionZoomFrame
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (targetSectionIndex != nil) {
            try? container.encode(targetSectionIndex, forKey: .targetSectionIndex)
        }
    }

}

