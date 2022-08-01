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

class CreateTests : XCTestCase {
    static var allTests : [(String, (CreateTests) -> () -> ())] = [
        ("testCreateEmpty", testCreateEmpty),
        ("testCreateFromRequest", testCreateFromRequest),
        ("testCreateFromStorage", testCreateFromStorage),
        ("testCreateFromTemplate", testCreateFromTemplate),
        ("testCreateFromHtml", testCreateFromHtml),
        ("testAppendFromHtml", testAppendFromHtml),
        ("testCreateFromPdf", testCreateFromPdf),
        ("testAppendFromPdf", testAppendFromPdf),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testCreateEmpty() {
        let expectation = self.expectation(description: "testCreateEmpty")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            SlidesAPI.deleteFile(folderName + "/" + fileName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.createPresentation(fileName, nil, "", "", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCreateFromRequest() {
        let expectation = self.expectation(description: "testCreateFromRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            SlidesAPI.deleteFile(folderName + "/" + fileName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let source = FileManager.default.contents(atPath: "TestData/test.pptx")
                XCTAssertNotNil(source)
                SlidesAPI.createPresentation(fileName, source, "password", "", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCreateFromStorage() {
        let expectation = self.expectation(description: "testCreateFromStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let newFileName = "test2.pptx"
            let folderName = "TempSlidesSDK"
            SlidesAPI.deleteFile(folderName + "/" + newFileName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.createPresentationFromSource(newFileName, folderName + "/" + fileName, "password", "", "", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCreateFromTemplate() {
        let expectation = self.expectation(description: "testCreateFromTemplate")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let templateFileName = "TemplateCV.pptx"
            let folderName = "TempSlidesSDK"
            SlidesAPI.deleteFile(folderName + "/" + fileName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let templatePath = folderName + "/" + templateFileName
                SlidesAPI.copyFile("TempTests/" + templateFileName, templatePath) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    let data = "<staff><person><name>John Doe</name><address><line1>10 Downing Street</line1><line2>London</line2></address><phone>+457 123456</phone><bio>Hi, I'm John and this is my CV</bio><skills><skill><title>C#</title><level>Excellent</level></skill><skill><title>C++</title><level>Good</level></skill><skill><title>Java</title><level>Average</level></skill></skills></person></staff>"
                    SlidesAPI.createPresentationFromTemplate(fileName, templatePath, data, "", "", nil, "", folderName) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCreateFromHtml() {
        let expectation = self.expectation(description: "testCreateFromHtml")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            SlidesAPI.deleteFile(folderName + "/" + fileName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                SlidesAPI.importFromHtml(fileName, "<html><body>New Content</body></html>", "", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testAppendFromHtml() {
        let expectation = self.expectation(description: "testAppendFromHtml")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            let password = "password"
            SlidesAPI.getSlides(fileName, password, folderName) { (getResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(getResult)
                XCTAssertNotNil(getResult!.slideList)
                let slideCount = getResult!.slideList!.count
                SlidesAPI.importFromHtml(fileName, "<html><body>New Content</body></html>", password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    SlidesAPI.getSlides(fileName, password, folderName) { (getResult, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(getResult)
                        XCTAssertNotNil(getResult!.slideList)
                        XCTAssertEqual(slideCount + 1, getResult!.slideList!.count)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCreateFromPdf() {
        let expectation = self.expectation(description: "testCreateFromPdf")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            SlidesAPI.deleteFile(folderName + "/" + fileName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let source = FileManager.default.contents(atPath: "TestData/test.pdf")
                XCTAssertNotNil(source)
                SlidesAPI.importFromPdf(fileName, source!, "", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testAppendFromPdf() {
        let expectation = self.expectation(description: "testAppendFromPdf")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            let password = "password"
            SlidesAPI.getSlides(fileName, password, folderName) { (getResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(getResult)
                XCTAssertNotNil(getResult!.slideList)
                let slideCount = getResult!.slideList!.count
                let source = FileManager.default.contents(atPath: "TestData/test.pdf")
                XCTAssertNotNil(source)
                SlidesAPI.importFromPdf(fileName, source!, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    SlidesAPI.getSlides(fileName, password, folderName) { (getResult, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(getResult)
                        XCTAssertNotNil(getResult!.slideList)
                        XCTAssertEqual(slideCount + 4, getResult!.slideList!.count)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
