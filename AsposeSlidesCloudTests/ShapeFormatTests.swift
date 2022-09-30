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

class ShapeFormatTests : XCTestCase {
    static var allTests : [(String, (ShapeFormatTests) -> () -> ())] = [
        ("testShapeFormatLine", testShapeFormatLine),
        ("testShapeFormatFill", testShapeFormatLine),
        ("testShapeFormatEffect", testShapeFormatEffect),
        ("testShapeFormat3D", testShapeFormat3D),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testShapeFormatLine() {
        let expectation = self.expectation(description: "testShapeFormatLine")

        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let slideIndex = 1
            let shapeIndex = 1
            let password = "password"
            let folderName = "TempSlidesSDK"
            let dto = Shape()
            let lineFormat = LineFormat()
            lineFormat.style = LineFormat.Style.thickThin
            lineFormat.width = 7
            lineFormat.dashStyle = LineFormat.DashStyle.dash
            dto.lineFormat = lineFormat
            SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, dto, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Shape)
                SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    let shape = result as? Shape 
                    XCTAssertNotNil(shape)
                    XCTAssertNotNil(shape!.lineFormat)
                    XCTAssertEqual(dto.lineFormat!.width, shape!.lineFormat!.width)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapeFormatFill() {
        let expectation = self.expectation(description: "testShapeFormatFill")

        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let slideIndex = 1
            let shapeIndex = 1
            let password = "password"
            let folderName = "TempSlidesSDK"
            let dto = Shape()
            let fillFormat = SolidFill()
            fillFormat.color = "#FFFFFF00"
            dto.fillFormat = fillFormat
            SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, dto, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Shape)
                SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    let shape = result as? Shape 
                    XCTAssertNotNil(shape)
                    XCTAssertNotNil(shape!.fillFormat)
                    let fill = shape!.fillFormat as? SolidFill
                    XCTAssertNotNil(fill)
                    XCTAssertEqual((dto.fillFormat as! SolidFill).color, fill!.color)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapeFormatEffect() {
        let expectation = self.expectation(description: "testShapeFormatEffect")

        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let slideIndex = 1
            let shapeIndex = 1
            let password = "password"
            let folderName = "TempSlidesSDK"
            let dto = Shape()
            let effectFormat = EffectFormat()
            let innerShadow = InnerShadowEffect()
            innerShadow.direction = 35
            innerShadow.blurRadius = 30
            innerShadow.distance = 40
            innerShadow.shadowColor = "#FFFFFF00"
            effectFormat.innerShadow = innerShadow
            dto.effectFormat = effectFormat
            SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, dto, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Shape)
                SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    let shape = result as? Shape 
                    XCTAssertNotNil(shape)
                    XCTAssertNotNil(shape!.effectFormat)
                    XCTAssertNotNil(shape!.effectFormat!.innerShadow)
                     XCTAssertEqual(dto.effectFormat!.innerShadow!.direction, shape!.effectFormat!.innerShadow!.direction)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapeFormat3D() {
        let expectation = self.expectation(description: "testShapeFormat3D")

        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let slideIndex = 1
            let shapeIndex = 1
            let password = "password"
            let folderName = "TempSlidesSDK"
            let dto = Shape()
            let threeDFormat = ThreeDFormat()
            threeDFormat.depth = 4

            let bevelTop = ShapeBevel()
            bevelTop.bevelType = ShapeBevel.BevelType.circle
            bevelTop.height = 6
            bevelTop.width = 6
            threeDFormat.bevelTop = bevelTop

            let camera = Camera()
            camera.cameraType = Camera.CameraType.orthographicFront
            threeDFormat.camera = camera

            let lightRig = LightRig()
            lightRig.lightType = LightRig.LightType.threePt
            lightRig.direction = LightRig.Direction.top
            threeDFormat.lightRig = lightRig
            dto.threeDFormat = threeDFormat
            SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, dto, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Shape)
                SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    let shape = result as? Shape 
                    XCTAssertNotNil(shape)
                    XCTAssertNotNil(shape!.threeDFormat)
                    XCTAssertNotNil(shape!.threeDFormat!.depth)
                    XCTAssertEqual(dto.threeDFormat!.depth, shape!.threeDFormat!.depth)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
