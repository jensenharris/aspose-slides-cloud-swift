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

class HyperlinkTests : XCTestCase {
    static var allTests : [(String, (HyperlinkTests) -> () -> ())] = [
        ("testHyperlinkGetShape", testHyperlinkGetShape),
        ("testHyperlinkGetPortion", testHyperlinkGetPortion),
        ("testHyperlinkCreateShape", testHyperlinkCreateShape),
        ("testHyperlinkCreatePortion", testHyperlinkCreatePortion),
        ("testHyperlinkDelete", testHyperlinkDelete),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testHyperlinkGetShape() {
        let expectation = self.expectation(description: "testHyperlinkGetShape")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getShape("test.pptx", 2, 2, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                XCTAssertNotNil(shape!.hyperlinkClick)
                XCTAssertNotNil(shape!.hyperlinkClick!.actionType)
                XCTAssertEqual(Hyperlink.ActionType.hyperlink, shape!.hyperlinkClick!.actionType!)
                XCTAssertNil(shape!.hyperlinkMouseOver)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHyperlinkGetPortion() {
        let expectation = self.expectation(description: "testHyperlinkGetPortion")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getPortion("test.pptx", 2, 1, 1, 2, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                XCTAssertNil(shape!.hyperlinkClick)
                XCTAssertNotNil(shape!.hyperlinkMouseOver)
                XCTAssertNotNil(shape!.hyperlinkMouseOver!.actionType)
                XCTAssertEqual(Hyperlink.ActionType.jumpLastSlide, shape!.hyperlinkMouseOver!.actionType!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHyperlinkCreateShape() {
        let expectation = self.expectation(description: "testHyperlinkCreateShape")
        TestUtils.initialize("") { (response, error) -> Void in
            let shape = Shape()
            let hyperlink = Hyperlink()
            hyperlink.actionType = Hyperlink.ActionType.hyperlink
            hyperlink.externalUrl = "https://docs.aspose.cloud/slides"
            shape.hyperlinkClick = hyperlink
            SlidesAPI.updateShape("test.pptx", 2, 2, shape, "password", "TempSlidesSDK") { (updatedShape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(updatedShape)
                XCTAssertNotNil(updatedShape!.hyperlinkClick)
                XCTAssertNotNil(updatedShape!.hyperlinkClick!.externalUrl)
                XCTAssertEqual(shape.hyperlinkClick!.externalUrl, updatedShape!.hyperlinkClick!.externalUrl!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHyperlinkCreatePortion() {
        let expectation = self.expectation(description: "testHyperlinkCreatePortion")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Portion()
            let hyperlink = Hyperlink()
            hyperlink.actionType = Hyperlink.ActionType.jumpLastSlide
            dto.hyperlinkMouseOver = hyperlink
            SlidesAPI.createPortion("test.pptx", 1, 1, 1, dto, nil, "password", "TempSlidesSDK") { (updatedPortion, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(updatedPortion)
                XCTAssertNotNil(updatedPortion!.hyperlinkMouseOver)
                XCTAssertNotNil(updatedPortion!.hyperlinkMouseOver!.actionType)
                XCTAssertEqual(dto.hyperlinkMouseOver!.actionType!, updatedPortion!.hyperlinkMouseOver!.actionType!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHyperlinkDelete() {
        let expectation = self.expectation(description: "testHyperlinkDelete")
        TestUtils.initialize("") { (response, error) -> Void in
            let shape = PictureFrame()
            let hyperlink = Hyperlink()
            hyperlink.isDisabled = true
            shape.hyperlinkClick = hyperlink
            SlidesAPI.updateShape("test.pptx", 2, 2, shape, "password", "TempSlidesSDK") { (updatedShape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(updatedShape)
                XCTAssertNil(updatedShape!.hyperlinkClick)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
