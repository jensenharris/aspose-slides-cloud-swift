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

class LayoutSlideTests : XCTestCase {
    static var allTests : [(String, (LayoutSlideTests) -> () -> ())] = [
        ("testLayoutSlides", testLayoutSlides),
        ("testLayoutSlideShapes", testLayoutSlideShapes),
        ("testLayoutSlideParagraphs", testLayoutSlideParagraphs),
        ("testLayoutSlidePortions", testLayoutSlidePortions),
        ("testLayoutSlideAnimation", testLayoutSlideAnimation),
        ("testLayoutSlidesDeleteUnused", testLayoutSlidesDeleteUnused),
        ("testLayoutSlidesDeleteUnusedOnline", testLayoutSlidesDeleteUnusedOnline),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testLayoutSlides() {
        let expectation = self.expectation(description: "testLayoutSlides")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let sourceFile : String = "TemplateCV.pptx"
            let sourcePath : String = folderName + "/" + sourceFile
            let password : String = "password"
            SlidesAPI.copyFile("TempTests/" + sourceFile, sourcePath) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.getLayoutSlides(fileName, password, folderName) { (layoutSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(layoutSlides)
                    XCTAssertNotNil(layoutSlides!.slideList)
                    XCTAssertEqual(11, layoutSlides!.slideList!.count)
                    SlidesAPI.getLayoutSlide(fileName, 1, password, folderName) { (layoutSlide, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(layoutSlide)
                        XCTAssertEqual("Title Slide", layoutSlide!.name)
                        SlidesAPI.copyLayoutSlide(fileName, sourcePath, 2, "", "", password, folderName) { (layoutSlide, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(layoutSlide)
                            XCTAssertEqual("Title and Content", layoutSlide!.name)
                            SlidesAPI.getLayoutSlides(fileName, password, folderName) { (layoutSlides, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(layoutSlides)
                                XCTAssertNotNil(layoutSlides!.slideList)
                                XCTAssertEqual(12, layoutSlides!.slideList!.count)
                                expectation.fulfill()
                            }
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testLayoutSlideShapes() {
        let expectation = self.expectation(description: "testLayoutSlideShapes")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeCount = 6
            SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "layoutSlide", password, folderName) { (shapes, error) -> Void in
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
                SlidesAPI.createSpecialSlideShape(fileName, slideIndex, "layoutSlide", dto, nil, nil, password, folderName) { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
                    let shapeDto = shape as? Shape
                    XCTAssertNotNil(shapeDto)
                    XCTAssertEqual(dto.text, shapeDto!.text)
                    SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "layoutSlide", password, folderName) { (shapes, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(shapes)
                        XCTAssertNotNil(shapes!.shapesLinks)
                        XCTAssertEqual(shapeCount + 1, shapes!.shapesLinks!.count)

                        dto.text = "New shape"
                        SlidesAPI.updateSpecialSlideShape(fileName, slideIndex, "layoutSlide", shapeCount + 1, dto, password, folderName) { (shape, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(shape)
                            let shapeDto = shape as? Shape
                            XCTAssertNotNil(shapeDto)
                            XCTAssertEqual(dto.text, shapeDto!.text)
                            SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "layoutSlide", password, folderName) { (shapes, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(shapes)
                                XCTAssertNotNil(shapes!.shapesLinks)
                                XCTAssertEqual(shapeCount + 1, shapes!.shapesLinks!.count)
                                SlidesAPI.deleteSpecialSlideShape(fileName, slideIndex, "layoutSlide", shapeCount + 1, password, folderName) { (shapes, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(shapes)

                                    SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "layoutSlide", password, folderName) { (shapes, error) -> Void in
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

    func testLayoutSlideParagraphs() {
        let expectation = self.expectation(description: "testLayoutSlideParagraphs")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeIndex = 2
            let paragraphCount = 1
            SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "layoutSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(paragraphs)
                XCTAssertNotNil(paragraphs!.paragraphLinks)
                XCTAssertEqual(paragraphCount, paragraphs!.paragraphLinks!.count)

                let portion = Portion()
                portion.text = "New Paragraph"
                var dto = Paragraph()
                dto.alignment = Paragraph.Alignment._right
                dto.portionList = [ portion ]
                SlidesAPI.createSpecialSlideParagraph(fileName, slideIndex, "layoutSlide", shapeIndex, dto, nil, password, folderName) { (paragraph, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(paragraph)
                    XCTAssertEqual(dto.alignment, paragraph!.alignment)
                    SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "layoutSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(paragraphs)
                        XCTAssertNotNil(paragraphs!.paragraphLinks)
                        XCTAssertEqual(paragraphCount + 1, paragraphs!.paragraphLinks!.count)

                        dto = Paragraph()
                        dto.alignment = Paragraph.Alignment.center
                        SlidesAPI.updateSpecialSlideParagraph(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphCount + 1, dto, password, folderName) { (paragraph, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(paragraph)
                            XCTAssertEqual(dto.alignment, paragraph!.alignment)
                            SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "layoutSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(paragraphs)
                                XCTAssertNotNil(paragraphs!.paragraphLinks)
                                XCTAssertEqual(paragraphCount + 1, paragraphs!.paragraphLinks!.count)
                                SlidesAPI.deleteSpecialSlideParagraph(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphCount + 1, password, folderName) { (paragraphs, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(paragraphs)

                                    SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "layoutSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
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

    func testLayoutSlidePortions() {
        let expectation = self.expectation(description: "testLayoutSlidePortions")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeIndex = 2
            let paragraphIndex = 1
            let portionCount = 1
            SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(portions)
                XCTAssertNotNil(portions!.items)
                XCTAssertEqual(portionCount, portions!.items!.count)

                let dto = Portion()
                dto.text = "New Portion"
                dto.fontBold = Portion.FontBold._true
                SlidesAPI.createSpecialSlidePortion(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphIndex, dto, nil, password, folderName) { (portion, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(portion)
                    XCTAssertEqual(dto.fontBold, portion!.fontBold)
                    XCTAssertEqual(dto.text, portion!.text)
                    SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(portions)
                        XCTAssertNotNil(portions!.items)
                        XCTAssertEqual(portionCount + 1, portions!.items!.count)

                        let dto2 = Portion()
                        dto2.text = "Updated Portion"
                        dto2.fontHeight = 22
                        SlidesAPI.updateSpecialSlidePortion(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphIndex, portionCount + 1, dto2, password, folderName) { (portion, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(portion)
                            XCTAssertEqual(dto.fontBold, portion!.fontBold)
                            XCTAssertEqual(dto2.fontHeight, portion!.fontHeight)
                            XCTAssertEqual(dto2.text, portion!.text)
                            SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(portions)
                                XCTAssertNotNil(portions!.items)
                                XCTAssertEqual(portionCount + 1, portions!.items!.count)
                                SlidesAPI.deleteSpecialSlidePortion(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphIndex, portionCount + 1, password, folderName) { (portions, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(portions)

                                    SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "layoutSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
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

    func testLayoutSlideAnimation() {
        let expectation = self.expectation(description: "testLayoutSlideAnimation")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            SlidesAPI.getSpecialSlideAnimation(fileName, slideIndex, "layoutSlide", nil, nil, password, folderName) { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertEqual(1, animation!.mainSequence!.count)

                let effect1 = Effect()
                effect1.type = Effect.ModelType.blink
                effect1.shapeIndex = 2

                let effect2 = Effect()
                effect2.type = Effect.ModelType.appear
                effect2.shapeIndex = 3

                let dto = SlideAnimation()
                dto.mainSequence = [ effect1, effect2 ]
                SlidesAPI.setSpecialSlideAnimation(fileName, slideIndex, "layoutSlide", dto, password, folderName) { (animation, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(animation)
                    XCTAssertNotNil(animation!.mainSequence)
                    XCTAssertEqual(dto.mainSequence!.count, animation!.mainSequence!.count)
                    SlidesAPI.getSpecialSlideAnimation(fileName, slideIndex, "layoutSlide", 3, nil, password, folderName) { (animation, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(animation)
                        XCTAssertNotNil(animation!.mainSequence)
                        XCTAssertEqual(1, animation!.mainSequence!.count)

                        SlidesAPI.deleteSpecialSlideAnimationEffect(fileName, slideIndex, "layoutSlide", 2, password, folderName) { (animation, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(animation)
                            XCTAssertNotNil(animation!.mainSequence)
                            XCTAssertEqual(dto.mainSequence!.count - 1, animation!.mainSequence!.count)

                            SlidesAPI.getSpecialSlideAnimation(fileName, slideIndex, "layoutSlide", 3, nil, password, folderName) { (animation, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(animation)
                                XCTAssertNotNil(animation!.mainSequence)
                                XCTAssertEqual(0, animation!.mainSequence!.count)

                                SlidesAPI.deleteSpecialSlideAnimation(fileName, slideIndex, "layoutSlide", password, folderName) { (animation, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(animation)
                                    XCTAssertNotNil(animation!.mainSequence)
                                    XCTAssertEqual(0, animation!.mainSequence!.count)
                                    expectation.fulfill()
                                }
                            }
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testLayoutSlidesDeleteUnused() {
        let expectation = self.expectation(description: "testLayoutSlidesDeleteUnused")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            SlidesAPI.getLayoutSlides(fileName, password, folderName) { (layoutSlides, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(layoutSlides)
                XCTAssertNotNil(layoutSlides!.slideList)
                XCTAssertEqual(11, layoutSlides!.slideList!.count)

                SlidesAPI.deleteUnusedLayoutSlides(fileName, password, folderName) { (layoutSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(layoutSlides)
                    XCTAssertNotNil(layoutSlides!.slideList)
                    XCTAssertEqual(2, layoutSlides!.slideList!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testLayoutSlidesDeleteUnusedOnline() {
        let expectation = self.expectation(description: "testLayoutSlidesDeleteUnusedOnline")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.deleteUnusedLayoutSlidesOnline(document!, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
