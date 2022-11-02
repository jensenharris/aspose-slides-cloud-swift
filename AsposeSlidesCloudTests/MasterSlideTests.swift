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

class MasterSlideTests : XCTestCase {
    static var allTests : [(String, (MasterSlideTests) -> () -> ())] = [
        ("testMasterSlides", testMasterSlides),
        ("testMasterSlideShapes", testMasterSlideShapes),
        ("testMasterSlideParagraphs", testMasterSlideParagraphs),
        ("testMasterSlidePortions", testMasterSlidePortions),
        ("testMasterSlideAnimation", testMasterSlideAnimation),
        /*
        ("testMasterSlidesDeleteUnused", testMasterSlidesDeleteUnused),
        ("testMasterSlidesDeleteUnusedOnline", testMasterSlidesDeleteUnusedOnline),
        */
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testMasterSlides() {
        let expectation = self.expectation(description: "testMasterSlides")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let sourceFile : String = "TemplateCV.pptx"
            let sourcePath : String = folderName + "/" + sourceFile
            let password : String = "password"
            SlidesAPI.copyFile("TempTests/" + sourceFile, sourcePath) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.getMasterSlides(fileName, password, folderName) { (masterSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(masterSlides)
                    XCTAssertNotNil(masterSlides!.slideList)
                    XCTAssertEqual(1, masterSlides!.slideList!.count)
                    SlidesAPI.getMasterSlide(fileName, 1, password, folderName) { (masterSlide, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(masterSlide)
                        XCTAssertEqual("Office Theme", masterSlide!.name)
                        SlidesAPI.copyMasterSlide(fileName, sourcePath, 1, "", "", nil, password, folderName) { (masterSlide, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(masterSlide)
                            XCTAssertEqual("Digital portfolio", masterSlide!.name)
                            SlidesAPI.getMasterSlides(fileName, password, folderName) { (masterSlides, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(masterSlides)
                                XCTAssertNotNil(masterSlides!.slideList)
                                XCTAssertEqual(2, masterSlides!.slideList!.count)
                                expectation.fulfill()
                            }
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMasterSlideShapes() {
        let expectation = self.expectation(description: "testMasterSlideShapes")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeCount = 6
            SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "masterSlide", password, folderName) { (shapes, error) -> Void in
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
                SlidesAPI.createSpecialSlideShape(fileName, slideIndex, "masterSlide", dto, nil, nil, password, folderName) { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
                    let shapeDto = shape as? Shape
                    XCTAssertNotNil(shapeDto)
                    XCTAssertEqual(dto.text, shapeDto!.text)
                    SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "masterSlide", password, folderName) { (shapes, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(shapes)
                        XCTAssertNotNil(shapes!.shapesLinks)
                        XCTAssertEqual(shapeCount + 1, shapes!.shapesLinks!.count)

                        dto.text = "New shape"
                        SlidesAPI.updateSpecialSlideShape(fileName, slideIndex, "masterSlide", shapeCount + 1, dto, password, folderName) { (shape, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(shape)
                            let shapeDto = shape as? Shape
                            XCTAssertNotNil(shapeDto)
                            XCTAssertEqual(dto.text, shapeDto!.text)
                            SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "masterSlide", password, folderName) { (shapes, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(shapes)
                                XCTAssertNotNil(shapes!.shapesLinks)
                                XCTAssertEqual(shapeCount + 1, shapes!.shapesLinks!.count)
                                SlidesAPI.deleteSpecialSlideShape(fileName, slideIndex, "masterSlide", shapeCount + 1, password, folderName) { (shapes, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(shapes)

                                    SlidesAPI.getSpecialSlideShapes(fileName, slideIndex, "masterSlide", password, folderName) { (shapes, error) -> Void in
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

    func testMasterSlideParagraphs() {
        let expectation = self.expectation(description: "testMasterSlideParagraphs")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeIndex = 2
            let paragraphCount = 5
            SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "masterSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(paragraphs)
                XCTAssertNotNil(paragraphs!.paragraphLinks)
                XCTAssertEqual(paragraphCount, paragraphs!.paragraphLinks!.count)

                let portion = Portion()
                portion.text = "New Paragraph"
                var dto = Paragraph()
                dto.alignment = Paragraph.Alignment._right
                dto.portionList = [ portion ]
                SlidesAPI.createSpecialSlideParagraph(fileName, slideIndex, "masterSlide", shapeIndex, dto, nil, password, folderName) { (paragraph, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(paragraph)
                    XCTAssertEqual(dto.alignment, paragraph!.alignment)
                    SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "masterSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(paragraphs)
                        XCTAssertNotNil(paragraphs!.paragraphLinks)
                        XCTAssertEqual(paragraphCount + 1, paragraphs!.paragraphLinks!.count)

                        dto = Paragraph()
                        dto.alignment = Paragraph.Alignment.center
                        SlidesAPI.updateSpecialSlideParagraph(fileName, slideIndex, "masterSlide", shapeIndex, paragraphCount + 1, dto, password, folderName) { (paragraph, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(paragraph)
                            XCTAssertEqual(dto.alignment, paragraph!.alignment)
                            SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "masterSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(paragraphs)
                                XCTAssertNotNil(paragraphs!.paragraphLinks)
                                XCTAssertEqual(paragraphCount + 1, paragraphs!.paragraphLinks!.count)
                                SlidesAPI.deleteSpecialSlideParagraph(fileName, slideIndex, "masterSlide", shapeIndex, paragraphCount + 1, password, folderName) { (paragraphs, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(paragraphs)

                                    SlidesAPI.getSpecialSlideParagraphs(fileName, slideIndex, "masterSlide", shapeIndex, password, folderName) { (paragraphs, error) -> Void in
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

    func testMasterSlidePortions() {
        let expectation = self.expectation(description: "testMasterSlidePortions")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            let shapeIndex = 2
            let paragraphIndex = 3
            let portionCount = 1
            SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "masterSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(portions)
                XCTAssertNotNil(portions!.items)
                XCTAssertEqual(portionCount, portions!.items!.count)

                let dto = Portion()
                dto.text = "New Portion"
                dto.fontBold = Portion.FontBold._true
                SlidesAPI.createSpecialSlidePortion(fileName, slideIndex, "masterSlide", shapeIndex, paragraphIndex, dto, nil, password, folderName) { (portion, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(portion)
                    XCTAssertEqual(dto.fontBold, portion!.fontBold)
                    XCTAssertEqual(dto.text, portion!.text)
                    SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "masterSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(portions)
                        XCTAssertNotNil(portions!.items)
                        XCTAssertEqual(portionCount + 1, portions!.items!.count)

                        let dto2 = Portion()
                        dto2.text = "Updated Portion"
                        dto2.fontHeight = 22
                        SlidesAPI.updateSpecialSlidePortion(fileName, slideIndex, "masterSlide", shapeIndex, paragraphIndex, portionCount + 1, dto2, password, folderName) { (portion, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(portion)
                            XCTAssertEqual(dto.fontBold, portion!.fontBold)
                            XCTAssertEqual(dto2.fontHeight, portion!.fontHeight)
                            XCTAssertEqual(dto2.text, portion!.text)
                            SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "masterSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(portions)
                                XCTAssertNotNil(portions!.items)
                                XCTAssertEqual(portionCount + 1, portions!.items!.count)
                                SlidesAPI.deleteSpecialSlidePortion(fileName, slideIndex, "masterSlide", shapeIndex, paragraphIndex, portionCount + 1, password, folderName) { (portions, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(portions)

                                    SlidesAPI.getSpecialSlidePortions(fileName, slideIndex, "masterSlide", shapeIndex, paragraphIndex, password, folderName) { (portions, error) -> Void in
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

    func testMasterSlideAnimation() {
        let expectation = self.expectation(description: "testMasterSlideAnimation")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex = 1
            SlidesAPI.getSpecialSlideAnimation(fileName, slideIndex, "masterSlide", nil, nil, password, folderName) { (animation, error) -> Void in
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
                SlidesAPI.setSpecialSlideAnimation(fileName, slideIndex, "masterSlide", dto, password, folderName) { (animation, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(animation)
                    XCTAssertNotNil(animation!.mainSequence)
                    XCTAssertEqual(dto.mainSequence!.count, animation!.mainSequence!.count)
                    SlidesAPI.getSpecialSlideAnimation(fileName, slideIndex, "masterSlide", 3, nil, password, folderName) { (animation, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(animation)
                        XCTAssertNotNil(animation!.mainSequence)
                        XCTAssertEqual(1, animation!.mainSequence!.count)

                        SlidesAPI.deleteSpecialSlideAnimationEffect(fileName, slideIndex, "masterSlide", 2, password, folderName) { (animation, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(animation)
                            XCTAssertNotNil(animation!.mainSequence)
                            XCTAssertEqual(dto.mainSequence!.count - 1, animation!.mainSequence!.count)

                            SlidesAPI.getSpecialSlideAnimation(fileName, slideIndex, "masterSlide", 3, nil, password, folderName) { (animation, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(animation)
                                XCTAssertNotNil(animation!.mainSequence)
                                XCTAssertEqual(0, animation!.mainSequence!.count)

                                SlidesAPI.deleteSpecialSlideAnimation(fileName, slideIndex, "masterSlide", password, folderName) { (animation, error) -> Void in
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
/*
    func testMasterSlidesDeleteUnused() {
        let expectation = self.expectation(description: "testMasterSlidesDeleteUnused")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            SlidesAPI.getMasterSlides(fileName, password, folderName) { (masterSlides, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(masterSlides)
                XCTAssertNotNil(masterSlides!.slideList)
                XCTAssertEqual(11, masterSlides!.slideList!.count)

                SlidesAPI.deleteUnusedMasterSlides(fileName, password, folderName) { (masterSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(masterSlides)
                    XCTAssertNotNil(masterSlides!.slideList)
                    XCTAssertEqual(2, masterSlides!.slideList!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMasterSlidesDeleteUnusedOnline() {
        let expectation = self.expectation(description: "testMasterSlidesDeleteUnusedOnline")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.deleteUnusedMasterSlidesOnline(document!, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    */
}
