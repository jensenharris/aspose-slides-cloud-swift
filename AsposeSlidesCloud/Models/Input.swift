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


/** Represents input document for pipeline. */
public class Input: Codable {

    /** Get or sets template document. If property is null new empty presentation will be created. */
    public var template: InputFile?
    /** Get or sets html data for generate new presentation. */
    public var htmlData: InputFile?
    /** Get or sets data for template engine. */
    public var templateData: InputFile?

    func fillValues(_ source: [String:Any]) throws {
        let templateValue = source["template"]
        if templateValue != nil {
            let templateDictionaryValue = templateValue! as? [String:Any]
            if templateDictionaryValue != nil {
                let (templateInstance, error) = ClassRegistry.getClassFromDictionary(InputFile.self, templateDictionaryValue!)
                if error == nil && templateInstance != nil {
                    self.template = templateInstance! as? InputFile
                }
            }
        }
        let htmlDataValue = source["htmlData"]
        if htmlDataValue != nil {
            let htmlDataDictionaryValue = htmlDataValue! as? [String:Any]
            if htmlDataDictionaryValue != nil {
                let (htmlDataInstance, error) = ClassRegistry.getClassFromDictionary(InputFile.self, htmlDataDictionaryValue!)
                if error == nil && htmlDataInstance != nil {
                    self.htmlData = htmlDataInstance! as? InputFile
                }
            }
        }
        let templateDataValue = source["templateData"]
        if templateDataValue != nil {
            let templateDataDictionaryValue = templateDataValue! as? [String:Any]
            if templateDataDictionaryValue != nil {
                let (templateDataInstance, error) = ClassRegistry.getClassFromDictionary(InputFile.self, templateDataDictionaryValue!)
                if error == nil && templateDataInstance != nil {
                    self.templateData = templateDataInstance! as? InputFile
                }
            }
        }
    }

    public init(template: InputFile? = nil, htmlData: InputFile? = nil, templateData: InputFile? = nil) {
        self.template = template
        self.htmlData = htmlData
        self.templateData = templateData
    }

    private enum CodingKeys: String, CodingKey {
        case template
        case htmlData
        case templateData
    }

}

