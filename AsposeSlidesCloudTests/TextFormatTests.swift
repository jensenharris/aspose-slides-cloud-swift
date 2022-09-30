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

class TextFormatTests : XCTestCase {
    static var allTests : [(String, (TextFormatTests) -> () -> ())] = [
        ("testTextFormat3D", testTextFormat3D),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTextFormat3D() {
        let expectation = self.expectation(description: "testTextFormat3D")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Shape()
            dto.shapeType = Shape.ShapeType.rectangle
            dto.X = 100
            dto.Y = 100
            dto.height = 100
            dto.width = 200
            dto.text = "Sample text"

            let bevelBottom = ShapeBevel()
            bevelBottom.bevelType = ShapeBevel.BevelType.circle
            bevelBottom.height = 3.5
            bevelBottom.width = 3.5

            let bevelTop = ShapeBevel()
            bevelTop.bevelType = ShapeBevel.BevelType.circle
            bevelTop.height = 4
            bevelTop.width = 4

            let lightRig = LightRig()
            lightRig.lightType = LightRig.LightType.balanced
            lightRig.direction = LightRig.Direction.top
            lightRig.xRotation = 0
            lightRig.yRotation = 0
            lightRig.zRotation = 40

            let camera = Camera()
            camera.cameraType = Camera.CameraType.perspectiveContrastingRightFacing

            let threeDFormat = ThreeDFormat()
            threeDFormat.bevelTop = bevelTop
            threeDFormat.bevelBottom = bevelBottom
            threeDFormat.extrusionColor = "#FF008000"
            threeDFormat.extrusionHeight = 6
            threeDFormat.contourColor = "#FF25353D"
            threeDFormat.contourWidth = 1.5
            threeDFormat.depth = 3
            threeDFormat.material = ThreeDFormat.Material.plastic
            threeDFormat.lightRig = lightRig
            threeDFormat.camera = camera

            let textFrameFormat = TextFrameFormat()
            textFrameFormat.transform = TextFrameFormat.Transform.archUpPour
            textFrameFormat.threeDFormat = threeDFormat
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                XCTAssertNotNil(shape as? Shape)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
