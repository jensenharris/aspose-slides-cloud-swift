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

class TimeoutTests : XCTestCase {
    static var allTests : [(String, (TimeoutTests) -> () -> ())] = [
        ("testTimeoutMain", testTimeoutMain),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTimeoutMain() {
        let expectation = self.expectation(description: "testTimeoutMain")
        let file = FileManager.default.contents(atPath: "testConfig.json")
        let json = try? JSONSerialization.jsonObject(with: file!)
        let config = json as! [String:Any]
        TestUtils.initialize("") { (response, error) -> Void in
            AsposeSlidesCloudAPI.appSid = config["ClientId"] as! String
            AsposeSlidesCloudAPI.appKey = config["ClientSecret"] as! String
            AsposeSlidesCloudAPI.basePath = config["BaseUrl"] as! String
            AsposeSlidesCloudAPI.authBasePath = config["AuthBaseUrl"] as! String
            AsposeSlidesCloudAPI.debug = config["Debug"] as! Bool
            AsposeSlidesCloudAPI.timeout = 1
            SlidesAPI.downloadSlide("test.pptx", 1, "svg", nil, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error) //error is asctually expected
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
