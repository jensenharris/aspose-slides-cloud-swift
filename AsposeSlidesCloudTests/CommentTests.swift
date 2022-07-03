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
/*
        ("testSeriesCreate", testSeriesCreate),
        ("testSeriesUpdate", testSeriesUpdate),
        ("testSeriesDelete", testSeriesDelete),
        ("testCategoryCreate", testCategoryCreate),
        ("testCategoryUpdate", testCategoryUpdate),
        ("testCategoryDelete", testCategoryDelete),
        ("testDataPointCreate", testDataPointCreate),
        ("testDataPointUpdate", testDataPointUpdate),
        ("testDataPointDelete", testDataPointDelete),
        ("testChartSunburst", testChartSunburst),
        ("testHideChartLegend", testHideChartLegend),
        ("testChartGridLinesFormat", testChartGridLinesFormat),
*/
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
        let expectation = self.expectation(description: "testCommentCreate")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideComment()
            dto.text = "Comment text"
            dto.author = "Test author"
            let childComment = SlideComment()
            childComment.text = "Child comment text"
            childComment.author = "Test author"
            dto.childComments = [childComment]
            SlidesAPI.createCommentOnline(document, 3, dto, nil, "password") { (output, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(output)
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
        self.assertIsNotNone(output_document)

/*
    func testSeriesCreate() {
        let expectation = self.expectation(description: "testSeriesCreate")
        TestUtils.initialize("") { (response, error) -> Void in
            let series = OneValueSeries()
            series.name = "Series3"
            let point1 = OneValueChartDataPoint()
            point1.value = 40
            let point2 = OneValueChartDataPoint()
            point2.value = 50
            let point3 = OneValueChartDataPoint()
            point3.value = 14
            let point4 = OneValueChartDataPoint()
            point4.value = 70
            series.dataPoints = [point1, point2, point3, point4]
            SlidesAPI.createChartSeries("test.pptx", 3, 1, series, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(4, chart!.series!.count)
                XCTAssertEqual(4, chart!.categories!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testSeriesUpdate() {
        let expectation = self.expectation(description: "testSeriesUpdate")
        TestUtils.initialize("") { (response, error) -> Void in
            let series = OneValueSeries()
            series.name = "Series3"
            let point1 = OneValueChartDataPoint()
            point1.value = 40
            let point2 = OneValueChartDataPoint()
            point2.value = 50
            let point3 = OneValueChartDataPoint()
            point3.value = 14
            let point4 = OneValueChartDataPoint()
            point4.value = 70
            series.dataPoints = [point1, point2, point3, point4]
            SlidesAPI.updateChartSeries("test.pptx", 3, 1, 2, series, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(3, chart!.series!.count)
                XCTAssertEqual(4, chart!.categories!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testSeriesDelete() {
        let expectation = self.expectation(description: "testSeriesDelete")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteChartSeries("test.pptx", 3, 1, 2, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(2, chart!.series!.count)
                XCTAssertEqual(4, chart!.categories!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testCategoryCreate() {
        let expectation = self.expectation(description: "testCategoryCreate")
        TestUtils.initialize("") { (response, error) -> Void in
            let category = ChartCategory()
            category.value = "NewCategory"
            let point1 = OneValueChartDataPoint()
            point1.value = 40
            let point2 = OneValueChartDataPoint()
            point2.value = 50
            let point3 = OneValueChartDataPoint()
            point3.value = 14
            category.dataPoints = [point1, point2, point3]
            SlidesAPI.createChartCategory("test.pptx", 3, 1, category, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(3, chart!.series!.count)
                XCTAssertEqual(5, chart!.categories!.count)
                let series = chart!.series![0] as? OneValueSeries
                XCTAssertNotNil(series)
                XCTAssertEqual(5, series!.dataPoints!.count)
                XCTAssertEqual(category.dataPoints![0].value, series!.dataPoints![4].value)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testCategoryUpdate() {
        let expectation = self.expectation(description: "testCategoryUpdate")
        TestUtils.initialize("") { (response, error) -> Void in
            let category = ChartCategory()
            category.value = "NewCategory"
            let point1 = OneValueChartDataPoint()
            point1.value = 40
            let point2 = OneValueChartDataPoint()
            point2.value = 50
            let point3 = OneValueChartDataPoint()
            point3.value = 14
            category.dataPoints = [point1, point2, point3]
            SlidesAPI.updateChartCategory("test.pptx", 3, 1, 2, category, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(3, chart!.series!.count)
                XCTAssertEqual(4, chart!.categories!.count)
                XCTAssertEqual(4, (chart!.series![0] as! OneValueSeries).dataPoints!.count)
                XCTAssertEqual(category.dataPoints![0].value, (chart!.series![0] as! OneValueSeries).dataPoints![1].value)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testCategoryDelete() {
        let expectation = self.expectation(description: "testCategoryDelete")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteChartCategory("test.pptx", 3, 1, 2, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(3, chart!.series!.count)
                XCTAssertEqual(3, chart!.categories!.count)
                XCTAssertEqual(3, (chart!.series![0] as! OneValueSeries).dataPoints!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testDataPointCreate() {
        let expectation = self.expectation(description: "testDataPointCreate")
        TestUtils.initialize("") { (response, error) -> Void in
            let point = OneValueChartDataPoint()
            point.value = 40
            SlidesAPI.createChartDataPoint("test.pptx", 3, 1, 2, point, "password", "TempSlidesSDK") { (chart, error) -> Void in
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
    
    func testDataPointUpdate() {
        let expectation = self.expectation(description: "testDataPointUpdate")
        TestUtils.initialize("") { (response, error) -> Void in
            let point = OneValueChartDataPoint()
            point.value = 40
            SlidesAPI.updateChartDataPoint("test.pptx", 3, 1, 2, 2, point, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(3, chart!.series!.count)
                XCTAssertEqual(4, chart!.categories!.count)
                XCTAssertEqual(4, (chart!.series![1] as! OneValueSeries).dataPoints!.count)
                XCTAssertEqual(point.value, (chart!.series![1] as! OneValueSeries).dataPoints![1].value)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testDataPointDelete() {
        let expectation = self.expectation(description: "testDataPointDelete")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteChartDataPoint("test.pptx", 3, 1, 2, 2, "password", "TempSlidesSDK") { (chart, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(3, chart!.series!.count)
                XCTAssertEqual(4, chart!.categories!.count)
                XCTAssertNil((chart!.series![1] as! OneValueSeries).dataPoints![1].value)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testChartSunburst() {
        let expectation = self.expectation(description: "testChartSunburst")
        TestUtils.initialize("") { (response, error) -> Void in
            let chart = Chart()
            chart.chartType = Chart.ChartType.sunburst
            chart.width = 400
            chart.height = 300
            let series1 = OneValueSeries()
            series1.name = "Series1"
            let point1 = OneValueChartDataPoint()
            point1.value = 40
            let point2 = OneValueChartDataPoint()
            point2.value = 50
            let point3 = OneValueChartDataPoint()
            point3.value = 70
            let point4 = OneValueChartDataPoint()
            point4.value = 60
            series1.dataPoints = [point1, point2, point3, point4]
            chart.series = [series1]
            let category1 = ChartCategory()
            category1.value = "Leaf1"
            category1.parentCategories = ["Branch1", "Stem1"]
            let category2 = ChartCategory()
            category2.value = "Leaf1"
            category2.parentCategories = ["Branch1", "Stem1"]
            let category3 = ChartCategory()
            category3.value = "Branch2"
            category3.parentCategories = ["Stem1"]
            let category4 = ChartCategory()
            category4.value = "Stem2"
            chart.categories = [category1, category2, category3, category4]
            SlidesAPI.createShape("test.pptx", 3, chart, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let chart = shape as? Chart
                XCTAssertNotNil(chart)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(1, chart!.series!.count)
                XCTAssertEqual(4, chart!.categories!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testMultilevelCategoryAxis() {
        let expectation = self.expectation(description: "testMultilevelCategoryAxis")
        TestUtils.initialize("") { (response, error) -> Void in
            let chart = Chart()
            chart.chartType = Chart.ChartType.clusteredColumn
            chart.X = 100
            chart.Y = 100
            chart.width = 400
            chart.height = 300
            let series1 = OneValueSeries()
            series1.name = "Series1"
            let point1 = OneValueChartDataPoint()
            point1.value = 1
            let point2 = OneValueChartDataPoint()
            point2.value = 2
            let point3 = OneValueChartDataPoint()
            point3.value = 3
            let point4 = OneValueChartDataPoint()
            point4.value = 4
            let point5 = OneValueChartDataPoint()
            point5.value = 5
            let point6 = OneValueChartDataPoint()
            point6.value = 6
            let point7 = OneValueChartDataPoint()
            point7.value = 7
            let point8 = OneValueChartDataPoint()
            point8.value = 8
            series1.dataPoints = [point1, point2, point3, point4, point5, point6, point7, point8]
            chart.series = [series1]
            let category1 = ChartCategory()
            category1.value = "Category1"
            category1.parentCategories = ["Sub-category1", "Root1"]
            let category2 = ChartCategory()
            category2.value = "Category2"
            let category3 = ChartCategory()
            category3.parentCategories = ["Subcategory2"]
            let category4 = ChartCategory()
            category4.value = "Category4"
            let category5 = ChartCategory()
            category5.value = "Category5"
            category5.parentCategories = ["Sub-category3", "Root2"]
            let category6 = ChartCategory()
            category6.value = "Category6"
            let category7 = ChartCategory()
            category7.value = "Category7"
            category7.parentCategories = ["Sub-category4"]
            let category8 = ChartCategory()
            category8.value = "Category8"
            chart.categories = [category1, category2, category3, category4, category5, category6, category7, category8]
            SlidesAPI.createShape("test.pptx", 3, chart, nil, nil, "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let chart = shape as? Chart
                XCTAssertNotNil(chart)
                XCTAssertEqual(Chart.ChartType.clusteredColumn, chart!.chartType)
                XCTAssertNotNil(chart!.series)
                XCTAssertNotNil(chart!.categories)
                XCTAssertEqual(1, chart!.series!.count)
                XCTAssertEqual(8, chart!.categories!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testHideChartLegend() {
        let expectation = self.expectation(description: "testHideChartLegend")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            let password = "password"
            let slideIndex = 3
            let shapeIndex = 1
            SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let chart = shape as? Chart
                XCTAssertNotNil(chart)
                chart!.legend!.hasLegend = false
                SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, chart!, password, folderName) { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
                    let chart = shape as? Chart
                    XCTAssertNotNil(chart)
                    XCTAssertNotNil(chart!.legend)
                    XCTAssertEqual(false, chart!.legend!.hasLegend)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testChartGridLinesFormat() {
        let expectation = self.expectation(description: "testChartGridLinesFormat")
        TestUtils.initialize("") { (response, error) -> Void in
            let fileName = "test.pptx"
            let folderName = "TempSlidesSDK"
            let password = "password"
            let slideIndex = 3
            let shapeIndex = 1
            SlidesAPI.getShape(fileName, slideIndex, shapeIndex, password, folderName) { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                let chart = shape as? Chart
                XCTAssertNotNil(chart)

                let horizontalAxis = Axis()
                let majorGridLinesFormat = ChartLinesFormat()
                let majorLineFormat = LineFormat()
                majorLineFormat.fillFormat = NoFill()
                majorGridLinesFormat.lineFormat = majorLineFormat
                horizontalAxis.majorGridLinesFormat = majorGridLinesFormat

                let minorGridLinesFormat = ChartLinesFormat()
                let minorLineFormat = LineFormat()
                let minorFillFormat = SolidFill()
                minorFillFormat.color = "Black"
                minorLineFormat.fillFormat = minorFillFormat
                minorGridLinesFormat.lineFormat = minorLineFormat
                horizontalAxis.minorGridLinesFormat = minorGridLinesFormat

                let verticalAxis = Axis()

                let majorVerticalGridLinesFormat = ChartLinesFormat()
                let majorVerticalLineFormat = LineFormat()
                let gradientFill = GradientFill()
                gradientFill.direction = GradientFill.Direction.fromCorner1
                let stop1 = GradientFillStop()
                stop1.color = "White"
                stop1.position = 0
                let stop2 = GradientFillStop()
                stop2.color = "Black"
                stop2.position = 1
                gradientFill.stops = [stop1, stop2]
                majorVerticalLineFormat.fillFormat = gradientFill
                majorVerticalGridLinesFormat.lineFormat = majorVerticalLineFormat
                verticalAxis.majorGridLinesFormat = majorVerticalGridLinesFormat

                let minorVerticalGridLinesFormat = ChartLinesFormat()
                let minorVerticalLineFormat = LineFormat()
                minorVerticalLineFormat.fillFormat = NoFill()
                minorVerticalGridLinesFormat.lineFormat = minorVerticalLineFormat
                verticalAxis.minorGridLinesFormat = minorVerticalGridLinesFormat

                let axes = Axes()
                axes.horizontalAxis = horizontalAxis
                axes.verticalAxis = verticalAxis
                chart!.axes = axes

                SlidesAPI.updateShape(fileName, slideIndex, shapeIndex, chart!, password, folderName) { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
                    let chart = shape as? Chart
                    XCTAssertNotNil(chart)
                    XCTAssertNotNil(chart!.legend)
                    XCTAssertEqual(FillFormat.ModelType.noFill, chart!.axes!.horizontalAxis!.majorGridLinesFormat!.lineFormat!.fillFormat!.type)
                    XCTAssertEqual(FillFormat.ModelType.solid, chart!.axes!.horizontalAxis!.minorGridLinesFormat!.lineFormat!.fillFormat!.type)
                    XCTAssertEqual(FillFormat.ModelType.gradient, chart!.axes!.verticalAxis!.majorGridLinesFormat!.lineFormat!.fillFormat!.type)
                    XCTAssertEqual(FillFormat.ModelType.noFill, chart!.axes!.verticalAxis!.minorGridLinesFormat!.lineFormat!.fillFormat!.type)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
*/
/*
    def test_get_slide_comments(self):
        BaseTest.slides_api.copy_file("TempTests/" + constant.FILE_NAME,  constant.FOLDER_NAME + "/" + constant.FILE_NAME)
        slide_index = 1
        response = BaseTest.slides_api.get_slide_comments(constant.FILE_NAME, slide_index, constant.PASSWORD, constant.FOLDER_NAME)
        self.assertEqual(2, len(response.list))
        self.assertEqual(1, len(response.list[0].child_comments))

    def test_delete_comments(self):
        BaseTest.slides_api.copy_file("TempTests/" + constant.FILE_NAME, constant.FOLDER_NAME + "/" + constant.FILE_NAME)
        slide_index = 1
        BaseTest.slides_api.delete_comments(constant.FILE_NAME, None, constant.PASSWORD, constant.FOLDER_NAME)
        response = BaseTest.slides_api.get_slide_comments(constant.FILE_NAME, slide_index, constant.PASSWORD, constant.FOLDER_NAME)
        self.assertEqual(0, len(response.list))

    def test_delete_comments_online(self):
        with open(constant.LOCAL_TEST_DATA_FOLDER + "/" + constant.FILE_NAME, 'rb') as f:
            document = f.read()
        output_document = BaseTest.slides_api.delete_comments_online(document, None, constant.PASSWORD)
        self.assertIsNotNone(output_document)

    def test_delete_slide_comments(self):
        BaseTest.slides_api.copy_file("TempTests/" + constant.FILE_NAME, constant.FOLDER_NAME + "/" + constant.FILE_NAME)
        slide_index = 1
        BaseTest.slides_api.delete_slide_comments(constant.FILE_NAME, slide_index, None, constant.PASSWORD, constant.FOLDER_NAME)
        response = BaseTest.slides_api.get_slide_comments(constant.FILE_NAME, slide_index, constant.PASSWORD, constant.FOLDER_NAME)
        self.assertEqual(0, len(response.list))

    def test_delete_slide_comments_online(self):
        with open(constant.LOCAL_TEST_DATA_FOLDER + "/" + constant.FILE_NAME, 'rb') as f:
            document = f.read()
        slide_index = 1
        outputDocument = BaseTest.slides_api.delete_slide_comments_online(document, slide_index, None, constant.PASSWORD)
        self.assertIsNotNone(outputDocument)

    def test_create_modern_comment(self):
        text_selection_start_index = 1
        text_selection_length = 5

        child_comment = SlideModernComment()
        child_comment.author = constant.COMMENT_AUTHOR
        child_comment.text = constant.CHILD_COMMENT_TEXT
        child_comment.status = "Resolved"

        comment = SlideModernComment()
        comment.author = constant.COMMENT_AUTHOR
        comment.text = constant.COMMENT_TEXT
        comment.status = "Active"
        comment.text_selection_start = text_selection_start_index
        comment.text_selection_length = text_selection_length
        comment.child_comments = [child_comment]

        BaseTest.slides_api.copy_file("TempTests/" + constant.FILE_NAME, constant.FOLDER_NAME + "/" + constant.FILE_NAME)
        slide_index = 3
        response = BaseTest.slides_api.create_comment(constant.FILE_NAME, slide_index, comment, None, constant.PASSWORD, constant.FOLDER_NAME)
        self.assertEqual(1, len(response.list))
        self.assertEqual("Modern", response.list[0].type)

    def test_create_shape_modern_comment(self):
        text_selection_start_index = 1
        text_selection_length = 5

        child_comment = SlideModernComment()
        child_comment.author = constant.COMMENT_AUTHOR
        child_comment.text = constant.CHILD_COMMENT_TEXT
        child_comment.status = "Resolved"

        comment = SlideModernComment()
        comment.author = constant.COMMENT_AUTHOR
        comment.text = constant.COMMENT_TEXT
        comment.status = "Active"
        comment.text_selection_start = text_selection_start_index
        comment.text_selection_length = text_selection_length
        comment.child_comments = [child_comment]

        BaseTest.slides_api.copy_file("TempTests/" + constant.FILE_NAME, constant.FOLDER_NAME + "/" + constant.FILE_NAME)
        slide_index = 3
        shape_index = 1
        response = BaseTest.slides_api.create_comment(constant.FILE_NAME, slide_index, comment, shape_index, constant.PASSWORD, constant.FOLDER_NAME)
        self.assertEqual(1, len(response.list))
        self.assertEqual("Modern", response.list[0].type)
*/
}
