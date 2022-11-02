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

class ParagraphTests : XCTestCase {
    static var allTests : [(String, (ParagraphTests) -> () -> ())] = [
        ("testParagraphGet", testParagraphGet),
        ("testParagraphsGet", testParagraphsGet),
        ("testSubshapeParagraphGet", testSubshapeParagraphGet),
        ("testSubshapeParagraphsGet", testSubshapeParagraphsGet),
        ("testParagraphCreate", testParagraphCreate),
        ("testParagraphCreateWithPortions", testParagraphCreateWithPortions),
        ("testSubshapeParagraphCreate", testSubshapeParagraphCreate),
        ("testParagraphUpdate", testParagraphUpdate),
        ("testSubshapeParagraphUpdate", testSubshapeParagraphUpdate),
        ("testParagraphsDelete", testParagraphsDelete),
        ("testParagraphsDeleteByIndices", testParagraphsDeleteByIndices),
        ("testSubshapeParagraphsDelete", testSubshapeParagraphsDelete),
        ("testSubshapeParagraphsDeleteByIndices", testSubshapeParagraphsDeleteByIndices),
        ("testParagraphDelete", testParagraphDelete),
        ("testSubshapeParagraphDelete", testSubshapeParagraphDelete),
        ("testParagraphGetRect", testParagraphGetRect),
        ("testParagraphDefaultPortionFormat", testParagraphDefaultPortionFormat),
        ("testParagraphGetEffective", testParagraphGetEffective),
        ("testSubshapeParagraphGetEffective", testSubshapeParagraphGetEffective),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override var continueAfterFailure: Bool { 
        get { 
            return false
        } 
        set { 
        } 
    }     

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }    

