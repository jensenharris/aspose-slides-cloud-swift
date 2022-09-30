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

class PortionTests : XCTestCase {
    static var allTests : [(String, (PortionTests) -> () -> ())] = [
        ("testPortionsGet", testPortionsGet),
        ("testSubshapePortionsGet", testSubshapePortionsGet),
        ("testPortionGet", testPortionGet),
        ("testSubshapePortionGet", testSubshapePortionGet),
        ("testPortionCreate", testPortionCreate),
        ("testSubshapePortionCreate", testSubshapePortionCreate),
        ("testPortionUpdate", testPortionUpdate),
        ("testSubshapePortionUpdate", testSubshapePortionUpdate),
        ("testPortionsDelete", testPortionsDelete),
        ("testPortionsDeleteByIndices", testPortionsDeleteByIndices),
        ("testSubshapePortionsDelete", testSubshapePortionsDelete),
        ("testSubshapePortionsDeleteByIndices", testSubshapePortionsDeleteByIndices),
        ("testPortionDelete", testPortionDelete),
        ("testSubshapePortionDelete", testSubshapePortionDelete),
        ("testPortionGetRect", testPortionGetRect),
        ("testPortionGetEffective", testPortionGetEffective),
        ("testSubshapePortionGetEffective", testSubshapePortionGetEffective),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testPortionsGet() {
        let expectation = self.expectation(description: "testPortionsGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getPortions("test.pptx", 6, 2, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(2, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionsGet() {
        let expectation = self.expectation(description: "testSubshapePortionsGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSubshapePortions("test.pptx", 6, "3/shapes", 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(2, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionGet() {
        let expectation = self.expectation(description: "testPortionGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getPortion("test.pptx", 6, 2, 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual("Paragraph 1 portion 1 ", result!.text)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionGet() {
        let expectation = self.expectation(description: "testSubshapePortionGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSubshapePortion("test.pptx", 6, "3/shapes", 1, 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual("Subshape Paragraph 1 portion 1 ", result!.text)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionCreate() {
        let expectation = self.expectation(description: "testPortionCreate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Portion()
            dto.text = "portion 1"
            dto.fontBold = Portion.FontBold._true
            dto.fontHeight = 20
            dto.latinFont = "Arial"
            let fillFormat = SolidFill()
            fillFormat.color = "#FFF5FF8A"
            dto.fillFormat = fillFormat
            SlidesAPI.createPortion("test.pptx", 6, 2, 1, dto, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.text, result!.text)
                XCTAssertEqual(dto.fontBold, result!.fontBold)
                XCTAssertEqual(dto.fontHeight, result!.fontHeight)
                XCTAssertEqual(dto.latinFont, result!.latinFont)
                XCTAssertNotNil(result!.fillFormat)
                XCTAssertEqual(FillFormat.ModelType.solid, result!.fillFormat!.type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionCreate() {
        let expectation = self.expectation(description: "testSubshapePortionCreate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Portion()
            dto.text = "portion 1"
            dto.fontBold = Portion.FontBold._true
            dto.fontHeight = 20
            dto.latinFont = "Arial"
            let fillFormat = SolidFill()
            fillFormat.color = "#FFF5FF8A"
            dto.fillFormat = fillFormat
            SlidesAPI.createSubshapePortion("test.pptx", 6, "3/shapes", 1, 1, dto, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.text, result!.text)
                XCTAssertEqual(dto.fontBold, result!.fontBold)
                XCTAssertEqual(dto.fontHeight, result!.fontHeight)
                XCTAssertEqual(dto.latinFont, result!.latinFont)
                XCTAssertNotNil(result!.fillFormat)
                XCTAssertEqual(FillFormat.ModelType.solid, result!.fillFormat!.type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionUpdate() {
        let expectation = self.expectation(description: "testPortionUpdate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Portion()
            dto.text = "portion 1"
            dto.fontBold = Portion.FontBold._true
            dto.fontHeight = 20
            dto.latinFont = "Arial"
            let fillFormat = SolidFill()
            fillFormat.color = "#FFF5FF8A"
            dto.fillFormat = fillFormat
            SlidesAPI.updatePortion("test.pptx", 6, 2, 1, 1, dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.text, result!.text)
                XCTAssertEqual(dto.fontBold, result!.fontBold)
                XCTAssertEqual(dto.fontHeight, result!.fontHeight)
                XCTAssertEqual(dto.latinFont, result!.latinFont)
                XCTAssertNotNil(result!.fillFormat)
                XCTAssertEqual(FillFormat.ModelType.solid, result!.fillFormat!.type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionUpdate() {
        let expectation = self.expectation(description: "testSubshapePortionUpdate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Portion()
            dto.text = "portion 1"
            dto.fontBold = Portion.FontBold._true
            dto.fontHeight = 20
            dto.latinFont = "Arial"
            let fillFormat = SolidFill()
            fillFormat.color = "#FFF5FF8A"
            dto.fillFormat = fillFormat
            SlidesAPI.updateSubshapePortion("test.pptx", 6, "3/shapes", 1, 1, 1, dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(dto.text, result!.text)
                XCTAssertEqual(dto.fontBold, result!.fontBold)
                XCTAssertEqual(dto.fontHeight, result!.fontHeight)
                XCTAssertEqual(dto.latinFont, result!.latinFont)
                XCTAssertNotNil(result!.fillFormat)
                XCTAssertEqual(FillFormat.ModelType.solid, result!.fillFormat!.type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionsDelete() {
        let expectation = self.expectation(description: "testPortionsDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deletePortions("test.pptx", 6, 2, 1, [], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(0, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionsDeleteByIndices() {
        let expectation = self.expectation(description: "testPortionsDeleteByIndices")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deletePortions("test.pptx", 6, 2, 1, [ 1 ], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(1, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionsDelete() {
        let expectation = self.expectation(description: "testSubshapePortionsDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSubshapePortions("test.pptx", 6, "3/shapes", 1, 1, [], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(0, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionsDeleteByIndices() {
        let expectation = self.expectation(description: "testSubshapePortionsDeleteByIndices")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSubshapePortions("test.pptx", 6, "3/shapes", 1, 1, [ 1 ], "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(1, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionDelete() {
        let expectation = self.expectation(description: "testPortionDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deletePortion("test.pptx", 6, 2, 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(1, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionDelete() {
        let expectation = self.expectation(description: "testSubshapePortionDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteSubshapePortion("test.pptx", 6, "3/shapes", 1, 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                XCTAssertEqual(1, result!.items!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionGetRect() {
        let expectation = self.expectation(description: "testPortionGetRect")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getPortionRectangle("test.pptx", 6, 2, 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.X)
                XCTAssertGreaterThan(result!.X!, 0.0)
                XCTAssertNotNil(result!.Y)
                XCTAssertGreaterThan(result!.Y!, 0.0)
                XCTAssertNotNil(result!.width)
                XCTAssertGreaterThan(result!.width!, 0.0)
                XCTAssertNotNil(result!.height)
                XCTAssertGreaterThan(result!.height!, 0.0)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPortionGetEffective() {
        let expectation = self.expectation(description: "testPortionGetEffective")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getPortionEffective("test.pptx", 6, 2, 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(18, result!.fontHeight)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapePortionGetEffective() {
        let expectation = self.expectation(description: "testSubshapePortionGetEffective")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSubshapePortionEffective("test.pptx", 6, "3/shapes", 1, 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(18, result!.fontHeight)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
