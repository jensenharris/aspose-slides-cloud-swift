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

class PipelineTests : XCTestCase {
    static var allTests : [(String, (PipelineTests) -> () -> ())] = [
        ("testPipeline", testPipeline),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testPipeline() {
        let expectation = self.expectation(description: "testPipeline")
        TestUtils.initialize("") { (response, error) -> Void in

            let file1 = RequestInputFile()
            file1.type = InputFile.ModelType.request
            file1.index = 0

            let file2 = RequestInputFile()
            file2.type = InputFile.ModelType.request
            file2.index = 1

            let input = Input()
            input.templateData = file1
            input.template = file2

            let output = OutputFile()
            output.type = OutputFile.ModelType.response

            let task = Save()
            task.format = Save.Format.pptx
            task.output = output
            task.type = Task.ModelType.save

            let pipeline = Pipeline()
            pipeline.input = input
            pipeline.tasks = [task]

            let doc1 = FileManager.default.contents(atPath: "TestData/TemplatingCVDataWithBase64.xml")
            XCTAssertNotNil(doc1)

            let doc2 = FileManager.default.contents(atPath: "TestData/TemplateCV.pptx")
            XCTAssertNotNil(doc2)
            let files = [ doc1!, doc2! ]

            SlidesAPI.pipeline(pipeline, files) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}    

