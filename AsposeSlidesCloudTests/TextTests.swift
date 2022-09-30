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

class TextTests : XCTestCase {
    static var allTests : [(String, (TextTests) -> () -> ())] = [
        ("testTextGet", testTextGet),
        ("testTextReplaceStorage", testTextReplaceStorage),
        ("testTextReplaceRequest", testTextReplaceRequest),
        ("testHighlightShapeText", testHighlightShapeText),
        ("testHighlightShapeRegex", testHighlightShapeRegex),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTextGet() {
        let expectation = self.expectation(description: "testTextGet")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            SlidesAPI.getPresentationTextItems(fileName, nil, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.items)
                SlidesAPI.getPresentationTextItems(fileName, true, password, folderName) { (resultWithEmpty, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultWithEmpty)
                    XCTAssertNotNil(resultWithEmpty!.items)
                    SlidesAPI.getSlideTextItems(fileName, slideIndex, nil, password, folderName) { (slideResult, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(slideResult)
                        XCTAssertNotNil(slideResult!.items)
                        SlidesAPI.getSlideTextItems(fileName, slideIndex, true, password, folderName) { (slideResultWithEmpty, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(slideResultWithEmpty)
                            XCTAssertNotNil(slideResultWithEmpty!.items)
                            XCTAssertLessThan(resultWithEmpty!.items!.count, result!.items!.count)
                            XCTAssertLessThan(slideResult!.items!.count, result!.items!.count)
                            XCTAssertLessThan(slideResultWithEmpty!.items!.count, slideResult!.items!.count)
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testTextReplaceStorage() {
        let expectation = self.expectation(description: "testTextReplaceStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            let oldValue = "text"
            let newValue = "new_text"
            SlidesAPI.replacePresentationText(fileName, oldValue, newValue, nil, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.matches)
                SlidesAPI.copyFile("TempTests/" + fileName, folderName + "/" + fileName) { (copyResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(copyResult)
                    SlidesAPI.replacePresentationText(fileName, oldValue, newValue, true, password, folderName) { (resultWithEmpty, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(resultWithEmpty)
                        XCTAssertNotNil(resultWithEmpty!.matches)
                        SlidesAPI.copyFile("TempTests/" + fileName, folderName + "/" + fileName) { (copyResult, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(copyResult)
                            SlidesAPI.replaceSlideText(fileName, slideIndex, oldValue, newValue, nil, password, folderName) { (slideResult, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(slideResult)
                                XCTAssertNotNil(slideResult!.matches)
                                SlidesAPI.copyFile("TempTests/" + fileName, folderName + "/" + fileName) { (copyResult, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(copyResult)
                                    SlidesAPI.replaceSlideText(fileName, slideIndex, oldValue, newValue, true, password, folderName) { (slideResultWithEmpty, error) -> Void in
                                        XCTAssertNil(error)
                                        XCTAssertNotNil(slideResultWithEmpty)
                                        XCTAssertNotNil(slideResultWithEmpty!.matches)
                                        XCTAssertLessThan(resultWithEmpty!.matches!, result!.matches!)
                                        XCTAssertLessThan(slideResult!.matches!, result!.matches!)
                                        XCTAssertLessThan(slideResultWithEmpty!.matches!, slideResult!.matches!)
                                        expectation.fulfill()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testTextReplaceRequest() {
        let expectation = self.expectation(description: "testTextReplaceRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let password = "password"
            let slideIndex = 1
            let oldValue = "text"
            let newValue = "new_text"
            let source = FileManager.default.contents(atPath: "TestData/Test.pptx")
            XCTAssertNotNil(source)
            SlidesAPI.replacePresentationTextOnline(source!, oldValue, newValue, nil, password) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.replacePresentationTextOnline(source!, oldValue, newValue, true, password) { (resultWithEmpty, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultWithEmpty)
                    SlidesAPI.replaceSlideTextOnline(source!, slideIndex, oldValue, newValue, nil, password) { (slideResult, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(slideResult)
                        SlidesAPI.replaceSlideTextOnline(source!, slideIndex, oldValue, newValue, true, password) { (slideResultWithEmpty, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(slideResultWithEmpty)
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHighlightShapeText() {
        let expectation = self.expectation(description: "testHighlightShapeText")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 6
            let shapeIndex = 1
            let paragraphIndex = 1
            let textToHighlight = "highlight"
            let color = "#FFF5FF8A"
            SlidesAPI.highlightShapeText(fileName, slideIndex, shapeIndex, textToHighlight, color, nil, false, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.getParagraph(fileName, slideIndex, shapeIndex, paragraphIndex, password, folderName) { (paragraph, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(paragraph)
                    XCTAssertNotNil(paragraph!.portionList)
                    XCTAssertNotEqual(textToHighlight, paragraph!.portionList![0].text)
                    XCTAssertNotEqual(color, paragraph!.portionList![0].highlightColor)
                    XCTAssertEqual(textToHighlight, paragraph!.portionList![1].text)
                    XCTAssertEqual(color, paragraph!.portionList![1].highlightColor)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testHighlightShapeRegex() {
        let expectation = self.expectation(description: "testHighlightShapeRegex")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 6
            let shapeIndex = 1
            let paragraphIndex = 1
            let textToHighlight = "highlight"
            let color = "#FFF5FF8A"
            let regex = "h.ghl[abci]ght"
            SlidesAPI.highlightShapeRegex(fileName, slideIndex, shapeIndex, regex, color, nil, false, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.getParagraph(fileName, slideIndex, shapeIndex, paragraphIndex, password, folderName) { (paragraph, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(paragraph)
                    XCTAssertNotNil(paragraph!.portionList)
                    XCTAssertNotEqual(textToHighlight, paragraph!.portionList![0].text)
                    XCTAssertNotEqual(color, paragraph!.portionList![0].highlightColor)
                    XCTAssertEqual(textToHighlight, paragraph!.portionList![1].text)
                    XCTAssertEqual(color, paragraph!.portionList![1].highlightColor)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
