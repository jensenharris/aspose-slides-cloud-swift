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
@testable import AsposeSlidesCloud

class ConvertTests : XCTestCase {
    static var allTests : [(String, (ConvertTests) -> () -> ())] = [
        ("testConvertPostFromRequest", testConvertPostFromRequest),
        ("testConvertPutFromRequest", testConvertPutFromRequest),
        ("testConvertPostFromStorage", testConvertPostFromStorage),
        ("testConvertPutFromStorage", testConvertPutFromStorage),
        ("testConvertWithOptionsFromRequest", testConvertWithOptionsFromRequest),
        ("testConvertWithOptionsFromStorage", testConvertWithOptionsFromStorage),
        ("testConvertSlidePostFromRequest", testConvertSlidePostFromRequest),
        ("testConvertSlidePutFromRequest", testConvertSlidePutFromRequest),
        ("testConvertSlidePostFromStorage", testConvertSlidePostFromStorage),
        ("testConvertSlidePutFromStorage", testConvertSlidePutFromStorage),
        ("testConvertSlideWithOptionsFromRequest", testConvertSlideWithOptionsFromRequest),
        ("testConvertSlideWithOptionsFromStorage", testConvertSlideWithOptionsFromStorage),
        ("testConvertShapePostFromRequest", testConvertShapePostFromRequest),
        ("testConvertShapePutFromRequest", testConvertShapePutFromRequest),
        ("testConvertShapePostFromStorage", testConvertShapePostFromStorage),
        ("testConvertSubshapePostFromStorage", testConvertSubshapePostFromStorage),
        ("testConvertShapePutFromStorage", testConvertShapePutFromStorage),
        ("testConvertSubshapePutFromStorage", testConvertSubshapePutFromStorage),
        ("testConvertWithFallbackRules", testConvertWithFallbackRules),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testConvertPostFromRequest() {
        let expectation = self.expectation(description: "testConvertPostFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.convert(document!, "pdf", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.convert(document!, "pdf", "password", "", "", [ 2, 4 ]) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertGreaterThan(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertPutFromRequest() {
        let expectation = self.expectation(description: "testConvertPutFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.convertAndSave(document!, "pdf", outPath, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertPostFromStorage() {
        let expectation = self.expectation(description: "testConvertPostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadPresentation("test.pptx", "html5", nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertPutFromStorage() {
        let expectation = self.expectation(description: "testConvertPutFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            SlidesAPI.savePresentation("test.pptx", "pdf", outPath, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertWithOptionsFromRequest() {
        let expectation = self.expectation(description: "testConvertWithOptionsFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.convert(document!, "pdf", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let options = PdfExportOptions()
                options.drawSlidesFrame = true
                SlidesAPI.convert(document!, "pdf", "password", "", "", [], options) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertNotEqual(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertWithOptionsFromStorage() {
        let expectation = self.expectation(description: "testConvertWithOptionsFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadPresentation("test.pptx", "png", nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let options = ImageExportOptions()
                options.width = 480
                options.height = 360
                SlidesAPI.downloadPresentation("test.pptx", "png", options, "password", "TempSlidesSDK") { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertGreaterThan(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlidePostFromRequest() {
        let expectation = self.expectation(description: "testConvertSlidePostFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.downloadSlideOnline(document!, 1, "pdf", nil, nil, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlidePutFromRequest() {
        let expectation = self.expectation(description: "testConvertSlidePutFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.saveSlideOnline(document!, 1, "pdf", outPath, nil, nil, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlidePostFromStorage() {
        let expectation = self.expectation(description: "testConvertSlidePostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadSlide("test.pptx", 1, "pdf", nil, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlidePutFromStorage() {
        let expectation = self.expectation(description: "testConvertSlidePutFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            SlidesAPI.saveSlide("test.pptx", 1, "pdf", outPath, nil, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlideWithOptionsFromRequest() {
        let expectation = self.expectation(description: "testConvertSlideWithOptionsFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.downloadSlideOnline(document!, 1, "pdf", nil, nil, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let options = PdfExportOptions()
                options.drawSlidesFrame = true
                SlidesAPI.downloadSlideOnline(document!, 1, "pdf", nil, nil, "password", "", "", options) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertNotEqual(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlideWithOptionsFromStorage() {
        let expectation = self.expectation(description: "testConvertSlideWithOptionsFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let format = "pdf"
            let slideIndex = 1
            SlidesAPI.downloadSlide(fileName, slideIndex, format, nil, nil, nil, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let options = PdfExportOptions()
                options.drawSlidesFrame = true
                SlidesAPI.downloadSlide(fileName, slideIndex, format, options, nil, nil, password, folderName) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertNotEqual(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertShapePostFromRequest() {
        let expectation = self.expectation(description: "testConvertShapePostFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.downloadShapeOnline(document!, 1, 3, "png", nil, nil, "", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertShapePutFromRequest() {
        let expectation = self.expectation(description: "testConvertShapePutFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.saveShapeOnline(document!, 1, 1, "png", outPath, nil, nil, "", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertShapePostFromStorage() {
        let expectation = self.expectation(description: "testConvertShapePostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadShape("test.pptx", 1, 1, "png", nil, nil, nil, "", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSubshapePostFromStorage() {
        let expectation = self.expectation(description: "testConvertSubshapePostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadShape("test.pptx", 1, 4, "png", nil, nil, nil, "", "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertShapePutFromStorage() {
        let expectation = self.expectation(description: "testConvertShapePutFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            SlidesAPI.saveShape("test.pptx", 1, 1, "png", outPath, nil, nil, nil, "", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSubshapePutFromStorage() {
        let expectation = self.expectation(description: "testConvertSubshapePutFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            SlidesAPI.saveShape("test.pptx", 1, 4, "png", outPath, nil, nil, nil, "", "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertWithFallbackRules() {
        let expectation = self.expectation(description: "testConvertWithFallbackRules")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            let startUnicodeIndex = 0x0B80
            let endUnicodeIndex = 0x0BFF

            let fontRule1 = FontFallbackRule()
            fontRule1.rangeStartIndex = startUnicodeIndex
            fontRule1.rangeEndIndex = endUnicodeIndex
            fontRule1.fallbackFontList = [ "Vijaya" ]

            let fontRule2 = FontFallbackRule()
            fontRule2.rangeStartIndex = startUnicodeIndex
            fontRule2.rangeEndIndex = endUnicodeIndex
            fontRule2.fallbackFontList = [ "Segoe UI Emoji", "Segoe UI Symbol", "Arial" ]

            let options = ImageExportOptions()
            options.fontFallbackRules = [fontRule1, fontRule2]
            SlidesAPI.savePresentation("test.pptx", "pdf", outPath, options, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.objectExists(outPath) { (exists, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(exists)
                    XCTAssertNotNil(exists!.exists)
                    XCTAssertTrue(exists!.exists!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
