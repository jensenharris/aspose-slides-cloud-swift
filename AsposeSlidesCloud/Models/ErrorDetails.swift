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


/** The error details */
public class ErrorDetails: Codable {

    /** The request id */
    public var requestId: String?
    /** Date */
    public var date: Date?

    func fillValues(_ source: [String:Any]) throws {
        let requestIdValue = source["requestId"] ?? source["RequestId"]
        if requestIdValue != nil {
            self.requestId = requestIdValue! as? String
        }
        let dateValue = source["date"] ?? source["Date"]
        if dateValue != nil {
            let dateDictionaryValue = dateValue! as? [String:Any]
            if dateDictionaryValue != nil {
                let (dateInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, dateDictionaryValue!)
                if error == nil && dateInstance != nil {
                    self.date = dateInstance! as? Date
                }
            }
        }
    }

    public init(requestId: String? = nil, date: Date? = nil) {
        self.requestId = requestId
        self.date = date
    }

    private enum CodingKeys: String, CodingKey {
        case requestId
        case date
    }

}

