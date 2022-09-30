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


/** Represents AutoShape resource. */
public class Shape: GeometryShape {

    /** Gets or sets the text. */
    public var text: String?
    /** Get or sets list to paragraphs list */
    public var paragraphs: ResourceUri?
    /** Returns TextFrame&#39;s formatting properties. */
    public var textFrameFormat: TextFrameFormat?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let textValue = source["text"] ?? source["Text"]
        if textValue != nil {
            self.text = textValue! as? String
        }
        let paragraphsValue = source["paragraphs"] ?? source["Paragraphs"]
        if paragraphsValue != nil {
            let paragraphsDictionaryValue = paragraphsValue! as? [String:Any]
            if paragraphsDictionaryValue != nil {
                let (paragraphsInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, paragraphsDictionaryValue!)
                if error == nil && paragraphsInstance != nil {
                    self.paragraphs = paragraphsInstance! as? ResourceUri
                }
            }
        }
        let textFrameFormatValue = source["textFrameFormat"] ?? source["TextFrameFormat"]
        if textFrameFormatValue != nil {
            let textFrameFormatDictionaryValue = textFrameFormatValue! as? [String:Any]
            if textFrameFormatDictionaryValue != nil {
                let (textFrameFormatInstance, error) = ClassRegistry.getClassFromDictionary(TextFrameFormat.self, textFrameFormatDictionaryValue!)
                if error == nil && textFrameFormatInstance != nil {
                    self.textFrameFormat = textFrameFormatInstance! as? TextFrameFormat
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, text: String? = nil, paragraphs: ResourceUri? = nil, textFrameFormat: TextFrameFormat? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, shapeType: shapeType)
        self.text = text
        self.paragraphs = paragraphs
        self.textFrameFormat = textFrameFormat
        self.type = ModelType.shape
    }

    private enum CodingKeys: String, CodingKey {
        case text
        case paragraphs
        case textFrameFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        text = try? values.decode(String.self, forKey: .text)
        paragraphs = try? values.decode(ResourceUri.self, forKey: .paragraphs)
        textFrameFormat = try? values.decode(TextFrameFormat.self, forKey: .textFrameFormat)
        self.type = ModelType.shape
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (text != nil) {
            try? container.encode(text, forKey: .text)
        }
        if (paragraphs != nil) {
            try? container.encode(paragraphs, forKey: .paragraphs)
        }
        if (textFrameFormat != nil) {
            try? container.encode(textFrameFormat, forKey: .textFrameFormat)
        }
    }

}

