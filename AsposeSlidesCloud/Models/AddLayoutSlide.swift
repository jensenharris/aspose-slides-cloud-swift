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


/** Add layout slide task. */
public class AddLayoutSlide: Task {

    /** Source file. */
    public var cloneFromFile: InputFile?
    /** Source layout slide position. */
    public var cloneFromPosition: Int?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let cloneFromFileValue = source["cloneFromFile"]
        if cloneFromFileValue != nil {
            let cloneFromFileDictionaryValue = cloneFromFileValue! as? [String:Any]
            if cloneFromFileDictionaryValue != nil {
                let (cloneFromFileInstance, error) = ClassRegistry.getClassFromDictionary(InputFile.self, cloneFromFileDictionaryValue!)
                if error == nil && cloneFromFileInstance != nil {
                    self.cloneFromFile = cloneFromFileInstance! as? InputFile
                }
            }
        }
        let cloneFromPositionValue = source["cloneFromPosition"]
        if cloneFromPositionValue != nil {
            self.cloneFromPosition = cloneFromPositionValue! as? Int
        }
    }

    public init(type: ModelType? = nil, cloneFromFile: InputFile? = nil, cloneFromPosition: Int? = nil) {
        super.init(type: type)
        self.cloneFromFile = cloneFromFile
        self.cloneFromPosition = cloneFromPosition
        self.type = ModelType.addLayoutSlide
    }

    private enum CodingKeys: String, CodingKey {
        case cloneFromFile
        case cloneFromPosition
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cloneFromFile = try? values.decode(InputFile.self, forKey: .cloneFromFile)
        cloneFromPosition = try? values.decode(Int.self, forKey: .cloneFromPosition)
        self.type = ModelType.addLayoutSlide
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (cloneFromFile != nil) {
            try? container.encode(cloneFromFile, forKey: .cloneFromFile)
        }
        if (cloneFromPosition != nil) {
            try? container.encode(cloneFromPosition, forKey: .cloneFromPosition)
        }
    }

}

