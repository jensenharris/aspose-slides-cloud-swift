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


/** The sizing of the slide region. */
public class NormalViewRestoredProperties: Codable {

    /** True if the size of the side content region should compensate for the new size when resizing the window containing the view within the application. */
    public var autoAdjust: Bool?
    /** The size of the slide region. */
    public var dimensionSize: Double?

    func fillValues(_ source: [String:Any]) throws {
        let autoAdjustValue = source["autoAdjust"]
        if autoAdjustValue != nil {
            self.autoAdjust = autoAdjustValue! as? Bool
        }
        let dimensionSizeValue = source["dimensionSize"]
        if dimensionSizeValue != nil {
            self.dimensionSize = dimensionSizeValue! as? Double
        }
    }

    public init(autoAdjust: Bool? = nil, dimensionSize: Double? = nil) {
        self.autoAdjust = autoAdjust
        self.dimensionSize = dimensionSize
    }

    private enum CodingKeys: String, CodingKey {
        case autoAdjust
        case dimensionSize
    }

}