    func testParagraphGet() {
        let expectation = self.expectation(description: "testParagraphGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getParagraph("test.pptx", 6, 2, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.portionList)
                XCTAssertEqual(2, result!.portionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphsGet() {
        let expectation = self.expectation(description: "testParagraphsGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getParagraphs("test.pptx", 6, 2, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(2, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphGet() {
        let expectation = self.expectation(description: "testSubshapeParagraphGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getParagraph("test.pptx", 6, 3, 1, "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.portionList)
                XCTAssertEqual(2, result!.portionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphsGet() {
        let expectation = self.expectation(description: "testSubshapeParagraphsGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getParagraphs("test.pptx", 6, 3, "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(2, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphCreate() {
        let expectation = self.expectation(description: "testParagraphCreate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto  = Paragraph()
            dto.marginLeft = 2
            dto.marginRight = 2
            dto.alignment = Paragraph.Alignment.center
            SlidesAPI.createParagraph("test.pptx", 6, 2, dto, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.marginLeft, result!.marginLeft)
                XCTAssertEqual(dto.marginRight, result!.marginRight)
                XCTAssertEqual(dto.alignment, result!.alignment)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphCreateWithPortions() {
        let expectation = self.expectation(description: "testParagraphCreateWithPortions")
        
        TestUtils.initialize("") { (response, error) -> Void in
            let portion1 = Portion()
            portion1.text = "Portion1"
            let portion2 = Portion()
            portion2.text = "Portion2"
            let dto = Paragraph()
            dto.portionList = [portion1, portion2]
            SlidesAPI.createParagraph("test.pptx", 6, 2, dto, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.portionList)
                XCTAssertEqual(2, result!.portionList!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphCreate() {
        let expectation = self.expectation(description: "testSubshapeParagraphCreate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto  = Paragraph()
            dto.marginLeft = 2
            dto.marginRight = 2
            dto.alignment = Paragraph.Alignment.center
            SlidesAPI.createParagraph("test.pptx", 6, 3, dto, nil, "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.marginLeft, result!.marginLeft)
                XCTAssertEqual(dto.marginRight, result!.marginRight)
                XCTAssertEqual(dto.alignment, result!.alignment)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphUpdate() {
        let expectation = self.expectation(description: "testParagraphUpdate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto  = Paragraph()
            dto.marginLeft = 2
            dto.marginRight = 2
            dto.alignment = Paragraph.Alignment.center
            SlidesAPI.updateParagraph("test.pptx", 6, 2, 1, dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.marginLeft, result!.marginLeft)
                XCTAssertEqual(dto.marginRight, result!.marginRight)
                XCTAssertEqual(dto.alignment, result!.alignment)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphUpdate() {
        let expectation = self.expectation(description: "testSubshapeParagraphUpdate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto  = Paragraph()
            dto.marginLeft = 2
            dto.marginRight = 2
            dto.alignment = Paragraph.Alignment.center
            SlidesAPI.updateParagraph("test.pptx", 6, 3, 1, dto, "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.marginLeft, result!.marginLeft)
                XCTAssertEqual(dto.marginRight, result!.marginRight)
                XCTAssertEqual(dto.alignment, result!.alignment)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphsDelete() {
        let expectation = self.expectation(description: "testParagraphsDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteParagraphs("test.pptx", 6, 2, [], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(0, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphsDeleteByIndices() {
        let expectation = self.expectation(description: "testParagraphsDeleteByIndices")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteParagraphs("test.pptx", 6, 2, [ 2 ], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(1, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphsDelete() {
        let expectation = self.expectation(description: "testSubshapeParagraphsDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteParagraphs("test.pptx", 6, 3, [], "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(0, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphsDeleteByIndices() {
        let expectation = self.expectation(description: "testSubshapeParagraphsDeleteByIndices")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteParagraphs("test.pptx", 6, 3, [ 1 ], "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(1, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphDelete() {
        let expectation = self.expectation(description: "testParagraphDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteParagraph("test.pptx", 6, 2, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(1, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphDelete() {
        let expectation = self.expectation(description: "testSubshapeParagraphDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteParagraph("test.pptx", 6, 3, 1, "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.paragraphLinks)
                XCTAssertEqual(1, result!.paragraphLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphGetRect() {
        let expectation = self.expectation(description: "testParagraphGetRect")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getParagraphRectangle("test.pptx", 6, 2, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.x)
                XCTAssertGreaterThan(result!.x!, 0.0)
                XCTAssertNotNil(result!.y)
                XCTAssertGreaterThan(result!.y!, 0.0)
                XCTAssertNotNil(result!.width)
                XCTAssertGreaterThan(result!.width!, 0.0)
                XCTAssertNotNil(result!.height)
                XCTAssertGreaterThan(result!.height!, 0.0)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphDefaultPortionFormat() {
        let expectation = self.expectation(description: "testParagraphDefaultPortionFormat")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Paragraph()
            let portionFormat = PortionFormat()
            portionFormat.fontHeight = 20
            portionFormat.latinFont = "Arial"
            let portion1 = Portion()
            portion1.text = "Portion1"
            let portion2 = Portion()
            portion2.text = "Portion2"
            dto.portionList = [ portion1, portion2 ]
            dto.defaultPortionFormat = portionFormat
            SlidesAPI.createParagraph("test.pptx", 6, 2, dto, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.portionList)
                XCTAssertEqual(2, result!.portionList!.count)
                XCTAssertNotNil(result!.defaultPortionFormat)
                XCTAssertEqual(dto.defaultPortionFormat!.latinFont, result!.defaultPortionFormat!.latinFont)
                XCTAssertEqual(dto.defaultPortionFormat!.fontHeight, result!.defaultPortionFormat!.fontHeight)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testParagraphGetEffective() {
        let expectation = self.expectation(description: "testParagraphGetEffective")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getParagraphEffective("test.pptx", 6, 2, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(72, result!.defaultTabSize)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeParagraphGetEffective() {
        let expectation = self.expectation(description: "testSubshapeParagraphGetEffective")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getParagraphEffective("test.pptx", 6, 3, 1, "password", "TempSlidesSDK", "", "1") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(72, result!.defaultTabSize)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
