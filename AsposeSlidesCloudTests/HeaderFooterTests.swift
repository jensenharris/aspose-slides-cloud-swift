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

class HeaderFooterTests : XCTestCase {
    static var allTests : [(String, (HeaderFooterTests) -> () -> ())] = [
        ("testHeaderFooterAllSlides", testHeaderFooterAllSlides),
        ("testHeaderFooterSlide", testHeaderFooterSlide),
        ("testHeaderFooterNotesSlide", testHeaderFooterNotesSlide),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testHeaderFooterAllSlides() {
        let expectation = self.expectation(description: "testHeaderFooterAllSlides")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"

            let dto = HeaderFooter()
            dto.isFooterVisible = true
            dto.footerText = "footer"
            dto.isDateTimeVisible = false
            SlidesAPI.setPresentationHeaderFooter(fileName, dto, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.getSlideHeaderFooter(fileName, 1, password, folderName) { (headerFooter, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(headerFooter)
                    XCTAssertNotNil(headerFooter!.isFooterVisible)
                    XCTAssertTrue(headerFooter!.isFooterVisible!)
                    XCTAssertNotNil(headerFooter!.isDateTimeVisible)
                    XCTAssertFalse(headerFooter!.isDateTimeVisible!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHeaderFooterSlide() {
        let expectation = self.expectation(description: "testHeaderFooterSlide")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1

            let dto = HeaderFooter()
            dto.isFooterVisible = true
            dto.footerText = "footer"
            dto.isDateTimeVisible = false
            SlidesAPI.setSlideHeaderFooter(fileName, slideIndex, dto, password, folderName) { (headerFooter, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(headerFooter)
                XCTAssertNotNil(headerFooter!.isFooterVisible)
                XCTAssertTrue(headerFooter!.isFooterVisible!)
                XCTAssertNotNil(headerFooter!.isDateTimeVisible)
                XCTAssertFalse(headerFooter!.isDateTimeVisible!)
                SlidesAPI.getSlideHeaderFooter(fileName, slideIndex, password, folderName) { (headerFooter, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(headerFooter)
                    XCTAssertNotNil(headerFooter!.isFooterVisible)
                    XCTAssertTrue(headerFooter!.isFooterVisible!)
                    XCTAssertNotNil(headerFooter!.isDateTimeVisible)
                    XCTAssertFalse(headerFooter!.isDateTimeVisible!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHeaderFooterNotesSlide() {
        let expectation = self.expectation(description: "testHeaderFooterNotesSlide")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1

            let dto = NotesSlideHeaderFooter()
            dto.isHeaderVisible = true
            dto.footerText = "footer"
            dto.isDateTimeVisible = false
            SlidesAPI.setNotesSlideHeaderFooter(fileName, slideIndex, dto, password, folderName) { (headerFooter, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(headerFooter)
                XCTAssertNotNil(headerFooter!.isHeaderVisible)
                XCTAssertTrue(headerFooter!.isHeaderVisible!)
                XCTAssertNotNil(headerFooter!.isDateTimeVisible)
                XCTAssertFalse(headerFooter!.isDateTimeVisible!)
                SlidesAPI.getNotesSlideHeaderFooter(fileName, slideIndex, password, folderName) { (headerFooter, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(headerFooter)
                    XCTAssertNotNil(headerFooter!.isHeaderVisible)
                    XCTAssertTrue(headerFooter!.isHeaderVisible!)
                    XCTAssertNotNil(headerFooter!.isDateTimeVisible)
                    XCTAssertFalse(headerFooter!.isDateTimeVisible!)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
