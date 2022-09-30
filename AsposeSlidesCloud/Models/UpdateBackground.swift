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


/** Update background task. */
public class UpdateBackground: Task {

    /** List of slide indices. */
    public var slides: [Int]?
    /** Background DTO. */
    public var background: SlideBackground?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let slidesValue = source["slides"] ?? source["Slides"]
        if slidesValue != nil {
            self.slides = slidesValue! as? [Int]
        }
        let backgroundValue = source["background"] ?? source["Background"]
        if backgroundValue != nil {
            let backgroundDictionaryValue = backgroundValue! as? [String:Any]
            if backgroundDictionaryValue != nil {
                let (backgroundInstance, error) = ClassRegistry.getClassFromDictionary(SlideBackground.self, backgroundDictionaryValue!)
                if error == nil && backgroundInstance != nil {
                    self.background = backgroundInstance! as? SlideBackground
                }
            }
        }
    }

    public init(type: ModelType? = nil, slides: [Int]? = nil, background: SlideBackground? = nil) {
        super.init(type: type)
        self.slides = slides
        self.background = background
        self.type = ModelType.updateBackground
    }

    private enum CodingKeys: String, CodingKey {
        case slides
        case background
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        slides = try? values.decode([Int].self, forKey: .slides)
        background = try? values.decode(SlideBackground.self, forKey: .background)
        self.type = ModelType.updateBackground
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (slides != nil) {
            try? container.encode(slides, forKey: .slides)
        }
        if (background != nil) {
            try? container.encode(background, forKey: .background)
        }
    }

}

