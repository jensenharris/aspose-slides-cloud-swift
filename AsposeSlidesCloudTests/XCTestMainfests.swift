import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SlidesAPITests.allTests),
        testCase(AnimationTests.allTests),
        testCase(AuthTests.allTests),
        testCase(ChartTests.allTests),
        testCase(CommentTests.allTests),
        testCase(UseCaseTests.allTests)
    ]
}
#endif
