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


/** Request for presentations merge */
public class PresentationsMergeRequest: Codable {

    /** Gets or sets the presentation paths. */
    public var presentationPaths: [String]?
    /** Gets or sets the presentation passwords. */
    public var presentationPasswords: [String]?

    func fillValues(_ source: [String:Any]) throws {
        let presentationPathsValue = source["presentationPaths"] ?? source["PresentationPaths"]
        if presentationPathsValue != nil {
            self.presentationPaths = presentationPathsValue! as? [String]
        }
        let presentationPasswordsValue = source["presentationPasswords"] ?? source["PresentationPasswords"]
        if presentationPasswordsValue != nil {
            self.presentationPasswords = presentationPasswordsValue! as? [String]
        }
    }

    public init(presentationPaths: [String]? = nil, presentationPasswords: [String]? = nil) {
        self.presentationPaths = presentationPaths
        self.presentationPasswords = presentationPasswords
    }

    private enum CodingKeys: String, CodingKey {
        case presentationPaths
        case presentationPasswords
    }

}

