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


import XCTest
import ZIPFoundation
@testable import AsposeSlidesCloud

class SplitTests : XCTestCase {
    static var allTests : [(String, (SplitTests) -> () -> ())] = [
        ("testSplitStorage", testSplitStorage),
        ("testSplitRequest", testSplitRequest),
        ("testSplitRequestToStorage", testSplitRequestToStorage),
        ("testSplitWithOptions", testSplitWithOptions),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testSplitStorage() {
        let expectation = self.expectation(description: "testSplitStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.split(fileName, nil, "", nil, nil, nil, nil, "", password, folderName) { (result1, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result1)
                XCTAssertNotNil(result1!.slides)
                SlidesAPI.split(fileName, nil, "", nil, nil, 2, 3, "", password, folderName) { (result2, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result2)
                    XCTAssertNotNil(result2!.slides)
                    XCTAssertEqual(2, result2!.slides!.count)
                    XCTAssertGreaterThan(result1!.slides!.count, result2!.slides!.count)
                    let url = result1!.slides![0].href!
                    let range = url.range(of: "/storage/file/")
                    XCTAssertNotNil(range)
                    let path = String(url[range!.upperBound...])
                    SlidesAPI.objectExists(path) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        XCTAssertNotNil(result!.exists)
                        XCTAssertTrue(result!.exists!)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSplitRequest() {
        let expectation = self.expectation(description: "testSplitRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let source = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(source)
            let password = "password"
            SlidesAPI.splitOnline(source!, "png", nil, nil, nil, nil, password) { (result1, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result1)
                SlidesAPI.splitOnline(source!, "png", nil, nil, 2, 3, password) { (result2, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result2)
                    let archive1 = Archive(data: result1!, accessMode: .read)
                    var count1 = 0
                    for _ in archive1! {
                        count1 += 1
                    }
                    let archive2 = Archive(data: result2!, accessMode: .read)
                    var count2 = 0
                    for _ in archive2! {
                        count2 += 1
                    }
                    XCTAssertEqual(2, count2)
                    XCTAssertGreaterThan(count1, count2)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSplitRequestToStorage() {
        let expectation = self.expectation(description: "testSplitRequestToStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let source = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(source)
            let password = "password"
            SlidesAPI.splitAndSaveOnline(source!, "png", "", nil, nil, nil, nil, password) { (result1, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result1)
                XCTAssertNotNil(result1!.slides)
                SlidesAPI.splitAndSaveOnline(source!, "png", "", nil, nil, 2, 3, password) { (result2, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result2)
                    XCTAssertNotNil(result2!.slides)
                    let url = result1!.slides![0].href!
                    let range = url.range(of: "/storage/file/")
                    XCTAssertNotNil(range)
                    let path = String(url[range!.upperBound...])
                    SlidesAPI.objectExists(path) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        XCTAssertNotNil(result!.exists)
                        XCTAssertTrue(result!.exists!)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSplitWithOptions() {
        let expectation = self.expectation(description: "testSplitWithOptions")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let options = PdfExportOptions()
            options.jpegQuality = 50
            SlidesAPI.split(fileName, options, "", nil, nil, nil, nil, "", password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slides)
                let url = result!.slides![0].href!
                let range = url.range(of: "/storage/file/")
                XCTAssertNotNil(range)
                let path = String(url[range!.upperBound...])
                SlidesAPI.objectExists(path) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    XCTAssertNotNil(result!.exists)
                    XCTAssertTrue(result!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
