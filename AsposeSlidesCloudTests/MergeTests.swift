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

class MergeTests : XCTestCase {
    static var allTests : [(String, (MergeTests) -> () -> ())] = [
        ("testMergeStorage", testMergeStorage),
        ("testMergeOrderedStorage", testMergeOrderedStorage),
        ("testMergeRequest", testMergeRequest),
        ("testMergeAndSaveRequest", testMergeAndSaveRequest),
        ("testMergeOrderedRequest", testMergeOrderedRequest),
        ("testMergeOrderedCombined", testMergeOrderedCombined),
/*        ("testMergeOrderedUrl", testMergeOrderedUrl),*/
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testMergeStorage() {
        let expectation = self.expectation(description: "testMergeStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName2 = "test-unprotected.pptx"
            SlidesAPI.copyFile("TempTests/" + fileName2, folderName + "/" + fileName2) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let fileNamePdf = "test.pdf"
                SlidesAPI.copyFile("TempTests/" + fileNamePdf, folderName + "/" + fileNamePdf) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)

                    let request = PresentationsMergeRequest()
                    request.presentationPaths = [ folderName + "/" + fileName2, folderName + "/" + fileNamePdf ]
                    SlidesAPI.merge("test.pptx", request, "password", folderName) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMergeOrderedStorage() {
        let expectation = self.expectation(description: "testMergeOrderedStorage")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName2 = "test-unprotected.pptx"
            SlidesAPI.copyFile("TempTests/" + fileName2, folderName + "/" + fileName2) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)

                let request = OrderedMergeRequest()
                let presentation = PresentationToMerge()
                presentation.path = folderName + "/" + fileName2
                presentation.slides = [ 2, 1 ]
                request.presentations = [ presentation ]
                SlidesAPI.orderedMerge("test.pptx", request, "password", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMergeRequest() {
        let expectation = self.expectation(description: "testMergeRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let source1 = FileManager.default.contents(atPath: "TestData/TemplateCV.pptx")
            XCTAssertNotNil(source1)
            let source2 = FileManager.default.contents(atPath: "TestData/test-unprotected.pptx")
            XCTAssertNotNil(source2)
            let files = [ source1!, source2! ]
            SlidesAPI.mergeOnline(files) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMergeAndSaveRequest() {
        let outPath = "TestData/out.pptx"
        let expectation = self.expectation(description: "testMergeAndSaveRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let source1 = FileManager.default.contents(atPath: "TestData/TemplateCV.pptx")
            XCTAssertNotNil(source1)
            let source2 = FileManager.default.contents(atPath: "TestData/test-unprotected.pptx")
            XCTAssertNotNil(source2)
            let files = [ source1!, source2! ]
            SlidesAPI.mergeAndSaveOnline(outPath, files) { (result, error) -> Void in
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

    func testMergeOrderedRequest() {
        let expectation = self.expectation(description: "testMergeOrderedRequest")
        TestUtils.initialize("") { (response, error) -> Void in
            let source1 = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(source1)
            let source2 = FileManager.default.contents(atPath: "TestData/test-unprotected.pptx")
            XCTAssertNotNil(source2)
            let files = [ source1!, source2! ]
            let request = OrderedMergeRequest()
            let presentation1 = PresentationToMerge()
            presentation1.path = "file1"
            presentation1.password = "password"
            let presentation2 = PresentationToMerge()
            presentation2.path = "file2"
            presentation2.slides = [ 1, 2 ]
            request.presentations = [ presentation1, presentation2 ]
            SlidesAPI.mergeOnline(files, request) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testMergeOrderedCombined() {
        let expectation = self.expectation(description: "testMergeOrderedCombined")
        TestUtils.initialize("") { (response, error) -> Void in
            let source = FileManager.default.contents(atPath: "TestData/test-unprotected.pptx")
            XCTAssertNotNil(source)
            let files = [ source! ]
            let request = OrderedMergeRequest()
            let presentation1 = PresentationToMerge()
            presentation1.path = "TempSlidesSDK/test.pptx"
            presentation1.source = PresentationToMerge.Source.storage
            presentation1.password = "password"
            let presentation2 = PresentationToMerge()
            presentation2.path = "file1"
            presentation2.slides = [ 1, 2 ]
            request.presentations = [ presentation1, presentation2 ]
            SlidesAPI.mergeOnline(files, request) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
/*
    func testMergeOrderedUrl() {
        let expectation = self.expectation(description: "testMergeOrderedUrl")
        TestUtils.initialize("") { (response, error) -> Void in
            let source = FileManager.default.contents(atPath: "TestData/test-unprotected.pptx")
            XCTAssertNotNil(source)
            let files = [ source! ]
            let request = OrderedMergeRequest()
            let presentation1 = PresentationToMerge()
            presentation1.path = "TempSlidesSDK/test.pptx"
            presentation1.source = PresentationToMerge.Source.storage
            presentation1.password = "password"
            presentation1.slides = [ 1, 2 ]
            let presentation2 = PresentationToMerge()
            presentation2.path = "https://drive.google.com/uc?export=download&id=1ycMzd7e--Ro9H8eH2GL5fPP7-2HjX4My"
            presentation2.source = PresentationToMerge.Source.url
            presentation2.slides = [ 1 ]
            request.presentations = [ presentation1, presentation2 ]
            SlidesAPI.mergeOnline(files, request) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }*/
}
