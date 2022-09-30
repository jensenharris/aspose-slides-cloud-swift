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


/** Error */
public class ModelError: Codable {

    /** Code              */
    public var code: String?
    /** Message              */
    public var message: String?
    /** Description              */
    public var description: String?
    /** Inner Error              */
    public var innerError: ErrorDetails?

    func fillValues(_ source: [String:Any]) throws {
        let codeValue = source["code"] ?? source["Code"]
        if codeValue != nil {
            self.code = codeValue! as? String
        }
        let messageValue = source["message"] ?? source["Message"]
        if messageValue != nil {
            self.message = messageValue! as? String
        }
        let descriptionValue = source["description"] ?? source["Description"]
        if descriptionValue != nil {
            self.description = descriptionValue! as? String
        }
        let innerErrorValue = source["innerError"] ?? source["InnerError"]
        if innerErrorValue != nil {
            let innerErrorDictionaryValue = innerErrorValue! as? [String:Any]
            if innerErrorDictionaryValue != nil {
                let (innerErrorInstance, error) = ClassRegistry.getClassFromDictionary(ErrorDetails.self, innerErrorDictionaryValue!)
                if error == nil && innerErrorInstance != nil {
                    self.innerError = innerErrorInstance! as? ErrorDetails
                }
            }
        }
    }

    public init(code: String? = nil, message: String? = nil, description: String? = nil, innerError: ErrorDetails? = nil) {
        self.code = code
        self.message = message
        self.description = description
        self.innerError = innerError
    }

    private enum CodingKeys: String, CodingKey {
        case code
        case message
        case description
        case innerError
    }

}

