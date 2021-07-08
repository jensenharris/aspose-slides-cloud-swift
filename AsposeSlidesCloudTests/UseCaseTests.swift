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

class UseCaseTests : XCTestCase {
    static var allTests : [(String, (UseCaseTests) -> () -> ())] = [
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

        /*
               pipeline = Pipeline()
               pipeline.input = input

               files = {}
               with open("TestData/TemplatingCVDataWithBase64.xml", 'rb') as f:
                   files["file1"] = ("TemplatingCVDataWithBase64.xml", f.read())
        
               with open("TestData/TemplateCV.pptx", 'rb') as f:
                   files["file2"] = ("TemplateCV.pptx", f.read())

               request = PostSlidesPipelineRequest(pipeline, files)
               result = self.api.post_slides_pipeline(request)
               self.assertTrue(isinstance(result, str))
               self.assertTrue(len(result) > 0)
        */
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.pipeline(Pipeline(input: Input(template: RequestInputFile(type: InputFile.ModelType.request, index: 1), templateData: RequestInputFile(type: InputFile.ModelType.request, index: 0)), tasks: [ Save(type: Task.ModelType.save, format: Save.Format.pptx, output: OutputFile(type: OutputFile.ModelType.response)) ]), [ FileManager.default.contents(atPath: "TestData/TemplatingCVDataWithBase64.xml")!, FileManager.default.contents(atPath: "TestData/TemplateCV.pptx")! ]) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
