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

class ImageTests : XCTestCase {
    static var allTests : [(String, (ImageTests) -> () -> ())] = [
        ("testImageGet", testImageGet),
/*
        ("testImageDownloadAllStorage", testImageDownloadAllStorage),
        ("testConvertWithOptionsFromRequest", testConvertWithOptionsFromRequest),
        ("testConvertWithOptionsFromStorage", testConvertWithOptionsFromStorage),
        ("testConvertSlidePostFromRequest", testConvertSlidePostFromRequest),
        ("testConvertSlidePutFromRequest", testConvertSlidePutFromRequest),
        ("testConvertSlidePostFromStorage", testConvertSlidePostFromStorage),
        ("testConvertSlidePutFromStorage", testConvertSlidePutFromStorage),
        ("testConvertSlideWithOptionsFromRequest", testConvertSlideWithOptionsFromRequest),
        ("testConvertSlideWithOptionsFromStorage", testConvertSlideWithOptionsFromStorage),
        ("testConvertShapePostFromRequest", testConvertShapePostFromRequest),
        ("testConvertShapePutFromRequest", testConvertShapePutFromRequest),
        ("testConvertShapePostFromStorage", testConvertShapePostFromStorage),
        ("testConvertSubshapePostFromStorage", testConvertSubshapePostFromStorage),
        ("testConvertShapePutFromStorage", testConvertShapePutFromStorage),
        ("testConvertSubshapePutFromStorage", testConvertSubshapePutFromStorage),
        ("testConvertWithFallbackRules", testConvertWithFallbackRules),
*/
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testConvertPostFromStorage() {
        let expectation = self.expectation(description: "testConvertPostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadPresentation("test.pptx", "html5", nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testImageGet() {
        let expectation = self.expectation(description: "testImageGet")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.getPresentationImages(fileName, password, folderName) { (presentationResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(presentationResult)
                XCTAssertNotNil(presentationResult!.list)
                SlidesAPI.getSlideImages(fileName, 1, password, folderName) { (slideResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(slideResult)
                    XCTAssertNotNil(slideResult!.list)
                    XCTAssertLessThan(slideResult!.list!.count, presentationResult!.list!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
/*
    func testImageDownloadAllStorage() {
        let expectation = self.expectation(description: "testImageDownloadAllStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.downloadImagesDefaultFormat(fileName, password, folderName) { (defaultResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(defaultResult)
                SlidesAPI.downloadImages(fileName, "png", password, folderName) { (pngResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(pngResult)
                    XCTAssertNotEqual(defaultResult!.count, pngResult!.count)
                    var url = URL(fileURLWithPath: NSTemporaryDirectory())
                    url.appendPathComponent("allImages.zip")
                    let archive = Archive(url: archiveURL, accessMode: .read)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }*/
/*
    def test_image_download_all_storage(self):
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        BaseTest.slides_api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        default_result = BaseTest.slides_api.download_images_default_format(file_name, password, folder_name)
        png_result = BaseTest.slides_api.download_images(file_name, 'png', password, folder_name)
        self.assertNotEqual(os.path.getsize(default_result), os.path.getsize(png_result))
        with ZipFile(default_result) as default_zip:
            with ZipFile(png_result) as png_zip:
                self.assertEqual(len(default_zip.namelist()), len(png_zip.namelist()))
*/
/*
    func testConvertPostFromRequest() {
        let expectation = self.expectation(description: "testConvertPostFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.convert(document!, "pdf", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.convert(document!, "pdf", "password", "", "", [ 2, 4 ]) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertGreaterThan(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertWithOptionsFromRequest() {
        let expectation = self.expectation(description: "testConvertWithOptionsFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.convert(document!, "pdf", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let options = PdfExportOptions()
                options.drawSlidesFrame = true
                SlidesAPI.convert(document!, "pdf", "password", "", "", [], options) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertNotEqual(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlidePostFromRequest() {
        let expectation = self.expectation(description: "testConvertSlidePostFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.downloadSlideOnline(document!, 1, "pdf", nil, nil, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlidePutFromRequest() {
        let expectation = self.expectation(description: "testConvertSlidePutFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.saveSlideOnline(document!, 1, "pdf", outPath, nil, nil, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
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

    func testConvertSlidePostFromStorage() {
        let expectation = self.expectation(description: "testConvertSlidePostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadSlide("test.pptx", 1, "pdf", nil, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlidePutFromStorage() {
        let expectation = self.expectation(description: "testConvertSlidePutFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            SlidesAPI.saveSlide("test.pptx", 1, "pdf", outPath, nil, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
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

    func testConvertSlideWithOptionsFromRequest() {
        let expectation = self.expectation(description: "testConvertSlideWithOptionsFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.downloadSlideOnline(document!, 1, "pdf", nil, nil, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let options = PdfExportOptions()
                options.drawSlidesFrame = true
                SlidesAPI.downloadSlideOnline(document!, 1, "pdf", nil, nil, "password", "", "", options) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertNotEqual(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSlideWithOptionsFromStorage() {
        let expectation = self.expectation(description: "testConvertSlideWithOptionsFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let format = "pdf"
            let slideIndex = 1
            SlidesAPI.downloadSlide(fileName, slideIndex, format, nil, nil, nil, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let options = PdfExportOptions()
                options.drawSlidesFrame = true
                SlidesAPI.downloadSlide(fileName, slideIndex, format, options, nil, nil, password, folderName) { (resultSlides, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(resultSlides)
                    XCTAssertNotEqual(result!.count, resultSlides!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertShapePostFromRequest() {
        let expectation = self.expectation(description: "testConvertShapePostFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.downloadShapeOnline(document!, 1, 3, "png", nil, nil, "", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertShapePutFromRequest() {
        let expectation = self.expectation(description: "testConvertShapePutFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.saveShapeOnline(document!, 1, 1, "png", outPath, nil, nil, "", "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
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

    func testConvertShapePostFromStorage() {
        let expectation = self.expectation(description: "testConvertShapePostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadShape("test.pptx", 1, 1, "png", nil, nil, nil, "", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertSubshapePostFromStorage() {
        let expectation = self.expectation(description: "testConvertSubshapePostFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.downloadSubshape("test.pptx", 1, "4/shapes", 1, "png", nil, nil, nil, "", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConvertShapePutFromStorage() {
        let expectation = self.expectation(description: "testConvertShapePutFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            SlidesAPI.saveShape("test.pptx", 1, 1, "png", outPath, nil, nil, nil, "", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
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

    func testConvertSubshapePutFromStorage() {
        let expectation = self.expectation(description: "testConvertSubshapePutFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            SlidesAPI.saveSubshape("test.pptx", 1, "4/shapes", 1, "png", outPath, nil, nil, nil, "", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
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

    func testConvertWithFallbackRules() {
        let expectation = self.expectation(description: "testConvertWithFallbackRules")
        TestUtils.initialize("") { (response, error) -> Void in
            let outPath = "TempSlidesSDK/test.pptx"
            let startUnicodeIndex = 0x0B80
            let endUnicodeIndex = 0x0BFF

            let fontRule1 = FontFallbackRule()
            fontRule1.rangeStartIndex = startUnicodeIndex
            fontRule1.rangeEndIndex = endUnicodeIndex
            fontRule1.fallbackFontList = [ "Vijaya" ]

            let fontRule2 = FontFallbackRule()
            fontRule2.rangeStartIndex = startUnicodeIndex
            fontRule2.rangeEndIndex = endUnicodeIndex
            fontRule2.fallbackFontList = [ "Segoe UI Emoji", "Segoe UI Symbol", "Arial" ]

            let options = ImageExportOptions()
            options.fontFallbackRules = [fontRule1, fontRule2]
            SlidesAPI.savePresentation("test.pptx", "pdf", outPath, options, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
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
*/
/*
    def test_image_download_all_request(self):
        password = "password"
        with open(constant.LOCAL_TEST_DATA_FOLDER + "/" + constant.FILE_NAME, 'rb') as f:
            source = f.read()
        default_result = BaseTest.slides_api.download_images_default_format_online(source, password)
        png_result = BaseTest.slides_api.download_images_online(source, 'png', password)
        self.assertNotEqual(os.path.getsize(default_result), os.path.getsize(png_result))
        with ZipFile(default_result) as default_zip:
            with ZipFile(png_result) as png_zip:
                self.assertEqual(len(default_zip.namelist()), len(png_zip.namelist()))

    def test_image_download_storage(self):
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        slide_index = 1
        password = "password"
        BaseTest.slides_api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        default_result = BaseTest.slides_api.download_image_default_format(file_name, slide_index, password, folder_name)
        png_result = BaseTest.slides_api.download_image(file_name, slide_index, 'png', password, folder_name)
        self.assertNotEqual(os.path.getsize(default_result), os.path.getsize(png_result))

    def test_image_download_request(self):
        password = "password"
        slide_index = 1
        with open(constant.LOCAL_TEST_DATA_FOLDER + "/" + constant.FILE_NAME, 'rb') as f:
            source = f.read()
        default_result = BaseTest.slides_api.download_image_default_format_online(source, slide_index, password)
        png_result = BaseTest.slides_api.download_image_online(source, slide_index, 'png', password)
        self.assertNotEqual(os.path.getsize(default_result), os.path.getsize(png_result))
*/
}
