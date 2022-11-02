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

class NotesSlideTests : XCTestCase {
    static var allTests : [(String, (NotesSlideTests) -> () -> ())] = [
        ("testNotesSlideGetFromStorage", testNotesSlideGetFromStorage),
        ("testNotesSlideExistsFromStorage", testNotesSlideExistsFromStorage),
        ("testNotesSlideDownloadFromStorage", testNotesSlideDownloadFromStorage),
        ("testNotesSlideGetFromRequest", testNotesSlideGetFromRequest),
        ("testNotesSlideExistsFromRequest", testNotesSlideExistsFromRequest),
        ("testNotesSlideDownloadFromRequest", testNotesSlideDownloadFromRequest),
        ("testNotesSlideShapes", testNotesSlideShapes),
        ("testNotesSlideParagraphs", testNotesSlideParagraphs),
        ("testNotesSlidePortions", testNotesSlidePortions),
        ("testNotesSlideCreate", testNotesSlideCreate),
        ("testNotesSlideUpdate", testNotesSlideUpdate),
        ("testNotesSlideDelete", testNotesSlideDelete),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testNotesSlideGetFromStorage() {
        let expectation = self.expectation(description: "testNotesSlideGetFromStorage")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getNotesSlide("test.pptx", 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.text)
                XCTAssertGreaterThan(result!.text!.length, 0)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideExistsFromStorage() {
        let expectation = self.expectation(description: "testNotesSlideExistsFromStorage")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.notesSlideExists("test.pptx", 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.exists)
                XCTAssertTrue(result!.exists!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideDownloadFromStorage() {
        let expectation = self.expectation(description: "testNotesSlideDownloadFromStorage")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadNotesSlide("test.pptx", 1, "png", nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideGetFromRequest() {
        let expectation = self.expectation(description: "testNotesSlideGetFromRequest")

        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.getNotesSlideOnline(document!, 1, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.text)
                XCTAssertGreaterThan(result!.text!.length, 0)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideExistsFromRequest() {
        let expectation = self.expectation(description: "testNotesSlideExistsFromRequest")

        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.notesSlideExistsOnline(document!, 1, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.exists)
                XCTAssertTrue(result!.exists!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideDownloadFromRequest() {
        let expectation = self.expectation(description: "testNotesSlideDownloadFromRequest")

        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.downloadNotesSlideOnline(document!, 1, "png", nil, nil, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideShapes() {
        let expectation = self.expectation(description: "testNotesSlideShapes")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeCount = 3
            SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "notesSlide", password, folderName) { (shapes, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shapes)
                XCTAssertNotNil(shapes!.shapesLinks)
                XCTAssertEqual(shapeCount, shapes!.shapesLinks!.count)

                let dto = Shape()
                dto.x = 100
                dto.y = 100
                dto.width = 500
                dto.height = 200
                dto.shapeType = GeometryShape.ShapeType.rectangle
                dto.text = "New shape"
                SlidesAPI.createSpecialSlideShape(fileName, slideIndex, "notesSlide", dto, nil, nil, password, folderName) { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
                    let shapeDto = shape as? Shape
                    XCTAssertNotNil(shapeDto)
                    XCTAssertEqual(dto.text, shapeDto!.text)
                    SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "notesSlide", password, folderName) { (shapes, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(shapes)
                        XCTAssertNotNil(shapes!.shapesLinks)
                        XCTAssertEqual(shapeCount + 1, shapes!.shapesLinks!.count)

                        dto.text = "New shape"
                        SlidesAPI.updateSpecialSlideShape(fileName, slideIndex, "notesSlide", shapeCount + 1, dto, password, folderName) { (shape, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(shape)
                            let shapeDto = shape as? Shape
                            XCTAssertNotNil(shapeDto)
                            XCTAssertEqual(dto.text, shapeDto!.text)
                            SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "notesSlide", password, folderName) { (shapes, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(shapes)
                                XCTAssertNotNil(shapes!.shapesLinks)
                                XCTAssertEqual(shapeCount + 1, shapes!.shapesLinks!.count)
                                SlidesAPI.deleteSpecialSlideShape(fileName, slideIndex, "notesSlide", shapeCount + 1, password, folderName) { (shapes, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(shapes)

                                    SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "notesSlide", password, folderName) { (shapes, error) -> Void in
                                        XCTAssertNil(error)
                                        XCTAssertNotNil(shapes)
                                        XCTAssertNotNil(shapes!.shapesLinks)
                                        XCTAssertEqual(shapeCount, shapes!.shapesLinks!.count)
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

    func testNotesSlideParagraphs() {
        let expectation = self.expectation(description: "testNotesSlideParagraphs")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeIndex = 2
            let paragraphCount = 1
            SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "notesSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(paragraphs)
                XCTAssertNotNil(paragraphs!.paragraphLinks)
                XCTAssertEqual(paragraphCount, paragraphs!.paragraphLinks!.count)

                let portion = Portion()
                portion.text = "New Paragraph"
                var dto = Paragraph()
                dto.alignment = Paragraph.Alignment._right
                dto.portionList = [ portion ]
                SlidesAPI.createSpecialSlideParagraph(fileName, slideIndex, "notesSlide", shapeIndex, dto, nil, password, folderName) { (paragraph, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(paragraph)
                    XCTAssertEqual(dto.alignment, paragraph!.alignment)
                    SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "notesSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(paragraphs)
                        XCTAssertNotNil(paragraphs!.paragraphLinks)
                        XCTAssertEqual(paragraphCount + 1, paragraphs!.paragraphLinks!.count)

                        dto = Paragraph()
                        dto.alignment = Paragraph.Alignment.center
                        SlidesAPI.updateSpecialSlideParagraph(fileName, slideIndex, "notesSlide", shapeIndex, paragraphCount + 1, dto, password, folderName) { (paragraph, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(paragraph)
                            XCTAssertEqual(dto.alignment, paragraph!.alignment)
                            SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "notesSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(paragraphs)
                                XCTAssertNotNil(paragraphs!.paragraphLinks)
                                XCTAssertEqual(paragraphCount + 1, paragraphs!.paragraphLinks!.count)
                                SlidesAPI.deleteSpecialSlideParagraph(fileName, slideIndex, "notesSlide", shapeIndex, paragraphCount + 1, password, folderName) { (paragraphs, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(paragraphs)

                                    SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "notesSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                                        XCTAssertNil(error)
                                        XCTAssertNotNil(paragraphs)
                                        XCTAssertNotNil(paragraphs!.paragraphLinks)
                                        XCTAssertEqual(paragraphCount, paragraphs!.paragraphLinks!.count)
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

    func testNotesSlidePortions() {
        let expectation = self.expectation(description: "testNotesSlidePortions")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeIndex = 2
            let paragraphIndex = 1
            let portionCount = 1
            SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "notesSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(portions)
                XCTAssertNotNil(portions!.items)
                XCTAssertEqual(portionCount, portions!.items!.count)

                let dto = Portion()
                dto.text = "New Portion"
                dto.fontBold = Portion.FontBold._true
                SlidesAPI.createSpecialSlidePortion(fileName, slideIndex, "notesSlide", shapeIndex, paragraphIndex, dto, nil, password, folderName) { (portion, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(portion)
                    XCTAssertEqual(dto.fontBold, portion!.fontBold)
                    XCTAssertEqual(dto.text, portion!.text)
                    SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "notesSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(portions)
                        XCTAssertNotNil(portions!.items)
                        XCTAssertEqual(portionCount + 1, portions!.items!.count)

                        let dto2 = Portion()
                        dto2.text = "Updated Portion"
                        dto2.fontHeight = 22
                        SlidesAPI.updateSpecialSlidePortion(fileName, slideIndex, "notesSlide", shapeIndex, paragraphIndex, portionCount + 1, dto2, password, folderName) { (portion, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(portion)
                            XCTAssertEqual(dto.fontBold, portion!.fontBold)
                            XCTAssertEqual(dto2.fontHeight, portion!.fontHeight)
                            XCTAssertEqual(dto2.text, portion!.text)
                            SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "notesSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(portions)
                                XCTAssertNotNil(portions!.items)
                                XCTAssertEqual(portionCount + 1, portions!.items!.count)
                                SlidesAPI.deleteSpecialSlidePortion(fileName, slideIndex, "notesSlide", shapeIndex, paragraphIndex, portionCount + 1, password, folderName) { (portions, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(portions)

                                    SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "notesSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                                        XCTAssertNil(error)
                                        XCTAssertNotNil(portions)
                                        XCTAssertNotNil(portions!.items)
                                        XCTAssertEqual(portionCount, portions!.items!.count)
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

    func testNotesSlideCreate() {
        let expectation = self.expectation(description: "testNotesSlideCreate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = NotesSlide()
            dto.text = "Note text"
            SlidesAPI.createNotesSlide("test.pptx", 1, dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.text)
                XCTAssertEqual(dto.text, result!.text!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideUpdate() {
        let expectation = self.expectation(description: "testNotesSlideUpdate")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = NotesSlide()
            dto.text = "Updated note text"
            SlidesAPI.updateNotesSlide("test.pptx", 1, dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.text)
                XCTAssertEqual(dto.text, result!.text!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testNotesSlideDelete() {
        let expectation = self.expectation(description: "testNotesSlideDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteNotesSlide("test.pptx", 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNil(result!.notesSlide)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
