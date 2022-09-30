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

class MathTests : XCTestCase {
    static var allTests : [(String, (MathTests) -> () -> ())] = [
        ("testMathGet", testMathGet),
        ("testMathGetNull", testMathGetNull),
        ("testMathCreate", testMathCreate),
        ("testMathUpdate", testMathUpdate),
        ("testMathDownload", testMathDownload),
        ("testMathDownloadNull", testMathDownloadNull),
        ("testMathSave", testMathSave),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testMathGet() {
        let expectation = self.expectation(description: "testMathGet")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getPortion("test.pptx", 2, 3, 1, 1, "password", "TempSlidesSDK") { (portion, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(portion)
                XCTAssertNotNil(portion!.mathParagraph)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList)
                XCTAssertEqual(1, portion!.mathParagraph!.mathBlockList!.count)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList![0].mathElementList)
                XCTAssertEqual(3, portion!.mathParagraph!.mathBlockList![0].mathElementList!.count)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList![0].mathElementList![2] as? FractionElement)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMathGetNull() {
        let expectation = self.expectation(description: "testMathGetNull")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getPortion("test.pptx", 2, 1, 1, 1, "password", "TempSlidesSDK") { (portion, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(portion)
                XCTAssertNil(portion!.mathParagraph)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMathCreate() {
        let expectation = self.expectation(description: "testMathCreate")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Portion()
            let mathParagraph = MathParagraph()
            let mathBlock = BlockElement()
            let functionElement = FunctionElement()
            let limitElement = LimitElement()
            let text1 = TextElement()
            text1.value = "lim"
            limitElement.base = text1
            let text2 = TextElement()
            text2.value = "x->0"
            limitElement.limit = text2
            functionElement.name = limitElement
            let fractionElement = FractionElement()
            let sinusElement = FunctionElement()
            let text3 = TextElement()
            text3.value = "sin"
            sinusElement.name = text3
            let text4 = TextElement()
            text4.value = "x"
            sinusElement.name = text4
            fractionElement.numerator = sinusElement
            let text5 = TextElement()
            text5.value = "x"
            fractionElement.denominator = text5
            functionElement.base = fractionElement
            mathBlock.mathElementList = [ functionElement ]
            mathParagraph.mathBlockList = [ mathBlock ]
            dto.mathParagraph = mathParagraph
            SlidesAPI.createPortion("test.pptx", 1, 1, 1, dto, nil, "password", "TempSlidesSDK") { (portion, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(portion)
                XCTAssertNotNil(portion!.mathParagraph)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList)
                XCTAssertEqual(1, portion!.mathParagraph!.mathBlockList!.count)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList![0].mathElementList)
                XCTAssertEqual(1, portion!.mathParagraph!.mathBlockList![0].mathElementList!.count)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList![0].mathElementList![0] as? FunctionElement)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMathUpdate() {
        let expectation = self.expectation(description: "testMathUpdate")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Portion()
            let mathParagraph = MathParagraph()
            let mathBlock = BlockElement()
            let functionElement = FunctionElement()
            let limitElement = LimitElement()
            let text1 = TextElement()
            text1.value = "lim"
            limitElement.base = text1
            let text2 = TextElement()
            text2.value = "x->0"
            limitElement.limit = text2
            functionElement.name = limitElement
            let fractionElement = FractionElement()
            let sinusElement = FunctionElement()
            let text3 = TextElement()
            text3.value = "sin"
            sinusElement.name = text3
            let text4 = TextElement()
            text4.value = "x"
            sinusElement.name = text4
            fractionElement.numerator = sinusElement
            let text5 = TextElement()
            text5.value = "x"
            fractionElement.denominator = text5
            functionElement.base = fractionElement
            mathBlock.mathElementList = [ functionElement ]
            mathParagraph.mathBlockList = [ mathBlock ]
            dto.mathParagraph = mathParagraph
            SlidesAPI.updatePortion("test.pptx", 2, 3, 1, 1, dto, "password", "TempSlidesSDK") { (portion, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(portion)
                XCTAssertNotNil(portion!.mathParagraph)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList)
                XCTAssertEqual(1, portion!.mathParagraph!.mathBlockList!.count)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList![0].mathElementList)
                XCTAssertEqual(1, portion!.mathParagraph!.mathBlockList![0].mathElementList!.count)
                XCTAssertNotNil(portion!.mathParagraph!.mathBlockList![0].mathElementList![0] as? FunctionElement)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMathDownload() {
        let expectation = self.expectation(description: "testMathDownload")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadPortionAsMathMl("test.pptx", 2, 3, 1, 1, "password", "TempSlidesSDK") { (output, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(output)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMathDownloadNull() {
        let expectation = self.expectation(description: "testMathDownloadNull")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadPortionAsMathMl("test.pptx", 2, 1, 1, 1, "password", "TempSlidesSDK") { (output, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMathSave() {
        let expectation = self.expectation(description: "testMathSave")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/mathml.xml"
            SlidesAPI.savePortionAsMathMl("test.pptx", 2, 3, 1, 1, outPath, "password", "TempSlidesSDK") { (output, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(output)
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
