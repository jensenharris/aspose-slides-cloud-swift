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

class SlidesTests : XCTestCase {
    static var allTests : [(String, (SlidesTests) -> () -> ())] = [
        ("testSlidesGet", testSlidesGet),
        ("testSlideGet", testSlideGet),
        ("testSlideCreate", testSlideCreate),
        ("testSlideCopy", testSlideCopy),
        ("testSlideCopyFromSource", testSlideCopyFromSource),
        ("testSlideMove", testSlideMove),
        ("testSlidesReorder", testSlidesReorder),
        ("testSlideUpdate", testSlideUpdate),
        ("testSlidesDelete", testSlidesDelete),
        ("testSlidesDeleteByIndices", testSlidesDeleteByIndices),
        ("testSlideDelete", testSlideDelete),
        ("testBackgroundGet", testBackgroundGet),
        ("testBackgroundSet", testBackgroundSet),
        ("testBackgroundSetColor", testBackgroundSetColor),
        ("testBackgroundDelete", testBackgroundDelete),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testSlidesGet() {
        let expectation = self.expectation(description: "testSlidesGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSlides("test.pptx", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(8, result!.slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlideGet() {
        let expectation = self.expectation(description: "testSlideGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSlide("test.pptx", 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlideCreate() {
        let expectation = self.expectation(description: "testSlideCreate")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.createSlide(fileName, "layoutSlides/3", 1, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(9, result!.slideList!.count)
                SlidesAPI.createSlide(fileName, "", nil, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    XCTAssertNotNil(result!.slideList)
                    XCTAssertEqual(10, result!.slideList!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlideCopy() {
        let expectation = self.expectation(description: "testSlideCopy")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.copySlide("test.pptx", 3, nil, "", "", "", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(9, result!.slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlideCopyFromSource() {
        let expectation = self.expectation(description: "testSlideCopyFromSource")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let sourceFileName = "TemplateCV.pptx"
            SlidesAPI.copyFile("TempTests/" + sourceFileName, folderName + "/" + sourceFileName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.copySlide("test.pptx", 1, 1, folderName + "/" + sourceFileName, "", "", "password", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    XCTAssertNotNil(result!.slideList)
                    XCTAssertEqual(9, result!.slideList!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlideMove() {
        let expectation = self.expectation(description: "testSlideMove")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.moveSlide("test.pptx", 1, 2, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(8, result!.slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlidesReorder() {
        let expectation = self.expectation(description: "testSlidesReorder")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.reorderSlides("test.pptx", [1, 2, 3, 4, 5, 6], [6, 5, 4, 3, 2, 1], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(8, result!.slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlideUpdate() {
        let expectation = self.expectation(description: "testSlideUpdate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Slide()
            let layoutSlidePath = "layoutSlides/3"
            dto.layoutSlide = ResourceUri()
            dto.layoutSlide!.href = "layoutSlides/3"
            SlidesAPI.updateSlide("test.pptx", 1, dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.layoutSlide)
                XCTAssertNotNil(result!.layoutSlide!.href)
                XCTAssertTrue(result!.layoutSlide!.href!.contains(layoutSlidePath))
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlidesDelete() {
        let expectation = self.expectation(description: "testSlidesDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Slide()
            dto.layoutSlide = ResourceUri()
            dto.layoutSlide!.href = "layoutSlides/3"
            SlidesAPI.deleteSlides("test.pptx", [], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(1, result!.slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlidesDeleteByIndices() {
        let expectation = self.expectation(description: "testSlidesDeleteByIndices")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSlides("test.pptx", [1, 3, 5], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(5, result!.slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSlideDelete() {
        let expectation = self.expectation(description: "testSlideDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSlide("test.pptx", 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.slideList)
                XCTAssertEqual(7, result!.slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testBackgroundGet() {
        let expectation = self.expectation(description: "testBackgroundGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getBackground("test.pptx", 5, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.fillFormat as? SolidFill)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testBackgroundSet() {
        let expectation = self.expectation(description: "testBackgroundSet")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideBackground()
            let fillFormat = SolidFill()
            let color = "#FFF5FF8A"
            fillFormat.color = color
            dto.fillFormat = fillFormat
            SlidesAPI.setBackground("test.pptx", 1, dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.fillFormat)
                let fill = result!.fillFormat as? SolidFill
                XCTAssertEqual(color, fill!.color)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testBackgroundSetColor() {
        let expectation = self.expectation(description: "testBackgroundSetColor")

        TestUtils.initialize("") { (response, error) -> Void in
            let color = "#FFF5FF8A"
            SlidesAPI.setBackgroundColor("test.pptx", 1, color, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.fillFormat)
                let fill = result!.fillFormat as? SolidFill
                XCTAssertEqual(color, fill!.color)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testBackgroundDelete() {
        let expectation = self.expectation(description: "testBackgroundDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideBackground()
            let fillFormat = SolidFill()
            let color = "#FFF5FF8A"
            fillFormat.color = color
            dto.fillFormat = fillFormat
            SlidesAPI.deleteBackground("test.pptx", 5, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.fillFormat as? NoFill)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
