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
import XCTest
@testable import AsposeSlidesCloud

class TestUtils {
    static var isInitialized = false
    static var rules: NSDictionary? = nil
    
    class func getTestValueInternal(functionName: String, name: String, type: String) -> Any? {
        ensureRules()
        if type == "Data" {
            var fileName = "test.pptx"
            if functionName.caseInsensitiveCompare("postSlidesDocumentFromPdf") == .orderedSame {
                fileName = "test.pdf"
            }
            return FileManager.default.contents(atPath: "TestData/" + fileName)
        }
        var value: Any? = "test" + name
        let v = rules!["Values"] as! NSArray
        for vr in v {
            let rule = vr as! NSDictionary
            if (isGoodRule(rule, functionName, name)) {
                if (rule["Value"] != nil) {
                    if (rule["Value"] is NSNull) {
                        value = nil
                    } else {
                        value = rule["Value"]
                    }
                }
            }
        }
        if (value == nil) {
            if (type == "String") {
                return ""
            }
            if (type == "Bool") {
                return false
            }
            if (type == "Int") {
                return 0
            }
            if (type == "Double") {
                return 0.0
            }
            if (type.starts(with: "[")) {
                return []
            }
        }
        return value
    }
    
    class func getTestValue<T:Decodable>(functionName: String, name: String, type: String) -> T {
        var value: Any? = getTestValueInternal(functionName: functionName, name: name, type: type)
        if value == nil {
            value = NSMutableDictionary()
        }
        if (value is NSDictionary) {
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: value as! NSDictionary)
                let result: (decodableObj: T?, error: Error?) = CodableHelper.decode(T.self, from: jsonData)
                return result.decodableObj!
            } catch {
            }
        }
        return value as! T
    }
    
    class func getInvalidTestValue<T:Decodable>(functionName: String, name: String, value: Any, type: String) -> T {
        var invalidValue: Any? = getInvalidTestValueInternal(functionName: functionName, name: name, value: value, type: type)
        if invalidValue == nil {
            invalidValue = NSMutableDictionary()
        }
        if (invalidValue is NSDictionary) {
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: invalidValue as! NSDictionary)
                let result: (decodableObj: T?, error: Error?) = CodableHelper.decode(T.self, from: jsonData)
                return result.decodableObj!
            } catch {
            }
        }
        return invalidValue as! T
    }

    class func getInvalidTestValueInternal(functionName: String, name: String, value: Any, type: String) -> Any? {
        ensureRules()
        if type == "Data" {
            return "".data(using: .utf8)
        }
        var result: Any? = value
        var invalidValue: Any? = nil
        let v = rules!["Values"] as! NSArray
        for vr in v {
            let rule = vr as! NSDictionary
            if (isGoodRule(rule, functionName, name)) {
                if (rule["InvalidValue"] != nil) {
                    if (rule["InvalidValue"] is NSNull) {
                        invalidValue = nil
                    } else {
                        invalidValue = rule["InvalidValue"]
                    }
                }
            }
        }
        result = untemplatize(invalidValue, value)
        if (result == nil) {
            if (type == "String") {
                return ""
            }
            if (type == "Bool") {
                return false
            }
            if (type.starts(with: "[")) {
                return []
            }
        }
        return result
    }
    
    class func untemplatize(_ template: Any? = nil, _ value: Any? = nil) -> Any? {
        if (template == nil && value != nil) {
            let strValue = value as? String
            if strValue != nil {
                return strValue!
            }
        }
        if (template != nil) {
            let strTemplate = template as? String
            if strTemplate != nil {
                if value != nil {
                    return strTemplate!.replacingOccurrences(of: "%v", with: "\(value!)")
                }
                return strTemplate!.replacingOccurrences(of: "%v", with: "")
            }
        }
        if (template == nil) {
            return nil
        }
        return template
    }
    
    class func initialize(_ functionName: String, _ parameterName: String = "", _ parameterValue: Any? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        ensureTestFiles() { error -> Void in
            ensureRules()
            let f = rules!["Files"]! as! NSArray
            let frules = NSMutableDictionary()
            for file in f {
                let rule = file as! NSDictionary
                if (isGoodRule(rule, functionName, parameterName)) {
                    let actualName = untemplatize(rule["File"], parameterValue) as! String
                    var path = "TempSlidesSDK"
                    if (rule["Folder"] != nil) {
                        path = untemplatize(rule["Folder"], parameterValue) as! String
                    }
                    path = path + "/" + actualName
                    let mRule = rule.mutableCopy() as! NSMutableDictionary
                    mRule["ActualName"] = actualName
                    frules[path] = mRule
                }
            }
            initializeRules(functionName: functionName, parameterName: parameterName, ruleIndex: 0, rules: frules) { (response, error) -> Void in
                completion(nil, error)
            }
        }
    }
    
    class func ensureRules() {
        if (rules == nil) {
            do {
                let file = FileManager.default.contents(atPath: "testRules.json")
                let json = try JSONSerialization.jsonObject(with: file!)
                rules = json as? NSDictionary
            } catch {
            }
        }
    }

    class func initializeRules(functionName: String, parameterName: String, ruleIndex: Int, rules: NSDictionary, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        if (ruleIndex >= rules.count) {
            completion(nil, nil);
        } else {
            let path = rules.allKeys[ruleIndex] as! String
            let rule = rules[path] as! NSDictionary
            let action = rule["Action"] as! String
            if (action == "Put") {
                let cr = CopyFileRequest(srcPath: "TempTests/" + (rule["ActualName"] as! String), destPath: path, srcStorageName: "", destStorageName: "", versionId: "")
                SlidesAPI.copyFile(request: cr) { (response, error) -> Void in
                    initializeRules(functionName: functionName, parameterName: parameterName, ruleIndex: ruleIndex + 1, rules: rules) { (response, error) -> Void in
                        completion(response, error)
                    }
                }
            } else if (action == "Delete") {
                let cr = DeleteFileRequest(path: path, storageName: "", versionId: "")
                    SlidesAPI.deleteFile(request: cr) { (response, error) -> Void in
                        initializeRules(functionName: functionName, parameterName: parameterName, ruleIndex: ruleIndex + 1, rules: rules) { (response, error) -> Void in
                            completion(response, error)
                        }
                    }
            } else {
                initializeRules(functionName: functionName, parameterName: parameterName, ruleIndex: ruleIndex + 1, rules: rules) { (response, error) -> Void in
                    completion(response, error)
                }
            }
        }
    }
    
    class func ensureTestFiles(completion: @escaping ((_ error: Error?) -> Void)) {
        if !isInitialized {
            do {
                let file = FileManager.default.contents(atPath: "testConfig.json")
                let json = try JSONSerialization.jsonObject(with: file!)
                let config = json as! [String:Any]
                if config["ClientId"] != nil {
                    AsposeSlidesCloudAPI.appSid = config["ClientId"] as! String
                }
                if config["ClientSecret"] != nil {
                    AsposeSlidesCloudAPI.appKey = config["ClientSecret"] as! String
                }
                if config["BaseUrl"] != nil {
                    AsposeSlidesCloudAPI.basePath = config["BaseUrl"] as! String
                }
                if config["AuthBaseUrl"] != nil {
                    AsposeSlidesCloudAPI.authBasePath = config["AuthBaseUrl"] as! String
                }
                if config["Debug"] != nil {
                    AsposeSlidesCloudAPI.debug = config["Debug"] as! Bool
                }
            } catch {
            }

            let versionPath = "TempTests/version.txt"
            let expectedVersion = "1"
            let r = DownloadFileRequest(path: versionPath, storageName: "", versionId: "")
            SlidesAPI.downloadFile(request: r) { (response, error) -> Void in
                let version = String(decoding: response!, as: UTF8.self)
                if (version != expectedVersion) {
                    do {
                        let files = try FileManager.default.contentsOfDirectory(atPath: "TestData")
                        uploadFiles(files: files, fileIndex: 0) { (response, error) -> Void in
                            let data = expectedVersion.data(using: .utf8)
                            let vr = UploadFileRequest(path: versionPath, file: data!, storageName: "")
                            SlidesAPI.uploadFile(request: vr) { (response, error) -> Void in
                                isInitialized = true
                                completion(error)
                            }
                        }
                    } catch {
                    }
                } else {
                    isInitialized = true
                    completion(error)
                }
            }
        } else {
            completion(nil)
        }
    }

    class func uploadFiles(files: [String], fileIndex: Int, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        if (fileIndex < files.count) {
            let fileData = FileManager.default.contents(atPath: "TestData/" + files[fileIndex])
            let r = UploadFileRequest(path: "TempTests/" + files[fileIndex], file: fileData!, storageName: "")
            SlidesAPI.uploadFile(request: r) { (response, error) -> Void in
                uploadFiles(files: files, fileIndex: fileIndex + 1) { (response, error) -> Void in
                    completion(response, error)
                }
            }
        } else {
            completion(nil, nil)
        }
    }
    
    class func assertError(error: Error?, functionName: String, parameterName: String, parameterValue: Any) {
        var code = 0
        var message = "Unexpected message"
        ensureRules()
        var mustFail = true
        let vn = rules!["OKToNotFail"] as! NSArray
        for vr in vn {
            let rule = vr as! NSDictionary
            if (isGoodRule(rule, functionName, parameterName)) {
                mustFail = false
            }
        }
        if (mustFail) {
            let v = rules!["Results"] as! NSArray
            for vr in v {
                let rule = vr as! NSDictionary
                if (isGoodRule(rule, functionName, parameterName)) {
                    if (rule["Code"] != nil) {
                       code = rule["Code"] as! Int
                    }
                    if (rule["Message"] != nil) {
                        message = rule["Message"] as! String
                    }
                }
            }
            message = untemplatize(message, parameterValue) as! String
            XCTAssertNotNil(error)
            if (error != nil) {
                switch (error!) {
                case ErrorResponse.error(let actualCode, let data, _):
                    XCTAssertEqual(code, actualCode)
                    XCTAssertTrue(String(decoding: data!, as: UTF8.self).contains(message))
                default:
                    XCTFail("Unexpected error")
                }
            }
        }
    }
    
    class func isGoodRule(_ rule: NSDictionary, _ functionName: String, _ parameterName: String) -> Bool {
        let ruleMethod = rule["Method"]
        let ruleInvalid = rule["Invalid"]
        let ruleParameter = rule["Parameter"]
        let ruleLanguage = rule["Language"]
        return ((ruleMethod == nil) || (functionName.caseInsensitiveCompare(ruleMethod as! String) == .orderedSame))
            && ((ruleInvalid == nil) || (ruleInvalid as! Bool) == (parameterName != ""))
            && ((ruleParameter == nil) || parameterName.caseInsensitiveCompare(ruleParameter as! String) == .orderedSame)
            && ((ruleLanguage == nil) || (ruleLanguage as! String) == "Swift")
    }
}
