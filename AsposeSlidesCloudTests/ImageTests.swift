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

class ImageTests : XCTestCase {
    static var allTests : [(String, (ImageTests) -> () -> ())] = [
        ("testImageGet", testImageGet),
        ("testImageDownloadAllStorage", testImageDownloadAllStorage),
        ("testImageDownloadAllRequest", testImageDownloadAllRequest),
        ("testImageDownloadStorage", testImageDownloadStorage),
        ("testImageDownloadRequest", testImageDownloadRequest),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testImageGet() {
        let expectation = self.expectation(description: "testImageGet")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.getPresentationImages(fileName, password, folderName) { (presentationResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(presentationResult)
                XCTAssertNotNil(presentationResult!.list)
                SlidesAPI.getSlideImages(fileName, 1, password, folderName) { (slideResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(slideResult)
                    XCTAssertNotNil(slideResult!.list)
                    XCTAssertLessThan(slideResult!.list!.count, presentationResult!.list!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testImageDownloadAllStorage() {
        let expectation = self.expectation(description: "testImageDownloadAllStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.downloadImagesDefaultFormat(fileName, password, folderName) { (defaultResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(defaultResult)
                SlidesAPI.downloadImages(fileName, "png", password, folderName) { (pngResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(pngResult)
                    XCTAssertNotEqual(defaultResult!.count, pngResult!.count)
                    let defaultArchive = Archive(data: defaultResult!, accessMode: .read)
                    var defaultCount = 0
                    for _ in defaultArchive! {
                        defaultCount += 1
                    }
                    let pngArchive = Archive(data: pngResult!, accessMode: .read)
                    var pngCount = 0
                    for _ in pngArchive! {
                        pngCount += 1
                    }
                    XCTAssertEqual(defaultCount, pngCount)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testImageDownloadAllRequest() {
        let expectation = self.expectation(description: "testImageDownloadAllRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)

            let password = "password"
            SlidesAPI.downloadImagesDefaultFormatOnline(document!, password) { (defaultResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(defaultResult)
                SlidesAPI.downloadImagesOnline(document!, "png", password) { (pngResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(pngResult)
                    XCTAssertNotEqual(defaultResult!.count, pngResult!.count)
                    let defaultArchive = Archive(data: defaultResult!, accessMode: .read)
                    var defaultCount = 0
                    for _ in defaultArchive! {
                        defaultCount += 1
                    }
                    let pngArchive = Archive(data: pngResult!, accessMode: .read)
                    var pngCount = 0
                    for _ in pngArchive! {
                        pngCount += 1
                    }
                    XCTAssertEqual(defaultCount, pngCount)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testImageDownloadStorage() {
        let expectation = self.expectation(description: "testImageDownloadStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            SlidesAPI.downloadImageDefaultFormat(fileName, slideIndex, password, folderName) { (defaultResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(defaultResult)
                SlidesAPI.downloadImage(fileName, slideIndex, "png", password, folderName) { (pngResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(pngResult)
                    XCTAssertNotEqual(defaultResult!.count, pngResult!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testImageDownloadRequest() {
        let expectation = self.expectation(description: "testImageDownloadRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            let password = "password"
            let slideIndex = 1
            SlidesAPI.downloadImageDefaultFormatOnline(document!, slideIndex, password) { (defaultResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(defaultResult)
                SlidesAPI.downloadImageOnline(document!, slideIndex, "png", password) { (pngResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(pngResult)
                    XCTAssertNotEqual(defaultResult!.count, pngResult!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
