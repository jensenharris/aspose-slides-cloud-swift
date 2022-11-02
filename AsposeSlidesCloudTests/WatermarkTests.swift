/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
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
import ZIPFoundation
@testable import AsposeSlidesCloud

class WatermarkTests : XCTestCase {
    static var allTests : [(String, (WatermarkTests) -> () -> ())] = [
        ("testWatermarkTextStorage", testWatermarkTextStorage),
        ("testWatermarkDtoStorage", testWatermarkDtoStorage),
        ("testWatermarkImageStorage", testWatermarkImageStorage),
        ("testWatermarkImageDtoStorage", testWatermarkImageDtoStorage),
        ("testWatermarkTextRequest", testWatermarkTextRequest),
        ("testWatermarkDtoRequest", testWatermarkDtoRequest),
        ("testWatermarkImageRequest", testWatermarkImageRequest),
        ("testWatermarkImageDtoRequest", testWatermarkImageDtoRequest),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testWatermarkTextStorage() {
        let expectation = self.expectation(description: "testWatermarkTextStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            let watermarkText = "watermarkText"
            SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result1, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result1)
                XCTAssertNotNil(result1!.shapesLinks)
                let shapeCount = result1!.shapesLinks!.count + 1
                SlidesAPI.createWatermark(fileName, nil, nil, watermarkText, "", "", password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result2, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result2)
                        XCTAssertNotNil(result2!.shapesLinks)
                        XCTAssertEqual(shapeCount, result2!.shapesLinks!.count)
                        SlidesAPI.getShape(fileName, slideIndex, shapeCount, password, folderName) { (result, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(result)
                            let shape = result as? Shape
                            XCTAssertNotNil(shape)
                            XCTAssertEqual("watermark", shape!.name)
                            XCTAssertEqual(watermarkText, shape!.text)
                            SlidesAPI.deleteWatermark(fileName, "", password, folderName) { (result, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(result)
                                SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result3, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(result3)
                                    XCTAssertNotNil(result3!.shapesLinks)
                                    XCTAssertEqual(shapeCount - 1, result3!.shapesLinks!.count)
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

    func testWatermarkDtoStorage() {
        let expectation = self.expectation(description: "testWatermarkDtoStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            let watermarkText = "watermarkText"
            SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result1, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result1)
                XCTAssertNotNil(result1!.shapesLinks)
                let shapeCount = result1!.shapesLinks!.count + 1
                let shape = Shape()
                shape.text = watermarkText
                SlidesAPI.createWatermark(fileName, shape, nil, "", "", "", password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result2, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result2)
                        XCTAssertNotNil(result2!.shapesLinks)
                        XCTAssertEqual(shapeCount, result2!.shapesLinks!.count)
                        SlidesAPI.getShape(fileName, slideIndex, shapeCount, password, folderName) { (result, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(result)
                            let shape = result as? Shape
                            XCTAssertNotNil(shape)
                            XCTAssertEqual("watermark", shape!.name)
                            XCTAssertEqual(watermarkText, shape!.text)
                            SlidesAPI.deleteWatermark(fileName, "", password, folderName) { (result, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(result)
                                SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result3, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(result3)
                                    XCTAssertNotNil(result3!.shapesLinks)
                                    XCTAssertEqual(shapeCount - 1, result3!.shapesLinks!.count)
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

    func testWatermarkImageStorage() {
        let expectation = self.expectation(description: "testWatermarkImageStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result1, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result1)
                XCTAssertNotNil(result1!.shapesLinks)
                let shapeCount = result1!.shapesLinks!.count + 1
                let source = FileManager.default.contents(atPath: "TestData/watermark.png")
                XCTAssertNotNil(source)
                SlidesAPI.createImageWatermark(fileName, source, nil, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result2, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result2)
                        XCTAssertNotNil(result2!.shapesLinks)
                        XCTAssertEqual(shapeCount, result2!.shapesLinks!.count)
                        SlidesAPI.getShape(fileName, slideIndex, shapeCount, password, folderName) { (result, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(result)
                            let shape = result as? Shape
                            XCTAssertNotNil(shape)
                            XCTAssertEqual("watermark", shape!.name)
                            SlidesAPI.deleteWatermark(fileName, "", password, folderName) { (result, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(result)
                                SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result3, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(result3)
                                    XCTAssertNotNil(result3!.shapesLinks)
                                    XCTAssertEqual(shapeCount - 1, result3!.shapesLinks!.count)
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

    func testWatermarkImageDtoStorage() {
        let expectation = self.expectation(description: "testWatermarkImageDtoStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            let watermarkName = "myWatermark"
            SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result1, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result1)
                XCTAssertNotNil(result1!.shapesLinks)
                let shapeCount = result1!.shapesLinks!.count + 1
                let source = FileManager.default.contents(atPath: "TestData/watermark.png")
                XCTAssertNotNil(source)
                let watermark = PictureFrame()
                let fillFormat = PictureFill()
                fillFormat.base64Data = source!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
                watermark.fillFormat = fillFormat
                watermark.name = watermarkName
                SlidesAPI.createImageWatermark(fileName, nil, watermark, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result2, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result2)
                        XCTAssertNotNil(result2!.shapesLinks)
                        XCTAssertEqual(shapeCount, result2!.shapesLinks!.count)
                        SlidesAPI.getShape(fileName, slideIndex, shapeCount, password, folderName) { (result, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(result)
                            let shape = result as? Shape
                            XCTAssertNotNil(shape)
                            XCTAssertEqual(watermarkName, shape!.name)
                            SlidesAPI.deleteWatermark(fileName, watermarkName, password, folderName) { (result, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(result)
                                SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (result3, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(result3)
                                    XCTAssertNotNil(result3!.shapesLinks)
                                    XCTAssertEqual(shapeCount - 1, result3!.shapesLinks!.count)
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

    func testWatermarkTextRequest() {
        let expectation = self.expectation(description: "testWatermarkTextRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let password = "password"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.createWatermarkOnline(document!, nil, nil, "watermarkText", "", "", password) { (postResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(postResult)
                XCTAssertNotEqual(document!.count, postResult!.count)
                SlidesAPI.deleteWatermarkOnline(document!, "", password) { (deleteResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(deleteResult)
                    XCTAssertNotEqual(postResult!.count, deleteResult!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testWatermarkDtoRequest() {
        let expectation = self.expectation(description: "testWatermarkDtoRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let password = "password"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            let watermark = Shape()
            watermark.text = "watermarkText"
            SlidesAPI.createWatermarkOnline(document!, watermark, nil, "", "", "", password) { (postResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(postResult)
                XCTAssertNotEqual(document!.count, postResult!.count)
                SlidesAPI.deleteWatermarkOnline(document!, "", password) { (deleteResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(deleteResult)
                    XCTAssertNotEqual(postResult!.count, deleteResult!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testWatermarkImageRequest() {
        let expectation = self.expectation(description: "testWatermarkImageRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let password = "password"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            let watermark = FileManager.default.contents(atPath: "TestData/watermark.png")
            XCTAssertNotNil(watermark)
            SlidesAPI.createImageWatermarkOnline(document!, watermark, nil, password) { (postResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(postResult)
                XCTAssertNotEqual(document!.count, postResult!.count)
                SlidesAPI.deleteWatermarkOnline(document!, "", password) { (deleteResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(deleteResult)
                    XCTAssertNotEqual(postResult!.count, deleteResult!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testWatermarkImageDtoRequest() {
        let expectation = self.expectation(description: "testWatermarkImageDtoRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let password = "password"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            let watermark = FileManager.default.contents(atPath: "TestData/watermark.png")
            XCTAssertNotNil(watermark)
            let dto = PictureFrame()
            let fillFormat = PictureFill()
            fillFormat.base64Data = watermark!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
            dto.fillFormat = fillFormat
            SlidesAPI.createImageWatermarkOnline(document!, nil, dto, password) { (postResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(postResult)
                XCTAssertNotEqual(document!.count, postResult!.count)
                SlidesAPI.deleteWatermarkOnline(document!, "", password) { (deleteResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(deleteResult)
                    XCTAssertNotEqual(postResult!.count, deleteResult!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
