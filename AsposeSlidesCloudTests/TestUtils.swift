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
    
    class func getTestValueInternal(functionName: String, name: String, type: String) -> (value: Any?, type: String?) {
        ensureRules()
        var value:  Any? = nil
        let ruleType: String? = nil
        let v = rules!["Values"] as! NSArray
        for vr in v {
            let rule = vr as! NSDictionary
            if (isGoodRule(rule, functionName, name, type)) {
                if (rule["Value"] != nil) {
                    if (rule["Value"] is NSNull) {
                        value = nil
                    } else {
                        value = untemplatize(rule["Value"], name, value)
                    }
                }
            }
        }
        if (value == nil) {
            if (type == "String") {
                return ("", nil)
            }
            if (type == "Bool") {
                return (false, nil)
            }
            if (type == "Int") {
                return (0, nil)
            }
            if (type == "Double") {
                return (0.0, nil)
            }
            if (type.starts(with: "[")) {
                return ([], nil)
            }
        }
        return (value, ruleType)
    }
    
    class func getTestValueForInvalid<T:Decodable>(functionName: String, name: String, invalidFieldName: String, type: String) -> T {
        let value : T = getTestValue(functionName: functionName, name: name, type: type)
        if name == invalidFieldName {
            return getInvalidTestValue(functionName: functionName, name: name, value: value, type: type)
        }
        return value
    }
    
    class func getTestValue<T:Decodable>(functionName: String, name: String, type: String) -> T {
        let valueInternal = getTestValueInternal(functionName: functionName, name: name, type: type)
        var value: Any? = valueInternal.value
        let ruleType: String? = valueInternal.type
        if value == nil {
            value = NSMutableDictionary()
        }
        if (value is NSDictionary) {
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: value as! NSDictionary)
                if (ruleType != nil) {
                    let result: (decodableObj: Decodable?, error: Error?) = ClassRegistry.getClassInstance(ruleType!, jsonData)
                    return result.decodableObj! as! T
                } else {
                    let result: (decodableObj: T?, error: Error?) = CodableHelper.decode(T.self, from: jsonData)
                    return result.decodableObj!
                }
            } catch {
            }
        }
        if type == "String" {
            return "\(value!)" as! T
        }
        let typedValue = value as? T
        if typedValue == nil {
            if (type == "String") {
                return "" as! T
            }
            if (type == "Bool") {
                return false as! T
            }
            if (type == "Int") {
                return 0 as! T
            }
            if (type == "Double") {
                return 0.0 as! T
            }
            if (type == "Data") {
                return "".data(using: .utf8) as! T
            }
            if (type.starts(with: "[")) {
                return [] as! T
            }
            let result: (decodableObj: Decodable?, error: Error?) = ClassRegistry.getClassInstance(type, "{}".data(using: .utf8)!)
            return result.decodableObj as! T
        }
        return typedValue!
    }
    
    class func getInvalidTestValue<T:Decodable>(functionName: String, name: String, value: Any, type: String) -> T {
        var invalidValue: Any? = getInvalidTestValueInternal(functionName: functionName, name: name, value: value, type: type)
        if invalidValue == nil {
            invalidValue = NSMutableDictionary()
            if (ClassRegistry.createInstance(type, [String:Any]()).error == nil) {
                return value as! T
            }
        }
        if (invalidValue is NSDictionary) {
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: invalidValue as! NSDictionary)
                let result: (decodableObj: T?, error: Error?) = CodableHelper.decode(T.self, from: jsonData)
                if result.decodableObj != nil {
                    return result.decodableObj!
                }
            } catch {
            }
        }
        if type == "String" {
            return "\(invalidValue!)" as! T
        }
        let typedValue = invalidValue as? T
        if typedValue == nil {
            if (type == "String") {
                return "" as! T
            }
            if (type == "Bool") {
                return false as! T
            }
            if (type == "Int") {
                return 0 as! T
            }
            if (type == "Double") {
                return 0.0 as! T
            }
            if (type == "Data") {
                return "".data(using: .utf8) as! T
            }
            if (type.starts(with: "[")) {
                return [] as! T
            }
            let result: (decodableObj: Decodable?, error: Error?) = ClassRegistry.getClassInstance(type, "{}".data(using: .utf8)!)
            return result.decodableObj as! T
        }
        return typedValue!
    }

    class func getInvalidTestValueInternal(functionName: String, name: String, value: Any, type: String) -> Any? {
        ensureRules()
        var result: Any? = value
        var invalidValue: Any? = nil
        let v = rules!["Values"] as! NSArray
        for vr in v {
            let rule = vr as! NSDictionary
            if (isGoodRule(rule, functionName, name, type)) {
                if (rule["InvalidValue"] != nil) {
                    if (rule["InvalidValue"] is NSNull) {
                        invalidValue = nil
                    } else {
                        invalidValue = rule["InvalidValue"]
                    }
                }
            }
        }
        result = untemplatize(invalidValue, name, value)
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
    
    class func untemplatize(_ template: Any? = nil, _ name: Any? = nil, _ value: Any? = nil) -> Any? {
        if (template == nil && value != nil) {
            let strValue = value as? String
            if strValue != nil {
                return strValue!
            }
        }
        if (template != nil) {
            var strTemplate = template as? String
            if strTemplate != nil {
                if strTemplate!.starts(with:"@") {
                    let lowerBound = String.Index(encodedOffset: 1)
                    let upperBound = String.Index(encodedOffset: strTemplate!.count)
                    strTemplate = String(strTemplate![lowerBound ..< upperBound])
                    return FileManager.default.contents(atPath: "TestData/" + strTemplate!)
                }
                if name != nil {
                    strTemplate = strTemplate!.replacingOccurrences(of: "%n", with: "\(name!)")
                } else {
                    strTemplate = strTemplate!.replacingOccurrences(of: "%n", with: "")
                }
                if value != nil {
                    strTemplate = strTemplate!.replacingOccurrences(of: "%v", with: "\(value!)")
                } else {
                    strTemplate = strTemplate!.replacingOccurrences(of: "%v", with: "")
                }
                return strTemplate!
            }
        }
        if (template == nil) {
            return nil
        }
        return template
    }
    
    class func initialize(_ functionName: String, _ parameterName: String = "", _ parameterType: String = "", _ parameterValue: Any? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        ensureTestFiles() { error -> Void in
            ensureRules()
            let f = rules!["Files"]! as! NSArray
            let frules = NSMutableDictionary()
            for file in f {
                let rule = file as! NSDictionary
                if (isGoodRule(rule, functionName, parameterName, parameterType)) {
                    let actualName = untemplatize(rule["File"], parameterName, parameterValue) as! String
                    var path = "TempSlidesSDK"
                    if (rule["Folder"] != nil) {
                        path = untemplatize(rule["Folder"], parameterName, parameterValue) as! String
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
                SlidesAPI.copyFile("TempTests/" + (rule["ActualName"] as! String), path) { (response, error) -> Void in
                    initializeRules(functionName: functionName, parameterName: parameterName, ruleIndex: ruleIndex + 1, rules: rules) { (response, error) -> Void in
                        completion(response, error)
                    }
                }
            } else if (action == "Delete") {
                SlidesAPI.deleteFile(path) { (response, error) -> Void in
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
            SlidesAPI.downloadFile(versionPath) { (response, error) -> Void in
                var version = "0"
                if error == nil && response != nil {
                    version = String(decoding: response!, as: UTF8.self)
                }
                if version != expectedVersion {
                    do {
                        let files = try FileManager.default.contentsOfDirectory(atPath: "TestData")
                        uploadFiles(files: files, fileIndex: 0) { (response, error) -> Void in
                            let data = expectedVersion.data(using: .utf8)
                            SlidesAPI.uploadFile(versionPath, data!) { (response, error) -> Void in
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
            SlidesAPI.uploadFile("TempTests/" + files[fileIndex], fileData!) { (response, error) -> Void in
                uploadFiles(files: files, fileIndex: fileIndex + 1) { (response, error) -> Void in
                    completion(response, error)
                }
            }
        } else {
            completion(nil, nil)
        }
    }
    
    class func assertError(error: Error?, functionName: String, parameterName: String, parameterType: String, parameterValue: Any) {
        var code = 0
        var message = "Unexpected message"
        ensureRules()
        var mustFail = true
        let vn = rules!["OKToNotFail"] as! NSArray
        for vr in vn {
            let rule = vr as! NSDictionary
            if (isGoodRule(rule, functionName, parameterName, parameterType)) {
                mustFail = false
            }
        }
        if (mustFail) {
            let v = rules!["Results"] as! NSArray
            for vr in v {
                let rule = vr as! NSDictionary
                if (isGoodRule(rule, functionName, parameterName, parameterType)) {
                    if (rule["Code"] != nil) {
                       code = rule["Code"] as! Int
                    }
                    if (rule["Message"] != nil) {
                        message = rule["Message"] as! String
                    }
                }
            }
            message = untemplatize(message, parameterName, parameterValue) as! String
            XCTAssertNotNil(error)
            if (error != nil) {
                switch (error!) {
                case ErrorResponse.error(let actualCode, let data, _):
                    XCTAssertEqual(code, actualCode)
                    if data!.count != 0 { //TODO: remove this workaround
                        XCTAssertTrue(String(decoding: data!, as: UTF8.self).contains(message))
                    }
                default:
                    XCTFail("Unexpected error")
                }
            }
        }
    }
    
    class func isGoodRule(_ rule: NSDictionary, _ functionName: String, _ parameterName: String, _ parameterType: String) -> Bool {
        let ruleInvalid = rule["Invalid"]
        return isGoodRuleValue(rule["Method"], functionName)
            && ((ruleInvalid == nil) || (ruleInvalid as! Bool) == (parameterName != ""))
            && isGoodRuleValue(rule["Parameter"], parameterName)
            && isGoodRuleValue(rule["Language"], "Swift")
            && isGoodRuleType(rule["Type"], parameterType)
    }
    
    class func isGoodRuleValue(_ ruleValue: Any?, _ actualValue: String) -> Bool {
        if ruleValue == nil {
            return true
        }
        let ruleValueString = ruleValue as! String
        if ruleValueString.starts(with:"/") {
            let lowerBound = String.Index(encodedOffset: 1)
            let upperBound = String.Index(encodedOffset: ruleValueString.count - 1)
            let regex = ruleValueString[lowerBound ..< upperBound].lowercased()
            return actualValue.lowercased().range(of: regex, options:.regularExpression) != nil
        }
        return actualValue.caseInsensitiveCompare(ruleValueString) == .orderedSame
    }
    
    class func isGoodRuleType(_ ruleType: Any?, _ actualType: String) -> Bool {
        if ruleType == nil {
            return true
        }
        if actualType == "" {
            return false
        }
        let ruleTypeString = ruleType as! String
        if ruleTypeString == "number" {
            return actualType == "Int"
        }
        if ruleTypeString == "int" {
            return actualType == "Int"
        }
        if ruleTypeString == "int[]" {
            return actualType == "[Int]"
        }
        if ruleTypeString == "bool" {
            return actualType == "Bool"
        }
        if ruleTypeString == "stream" {
            return actualType == "Data"
        }
        if ruleTypeString == "model" {
            return ClassRegistry.createInstance(actualType, [String:Any]()).error == nil
        }
        if ClassRegistry.createInstance(ruleTypeString, [String:Any]()).error == nil {
            return ClassRegistry.isSubclass(ruleTypeString, actualType)
        }
        return false
    }
}

