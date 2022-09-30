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

class ShapesTests : XCTestCase {
    static var allTests : [(String, (ShapesTests) -> () -> ())] = [
        ("testBaseShape", testBaseShape),
        ("testShapesGet", testShapesGet),
        ("testShapesGetByType", testShapesGetByType),
        ("testSubshapesGet", testSubshapesGet),
        ("testShapeGet", testShapeGet),
        ("testSubshapeGet", testSubshapeGet),
        ("testShapeAdd", testShapeAdd),
        ("testShapeEmpty", testShapeEmpty),
        ("testGraphicalObjectEmpty", testGraphicalObjectEmpty),
        ("testPictureFrameAdd", testPictureFrameAdd),
        ("testPictureFrameEmpty", testPictureFrameEmpty),
        ("testAudioFrameAdd", testAudioFrameAdd),
        ("testAudioFrameEmpty", testAudioFrameEmpty),
        ("testVideoFrameAdd", testVideoFrameAdd),
        ("testVideoFrameEmpty", testVideoFrameEmpty),
        ("testOleObjectFrameEmpty", testOleObjectFrameEmpty),
        ("testSmartArtAdd", testSmartArtAdd),
        ("testSmartArtTextFormatting", testSmartArtTextFormatting),
        ("testSmartArtEmpty", testSmartArtEmpty),
        ("testChartEmpty", testChartEmpty),
        ("testTableAdd", testTableAdd),
        ("testTableEmpty", testTableEmpty),
        ("testGroupShapeEmpty", testGroupShapeEmpty),
        ("testConnectorAdd", testConnectorAdd),
        ("testConnectorEmpty", testConnectorEmpty),
        ("testShapesAlign", testShapesAlign),
        ("testShapesAlignGroup", testShapesAlignGroup),
        ("testShapeGeometryGet", testShapeGeometryGet),
        ("testShapeGeometrySet", testShapeGeometrySet),
        ("testZoomFrameAdd", testZoomFrameAdd),
        ("testSectionZoomFrameAdd", testSectionZoomFrameAdd),
        ("testOleObjectFrameAddByLink", testOleObjectFrameAddByLink),
        ("testOleObjectFrameAddEmbedded", testOleObjectFrameAddEmbedded),
        ("testGroupShapeAdd", testGroupShapeAdd),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testBaseShape() {
        let expectation = self.expectation(description: "testBaseShape")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getShape("test.pptx", 1, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                let shape = result as? Shape 
                XCTAssertNotNil(shape)
                XCTAssertEqual("1", shape!.text)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapesGet() {
        let expectation = self.expectation(description: "testShapesGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getShapes("test.pptx", 3, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.shapesLinks)
                XCTAssertEqual(2, result!.shapesLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapesGetByType() {
        let expectation = self.expectation(description: "testShapesGetByType")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getShapes("test.pptx", 3, "password", "TempSlidesSDK", "", "Chart") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.shapesLinks)
                XCTAssertEqual(2, result!.shapesLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapesGet() {
        let expectation = self.expectation(description: "testSubshapesGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSubshapes("test.pptx", 1, "4/shapes", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.shapesLinks)
                XCTAssertEqual(2, result!.shapesLinks!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapeGet() {
        let expectation = self.expectation(description: "testShapeGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getShape("test.pptx", 3, 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(ShapeBase.ModelType.chart, result!.type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSubshapeGet() {
        let expectation = self.expectation(description: "testSubshapeGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getSubshape("test.pptx", 1, "4/shapes", 1, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(ShapeBase.ModelType.shape, result!.type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapeAdd() {
        let expectation = self.expectation(description: "testShapeAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Shape()
            dto.shapeType = GeometryShape.ShapeType.callout1
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Shape)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapeEmpty() {
        let expectation = self.expectation(description: "testShapeEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Shape()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testGraphicalObjectEmpty() {
        let expectation = self.expectation(description: "testGraphicalObjectEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = GraphicalObject()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPictureFrameAdd() {
        let expectation = self.expectation(description: "testPictureFrameAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = PictureFrame()
            let fill = PictureFill()
            fill.base64Data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXY5g+ffp/AAZTAsWGL27gAAAAAElFTkSuQmCC"
            dto.pictureFillFormat = fill
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? PictureFrame)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPictureFrameEmpty() {
        let expectation = self.expectation(description: "testPictureFrameEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = PictureFrame()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testAudioFrameAdd() {
        let expectation = self.expectation(description: "testAudioFrameAdd")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = AudioFrame()
            dto.base64Data = "bXAzc2FtcGxl"
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? AudioFrame)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testAudioFrameEmpty() {
        let expectation = self.expectation(description: "testAudioFrameEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = AudioFrame()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testVideoFrameAdd() {
        let expectation = self.expectation(description: "testVideoFrameAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = AudioFrame()
            dto.base64Data = "bXAzc2FtcGxl"
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? VideoFrame)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testVideoFrameEmpty() {
        let expectation = self.expectation(description: "testVideoFrameEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = VideoFrame()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testOleObjectFrameEmpty() {
        let expectation = self.expectation(description: "testOleObjectFrameEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = OleObjectFrame()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSmartArtAdd() {
        let expectation = self.expectation(description: "testSmartArtAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SmartArt()
            dto.X = 0
            dto.Y = 0
            dto.width = 300
            dto.height = 200
            dto.layout = SmartArt.Layout.basicProcess
            dto.quickStyle = SmartArt.QuickStyle.simpleFill
            dto.colorStyle = SmartArt.ColorStyle.coloredFillAccent1
            let node1 = SmartArtNode()
            node1.text = "First"
            node1.orgChartLayout = SmartArtNode.OrgChartLayout.initial
            let subNode1 = SmartArtNode()
            subNode1.text = "SubFirst"
            subNode1.orgChartLayout = SmartArtNode.OrgChartLayout.initial
            node1.nodes = [ subNode1 ]
            let node2 = SmartArtNode()
            node2.text = "Second"
            node2.orgChartLayout = SmartArtNode.OrgChartLayout.initial
            dto.nodes = [ node1, node2 ]
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? SmartArt)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSmartArtTextFormatting() {
        let expectation = self.expectation(description: "testSmartArtTextFormatting")

        TestUtils.initialize("") { (response, error) -> Void in
            let portion = Portion()
            portion.text = "New text"
            portion.fontHeight = 24
            portion.fontBold = Portion.FontBold._true
            portion.spacing = 3
            let fillFormat = SolidFill()
            fillFormat.color = "#FFFFFF00"
            portion.fillFormat = fillFormat
            SlidesAPI.updateSubshapePortion("test.pptx", 7, "1/nodes/1/nodes", 2, 1, 1, portion, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(portion.text, result!.text)
                XCTAssertEqual(portion.fontHeight, result!.fontHeight)
                XCTAssertEqual(portion.fontBold, result!.fontBold)
                XCTAssertEqual(portion.spacing, result!.spacing)
                XCTAssertNotNil(result!.fillFormat)
                let fill = result!.fillFormat as? SolidFill
                XCTAssertNotNil(fill)
                XCTAssertEqual(fillFormat.color, fill!.color)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSmartArtEmpty() {
        let expectation = self.expectation(description: "testSmartArtEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SmartArt()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? SmartArt)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testChartEmpty() {
        //See Chart tests for non-empty chart examples
        let expectation = self.expectation(description: "testChartEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Chart()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Chart)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testTableAdd() {
        let expectation = self.expectation(description: "testTableAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Table()
            dto.X = 30
            dto.Y = 20
            dto.style = Table.Style.mediumStyle2Accent1
            let row1 = TableRow()
            let cell11 = TableCell()
            cell11.text = "0.1"
            let cell12 = TableCell()
            cell12.text = "0.2"
            let cell13 = TableCell()
            cell13.text = "0.3"
            let cell14 = TableCell()
            cell14.text = "0.4"
            row1.cells = [ cell11, cell12, cell13, cell14 ]
            let row2 = TableRow()
            let cell21 = TableCell()
            cell21.text = "1"
            let cell22 = TableCell()
            cell22.text = "2-3"
            cell22.colSpan = 2
            cell22.rowSpan = 2
            let cell24 = TableCell()
            cell24.text = "4"
            row2.cells = [ cell21, cell22, cell24 ]
            let row3 = TableRow()
            let cell31 = TableCell()
            cell31.text = "first"
            let cell32 = TableCell()
            cell32.text = "last"
            row3.cells = [ cell31, cell32 ]
            let row4 = TableRow()
            let cell41 = TableCell()
            cell41.text = "3.1"
            let cell42 = TableCell()
            cell42.text = "3.2"
            let cell43 = TableCell()
            cell43.text = "3.3"
            let cell44 = TableCell()
            cell44.text = "3.4"
            row4.cells = [ cell41, cell42, cell43, cell44 ]
            let 			row5 = TableRow()
            let cell51 = TableCell()
            cell51.text = "4.1"
            let cell52 = TableCell()
            cell52.text = "4.2"
            let cell53 = TableCell()
            cell53.text = "4.3"
            let cell54 = TableCell()
            cell54.text = "4.4"
            row5.cells = [ cell51, cell52, cell53, cell54 ]
            dto.rows = [ row1, row2, row3, row4, row5 ]
            let column1 = TableColumn()
            column1.width = 100
            let column2 = TableColumn()
            column2.width = 100
            let column3 = TableColumn()
            column3.width = 100
            let column4 = TableColumn()
            column4.width = 100
            dto.columns = [ column1, column2, column3, column4 ]
            dto.firstRow = true
            dto.horizontalBanding = true
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Table)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testTableEmpty() {
        let expectation = self.expectation(description: "testTableEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Table()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNotNil(error)
                switch (error!) {
                case ErrorResponse.error(let actualCode, _, _):
                    XCTAssertEqual(400, actualCode)
                default:
                    XCTFail("Unexpected error")
                }
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testGroupShapeEmpty() {
        let expectation = self.expectation(description: "testGroupShapeEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = GroupShape()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? GroupShape)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConnectorAdd() {
        let expectation = self.expectation(description: "testConnectorAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Connector()
            dto.shapeType = GeometryShape.ShapeType.bentConnector3
            let start = ResourceUri()
            start.href = "https://api.aspose.cloud/v3.0/slides/myPresentation.pptx/slides/1/shapes/1"
            dto.startShapeConnectedTo = start
            let end = ResourceUri()
            end.href = "https://api.aspose.cloud/v3.0/slides/myPresentation.pptx/slides/1/shapes/2"
            dto.endShapeConnectedTo = end
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Connector)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testConnectorEmpty() {
        let expectation = self.expectation(description: "testConnectorEmpty")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Connector()
            SlidesAPI.createShape("test.pptx", 1, dto, nil, nil, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result as? Connector)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapesAlign() {
        let expectation = self.expectation(description: "testShapesAlign")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 3
            let shape1Index = 1
            let shape2Index = 2
            SlidesAPI.getShape(fileName, slideIndex, shape1Index, password, folderName) { (shape11, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape11)
                SlidesAPI.getShape(fileName, slideIndex, shape2Index, password, folderName) { (shape12, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape12)
                    XCTAssertNotEqual(shape11!.X, shape12!.X)
                    XCTAssertNotEqual(shape11!.Y, shape12!.Y)
                    SlidesAPI.alignShapes(fileName, slideIndex, "AlignTop", nil, [], password, folderName) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        SlidesAPI.getShape(fileName, slideIndex, shape1Index, password, folderName) { (shape21, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(shape21)
                            SlidesAPI.getShape(fileName, slideIndex, shape2Index, password, folderName) { (shape22, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(shape22)
                                XCTAssertNotEqual(shape21!.X, shape22!.X)
                                XCTAssertLessThan(1, abs(shape21!.Y! - shape22!.Y!))
                                SlidesAPI.alignShapes(fileName, slideIndex, "AlignLeft", true, [ 1, 2 ], password, folderName) { (result, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(result)
                                    SlidesAPI.getShape(fileName, slideIndex, shape1Index, password, folderName) { (shape31, error) -> Void in
                                        XCTAssertNil(error)
                                        XCTAssertNotNil(shape31)
                                        SlidesAPI.getShape(fileName, slideIndex, shape2Index, password, folderName) { (shape32, error) -> Void in
                                            XCTAssertNil(error)
                                            XCTAssertNotNil(shape32)
                                            XCTAssertLessThan(1, abs(shape31!.X! - shape32!.X!))
                                            XCTAssertLessThan(1, abs(shape31!.X!))
                                            XCTAssertLessThan(1, abs(shape31!.Y! - shape32!.Y!))
                                            expectation.fulfill()
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    func testShapesAlignGroup() {
        let expectation = self.expectation(description: "testShapesAlignGroup")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 1
            let path = "4/shapes"
            let shape1Index = 1
            let shape2Index = 2
            SlidesAPI.getSubshape(fileName, slideIndex, path, shape1Index, password, folderName) { (shape11, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape11)
                SlidesAPI.getSubshape(fileName, slideIndex, path, shape2Index, password, folderName) { (shape12, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape12)
                    XCTAssertNotEqual(shape11!.X, shape12!.X)
                    XCTAssertNotEqual(shape11!.Y, shape12!.Y)
                    SlidesAPI.alignSubshapes(fileName, slideIndex, path, "AlignTop", nil, [], password, folderName) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        SlidesAPI.getSubshape(fileName, slideIndex, path, shape1Index, password, folderName) { (shape21, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(shape21)
                            SlidesAPI.getSubshape(fileName, slideIndex, path, shape2Index, password, folderName) { (shape22, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(shape22)
                                XCTAssertNotEqual(shape21!.X, shape22!.X)
                                XCTAssertLessThan(1, abs(shape21!.Y! - shape22!.Y!))
                                SlidesAPI.alignSubshapes(fileName, slideIndex, path, "AlignLeft", true, [ 1, 2 ], password, folderName) { (result, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(result)
                                    SlidesAPI.getSubshape(fileName, slideIndex, path, shape1Index, password, folderName) { (shape31, error) -> Void in
                                        XCTAssertNil(error)
                                        XCTAssertNotNil(shape31)
                                        SlidesAPI.getSubshape(fileName, slideIndex, path, shape2Index, password, folderName) { (shape32, error) -> Void in
                                            XCTAssertNil(error)
                                            XCTAssertNotNil(shape32)
                                            XCTAssertLessThan(1, abs(shape31!.X! - shape32!.X!))
                                            XCTAssertLessThan(1, abs(shape31!.X!))
                                            XCTAssertLessThan(1, abs(shape31!.Y! - shape32!.Y!))
                                            expectation.fulfill()
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    func testShapeGeometryGet() {
        let expectation = self.expectation(description: "testShapeGeometryGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getShapeGeometryPath("test.pptx", 4, 2, "password", "TempSlidesSDK") { (paths, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(paths)
                XCTAssertNotNil(paths!.paths)
                XCTAssertEqual(1, paths!.paths!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testShapeGeometrySet() {
        let expectation = self.expectation(description: "testShapeGeometrySet")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = GeometryPaths()
            let path = GeometryPath()
            let start = MoveToPathSegment()
            start.X = 0
            start.Y = 0
            let line1 = LineToPathSegment()
            line1.X = 0
            line1.Y = 200
            let line2 = LineToPathSegment()
            line2.X = 200
            line2.Y = 300
            let line3 = LineToPathSegment()
            line3.X = 400
            line3.Y = 200
            let line4 = LineToPathSegment()
            line4.X = 400
            line4.Y = 0
            let end = ClosePathSegment()
            path.pathData = [ start, line1, line2, line3, line4, end ]
            dto.paths = [ path ]
            SlidesAPI.setShapeGeometryPath("test.pptx", 4, 1, dto, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testZoomFrameAdd() {
        let expectation = self.expectation(description: "testZoomFrameAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = ZoomFrame()
            dto.X = 20
            dto.Y = 20
            dto.width = 200
            dto.height = 100
            dto.targetSlideIndex = 2
            SlidesAPI.createShape("test.pptx", 3, dto, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let zoomFrame = shape as? ZoomFrame
                XCTAssertNotNil(zoomFrame)
                XCTAssertEqual(2, zoomFrame!.targetSlideIndex)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testSectionZoomFrameAdd() {
        let expectation = self.expectation(description: "testSectionZoomFrameAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SectionZoomFrame()
            dto.X = 20
            dto.Y = 20
            dto.width = 200
            dto.height = 100
            dto.targetSectionIndex = 2
            SlidesAPI.createShape("test.pptx", 3, dto, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let zoomFrame = shape as? SectionZoomFrame
                XCTAssertNotNil(zoomFrame)
                XCTAssertEqual(2, zoomFrame!.targetSectionIndex)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testOleObjectFrameAddByLink() {
        let expectation = self.expectation(description: "testOleObjectFrameAddByLink")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = OleObjectFrame()
            dto.X = 100
            dto.Y = 100
            dto.width = 200
            dto.height = 200
            dto.linkPath = "oleObject.xlsx"
            dto.objectProgId = "Excel.Sheet.8"
            SlidesAPI.createShape("test.pptx", 3, dto, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let frame = shape as? OleObjectFrame
                XCTAssertNotNil(frame)
                XCTAssertEqual(dto.linkPath, frame!.linkPath)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testOleObjectFrameAddEmbedded() {
        let expectation = self.expectation(description: "testOleObjectFrameAddEmbedded")

        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/oleObject.xlsx")
            XCTAssertNotNil(document)
            let dto = OleObjectFrame()
            dto.X = 100
            dto.Y = 100
            dto.width = 200
            dto.height = 200
            dto.embeddedFileBase64Data = document!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
            dto.embeddedFileExtension = "xlsx"
            SlidesAPI.createShape("test.pptx", 3, dto, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let frame = shape as? OleObjectFrame
                XCTAssertNotNil(frame)
                XCTAssertNotNil(frame!.embeddedFileBase64Data)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testGroupShapeAdd() {
        let expectation = self.expectation(description: "testGroupShapeAdd")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let slideIndex = 5
            let path = "1/shapes"
            SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (shapes, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shapes)
                XCTAssertNotNil(shapes!.shapesLinks)
                XCTAssertEqual(1, shapes!.shapesLinks!.count)
                let dto = GroupShape()
                SlidesAPI.createShape(fileName, slideIndex, dto, nil, nil, password, folderName) { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
 
                    let shape1 = Shape()
                    shape1.shapeType = GeometryShape.ShapeType.rectangle
                    shape1.X = 50
                    shape1.Y = 400
                    shape1.width = 50
                    shape1.height = 50
                    SlidesAPI.createSubshape(fileName, slideIndex, path, shape1, nil, nil, password, folderName) { (shape, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(shape)

                        let shape2 = Shape()
                        shape2.shapeType = GeometryShape.ShapeType.ellipse
                        shape2.X = 150
                        shape2.Y = 400
                        shape2.width = 50
                        shape2.height = 50
                        SlidesAPI.createSubshape(fileName, slideIndex, path, shape1, nil, nil, password, folderName) { (shape, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(shape)

                            let shape3 = Shape()
                            shape3.shapeType = GeometryShape.ShapeType.triangle
                            shape3.X = 250
                            shape3.Y = 400
                            shape3.width = 50
                            shape3.height = 50
                            SlidesAPI.getShapes(fileName, slideIndex, password, folderName) { (shapes, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(shapes)
                                XCTAssertNotNil(shapes)
                                XCTAssertNotNil(shapes!.shapesLinks)
                                XCTAssertEqual(1, shapes!.shapesLinks!.count)
                                SlidesAPI.getSubshapes(fileName, slideIndex, path, password, folderName) { (shapes, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(shapes)
                                    XCTAssertNotNil(shapes!.shapesLinks)
                                    XCTAssertEqual(3, shapes!.shapesLinks!.count)
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
}
