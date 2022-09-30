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

class NullableFieldTests : XCTestCase {
    static var allTests : [(String, (NullableFieldTests) -> () -> ())] = [
        ("testNullableProperties", testNullableProperties),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testNullableProperties() {
        let expectation = self.expectation(description: "testtestNullableProperties")
        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let slideIndex = 1
            let shapeIndex = 5
            let password = "password"
            let min1  = 44.3
            let min2 = 12.0
            let max1 = 104.3
            let max2 = 87.0

            var dto = Chart()
            dto.chartType = Chart.ChartType.line
            dto.width = 400
            dto.height = 300
            let title = ChartTitle()
            title.hasTitle = true
            title.text = "MyTitle"
            dto.title = title
            let series = OneValueSeries()
            series.type = Series.ModelType.clusteredColumn
            series.dataPointType = Series.DataPointType.oneValue
            series.name = "Series1"
            let point1 = OneValueChartDataPoint()
            point1.value = 40
            let point2 = OneValueChartDataPoint()
            point2.value = 50
            series.dataPoints = [ point1, point2 ]
            dto.series = ([ series ])
            var axes = Axes()
            var axis = Axis()
            axis.isAutomaticMinValue = false
            axis.minValue = min1
            axis.isAutomaticMaxValue = false
            axis.maxValue = max1
            axes.horizontalAxis = axis
            dto.axes = axes
            SlidesAPI.createShape(fileName, slideIndex, dto, nil, nil, password, folderName) { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
                    let chart = shape as? Chart
                    XCTAssertNotNil(chart)
                    XCTAssertNotNil(chart!.axes)
                    XCTAssertNotNil(chart!.axes!.horizontalAxis)
                    XCTAssertEqual(min1, chart!.axes!.horizontalAxis!.minValue)
                    XCTAssertEqual(max1, chart!.axes!.horizontalAxis!.maxValue)

                    dto = Chart()
                    axes = Axes()
                    axis = Axis()
                    axis.minValue = min2
                    axes.horizontalAxis = axis
                    dto.axes = axes
                    SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, dto, password, folderName) { (shape, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(shape)
                        SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (shape, error) -> Void in
                            XCTAssertNil(error)
                            XCTAssertNotNil(shape)
                            let chart = shape as? Chart
                            XCTAssertNotNil(chart)
                            XCTAssertNotNil(chart!.axes)
                            XCTAssertNotNil(chart!.axes!.horizontalAxis)
                            XCTAssertEqual(min2, chart!.axes!.horizontalAxis!.minValue)
                            XCTAssertEqual(max1, chart!.axes!.horizontalAxis!.maxValue)

                            axis = Axis()
                            axis.maxValue = max2
                            axes.horizontalAxis = axis
                            dto.axes = axes
                            SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, dto, password, folderName) { (shape, error) -> Void in
                                XCTAssertNil(error)
                                XCTAssertNotNil(shape)
                                SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (shape, error) -> Void in
                                    XCTAssertNil(error)
                                    XCTAssertNotNil(shape)
                                    let chart = shape as? Chart
                                    XCTAssertNotNil(chart)
                                    XCTAssertNotNil(chart!.axes)
                                    XCTAssertNotNil(chart!.axes!.horizontalAxis)
                                    XCTAssertEqual(min2, chart!.axes!.horizontalAxis!.minValue)
                                    XCTAssertEqual(max2, chart!.axes!.horizontalAxis!.maxValue)
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

