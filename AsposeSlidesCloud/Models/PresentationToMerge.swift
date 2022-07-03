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


/** Represents presentation to merge */
public class PresentationToMerge: Codable {

    public enum Source: String, Codable { 
        case storage = "Storage"
        case request = "Request"
    }
    /** Get or sets the presentation path */
    public var path: String?
    /** Get or sets the presentation password */
    public var password: String?
    /** Get or sets the indexes of slides to merge */
    public var slides: [Int]?
    /** Merge (request or storage).  */
    public var source: Source?

    func fillValues(_ source: [String:Any]) throws {
        let pathValue = source["path"]
        if pathValue != nil {
            self.path = pathValue! as? String
        }
        let passwordValue = source["password"]
        if passwordValue != nil {
            self.password = passwordValue! as? String
        }
        let slidesValue = source["slides"]
        if slidesValue != nil {
            self.slides = slidesValue! as? [Int]
        }
        let sourceValue = source["source"]
        if sourceValue != nil {
            let sourceStringValue = sourceValue! as? String
            if sourceStringValue != nil {
                let sourceEnumValue = Source(rawValue: sourceStringValue!)
                if sourceEnumValue != nil {
                    self.source = sourceEnumValue!
                }
            }
        }
    }

    public init(path: String? = nil, password: String? = nil, slides: [Int]? = nil, source: Source? = nil) {
        self.path = path
        self.password = password
        self.slides = slides
        self.source = source
    }

    private enum CodingKeys: String, CodingKey {
        case path
        case password
        case slides
        case source
    }

}

