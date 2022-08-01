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

class CommentTests : XCTestCase {
    static var allTests : [(String, (CommentTests) -> () -> ())] = [
        ("testCommentCreate", testCommentCreate),
        ("testCommentCreateOnline", testCommentCreateOnline),
        ("testGetSlideComments", testGetSlideComments),
        ("testDeleteComments", testDeleteComments),
        ("testDeleteCommentsOnline", testDeleteCommentsOnline),
        ("testDeleteSlideComments", testDeleteSlideComments),
        ("testDeleteSlideCommentsOnline", testDeleteSlideCommentsOnline),
        ("testCreateModernComment", testCreateModernComment),
        ("testCreateShapeModernComment", testCreateShapeModernComment)
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testCommentCreate() {
        let expectation = self.expectation(description: "testCommentCreate")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideComment()
            dto.text = "Comment text"
            dto.author = "Test author"
            let childComment = SlideComment()
            childComment.text = "Child comment text"
            childComment.author = "Test author"
            dto.childComments = [childComment]
            SlidesAPI.createComment("test.pptx", 3, dto, nil, "password", "TempSlidesSDK") { (comments, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(comments)
                XCTAssertNotNil(comments!.list)
                XCTAssertNotNil(comments!.list![0].author)
                XCTAssertEqual("Test author", comments!.list![0].author)
                XCTAssertNotNil(comments!.list![0].text)
                XCTAssertEqual("Comment text", comments!.list![0].text)
                XCTAssertNotNil(comments!.list![0].childComments)
                XCTAssertNotNil(comments!.list![0].childComments![0].author)
                XCTAssertEqual("Test author", comments!.list![0].childComments![0].author)
                XCTAssertNotNil(comments!.list![0].childComments![0].text)
                XCTAssertEqual("Child comment text", comments!.list![0].childComments![0].text)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCommentCreateOnline() {
        let expectation = self.expectation(description: "testCommentCreateOnline")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideComment()
            dto.text = "Comment text"
            dto.author = "Test author"
            let childComment = SlideComment()
            childComment.text = "Child comment text"
            childComment.author = "Test author"
            dto.childComments = [childComment]
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.createCommentOnline(document!, 3, dto, nil, "password") { (output, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(output)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testGetSlideComments() {
        let expectation = self.expectation(description: "testGetSlideComments")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSlideComments("test.pptx", 1, "password", "TempSlidesSDK") { (comments, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(comments)
                XCTAssertNotNil(comments!.list)
                XCTAssertEqual(2, comments!.list!.count)
                XCTAssertNotNil(comments!.list![0].childComments)
                XCTAssertEqual(1, comments!.list![0].childComments!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testDeleteComments() {
        let expectation = self.expectation(description: "testDeleteComments")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folder = "TempSlidesSDK"
            let password = "password"
            SlidesAPI.deleteComments(fileName, "", password, folder) { (response, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(response)
                SlidesAPI.getSlideComments(fileName, 1, password, folder) { (comments, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(comments)
                    XCTAssertNotNil(comments!.list)
                    XCTAssertEqual(0, comments!.list!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testDeleteCommentsOnline() {
        let expectation = self.expectation(description: "testDeleteCommentsOnline")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.deleteCommentsOnline(document!, "", "password") { (output, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(output)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testDeleteSlideComments() {
        let expectation = self.expectation(description: "testDeleteSlideComments")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folder = "TempSlidesSDK"
            let password = "password"
            let slideIndex = 1
            SlidesAPI.deleteSlideComments(fileName, slideIndex, "", password, folder) { (response, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(response)
                SlidesAPI.getSlideComments(fileName, slideIndex, password, folder) { (comments, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(comments)
                    XCTAssertNotNil(comments!.list)
                    XCTAssertEqual(0, comments!.list!.count)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testDeleteSlideCommentsOnline() {
        let expectation = self.expectation(description: "testDeleteSlideCommentsOnline")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.deleteSlideCommentsOnline(document!, 1, "", "password") { (output, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(output)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCreateModernComment() {
        let expectation = self.expectation(description: "testCreateModernComment")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideModernComment()
            dto.text = "Comment text"
            dto.author = "Test author"
            dto.status = SlideModernComment.Status.active
            dto.textSelectionStart = 1
            dto.textSelectionLength = 5
            let childComment = SlideModernComment()
            childComment.text = "Child comment text"
            childComment.author = "Test author"
            childComment.status = SlideModernComment.Status.resolved
            dto.childComments = [childComment]
            SlidesAPI.createComment("test.pptx", 3, dto, nil, "password", "TempSlidesSDK") { (comments, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(comments)
                XCTAssertNotNil(comments!.list)
                XCTAssertEqual(1, comments!.list!.count)
                XCTAssertEqual(SlideComment.ModelType.modern, comments!.list![0].type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testCreateShapeModernComment() {
        let expectation = self.expectation(description: "testCreateModernComment")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideModernComment()
            dto.text = "Comment text"
            dto.author = "Test author"
            dto.status = SlideModernComment.Status.active
            dto.textSelectionStart = 1
            dto.textSelectionLength = 5
            let childComment = SlideModernComment()
            childComment.text = "Child comment text"
            childComment.author = "Test author"
            childComment.status = SlideModernComment.Status.resolved
            dto.childComments = [childComment]
            SlidesAPI.createComment("test.pptx", 3, dto, 1, "password", "TempSlidesSDK") { (comments, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(comments)
                XCTAssertNotNil(comments!.list)
                XCTAssertEqual(1, comments!.list!.count)
                XCTAssertEqual(SlideComment.ModelType.modern, comments!.list![0].type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
