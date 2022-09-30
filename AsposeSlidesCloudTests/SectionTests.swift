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

class SectionTests : XCTestCase {
    static var allTests : [(String, (SectionTests) -> () -> ())] = [
        ("testSectionsGet", testSectionsGet),
        ("testSectionsReplace", testSectionsReplace),
        ("testSectionsPost", testSectionsPost),
        ("testSectionsPut", testSectionsPut),
        ("testSectionsMove", testSectionsMove),
        ("testSectionsClear", testSectionsClear),
        ("testSectionsDeleteMany", testSectionsDeleteMany),
        ("testSectionsDelete", testSectionsDelete),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testSectionsGet() {
        let expectation = self.expectation(description: "testSectionsGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSections("test.pptx", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(3, result!.sectionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionsReplace() {
        let expectation = self.expectation(description: "testSectionsReplace")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Sections()
            let section1 = Section()
            section1.name = "Section1"
            section1.firstSlideIndex = 1
            let section2 = Section()
            section2.name = "Section2"
            section2.firstSlideIndex = 3
            dto.sectionList = [ section1, section2 ]
            SlidesAPI.setSections("test.pptx", dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(dto.sectionList!.count, result!.sectionList!.count)
                XCTAssertNotNil(result!.sectionList![0].slideList)
                XCTAssertEqual(section2.firstSlideIndex! - section1.firstSlideIndex!, result!.sectionList![0].slideList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionsPost() {
        let expectation = self.expectation(description: "testSectionsPost")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.createSection("test.pptx", "NewSection", 5, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(4, result!.sectionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionsPut() {
        let expectation = self.expectation(description: "testSectionsPut")

        TestUtils.initialize("") { (response, error) -> Void in
            let sectionIndex = 2
            let sectionName = "UpdatedSection"
            SlidesAPI.updateSection("test.pptx", sectionIndex, sectionName, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(3, result!.sectionList!.count)
                XCTAssertEqual(sectionName, result!.sectionList![sectionIndex - 1].name)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionsMove() {
        let expectation = self.expectation(description: "testSectionsMove")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.moveSection("test.pptx", 1, 2, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(3, result!.sectionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionsClear() {
        let expectation = self.expectation(description: "testSectionsClear")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSections("test.pptx", [], nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(0, result!.sectionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionsDeleteMany() {
        let expectation = self.expectation(description: "testSectionsDeleteMany")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSections("test.pptx", [ 2, 3 ], nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(1, result!.sectionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionsDelete() {
        let expectation = self.expectation(description: "testSectionsDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSection("test.pptx", 2, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.sectionList)
                XCTAssertEqual(2, result!.sectionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
