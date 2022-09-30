import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SlidesAPITests.allTests),
        testCase(AnimationTests.allTests),
        testCase(AuthTests.allTests),
        testCase(ChartTests.allTests),
        testCase(CommentTests.allTests),
        testCase(ConvertTests.allTests),
        testCase(CreateTests.allTests),
        testCase(HeaderFooterTests.allTests),
        testCase(HyperlinkTests.allTests),
        testCase(ImageTests.allTests),
        testCase(LayoutSlideTests.allTests),
        testCase(MasterSlideTests.allTests),
        testCase(MathTests.allTests),
        testCase(MergeTests.allTests),
        testCase(NotesSlideTests.allTests),
        testCase(NullableFieldTests.allTests),
        testCase(ParagraphTests.allTests),
        testCase(PipelineTests.allTests),
        testCase(PortionTests.allTests),
        testCase(PropertyTests.allTests),
        testCase(SectionTests.allTests),
        testCase(ShapeFormatTests.allTests),
        testCase(ShapesTests.allTests),
        testCase(SlidesTests.allTests),
        testCase(SplitTests.allTests),
        testCase(TextTests.allTests),
        testCase(TextFormatTests.allTests),
        testCase(TimeoutTests.allTests),
        testCase(WatermarkTests.allTests)
    ]
}
#endif
