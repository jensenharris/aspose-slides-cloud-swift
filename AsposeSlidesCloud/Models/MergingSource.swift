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


/** Merging source. */
public class MergingSource: Codable {

    /** Source file. */
    public var input: InputFile?
    /** Indices of slides to be merged. */
    public var slides: [Int]?

    func fillValues(_ source: [String:Any]) throws {
        let inputValue = source["input"]
        if inputValue != nil {
            let inputDictionaryValue = inputValue! as? [String:Any]
            if inputDictionaryValue != nil {
                let (inputInstance, error) = ClassRegistry.getClassFromDictionary(InputFile.self, inputDictionaryValue!)
                if error == nil && inputInstance != nil {
                    self.input = inputInstance! as? InputFile
                }
            }
        }
        let slidesValue = source["slides"]
        if slidesValue != nil {
            self.slides = slidesValue! as? [Int]
        }
    }

    public init(input: InputFile? = nil, slides: [Int]? = nil) {
        self.input = input
        self.slides = slides
    }

    private enum CodingKeys: String, CodingKey {
        case input
        case slides
    }

}

