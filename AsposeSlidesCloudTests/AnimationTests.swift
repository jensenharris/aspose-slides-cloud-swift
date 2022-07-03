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

class AnimationTests : XCTestCase {
    static var allTests : [(String, (AnimationTests) -> () -> ())] = [
        ("testAnimationGet", testAnimationGet),
        ("testAnimationSet", testAnimationSet),
        ("testAnimationCreateEffect", testAnimationCreateEffect),
        ("testAnimationCreateInteractiveSequence", testAnimationCreateInteractiveSequence),
        ("testAnimationCreateInteractiveSequenceEffect", testAnimationCreateInteractiveSequenceEffect),
        ("testAnimationUpdateEffect", testAnimationUpdateEffect),
        ("testAnimationUpdateInteractiveSequenceEffect", testAnimationUpdateInteractiveSequenceEffect),
        ("testAnimationDelete", testAnimationDelete),
        ("testAnimationDeleteMainSequence", testAnimationDeleteMainSequence),
        ("testAnimationDeleteMainSequenceEffect", testAnimationDeleteMainSequenceEffect),
        ("testAnimationDeleteInteractiveSequences", testAnimationDeleteInteractiveSequences),
        ("testAnimationDeleteInteractiveSequence", testAnimationDeleteInteractiveSequence),
        ("testAnimationDeleteInteractiveSequenceEffect", testAnimationDeleteInteractiveSequenceEffect),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }    
    
    func testAnimationGet() {
        let expectation = self.expectation(description: "testAnimationGet")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName : String = "TempSlidesSDK"
            let fileName : String = "test.pptx"
            let password : String = "password"
            let slideIndex : Int = 1
            SlidesAPI.getAnimation(fileName, slideIndex, nil, nil, password, folderName) { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                SlidesAPI.getAnimation(fileName, slideIndex, 3, nil, password, folderName) { (animation, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(animation)
                    XCTAssertNotNil(animation!.mainSequence)
                    XCTAssertNotNil(animation!.interactiveSequences)
                    XCTAssertEqual(1, animation!.mainSequence!.count)
                    XCTAssertEqual(0, animation!.interactiveSequences!.count)
                    SlidesAPI.getAnimation(fileName, slideIndex, 3, 1, password, folderName) { (animation, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(animation)
                        XCTAssertNotNil(animation!.mainSequence)
                        XCTAssertNil(animation!.interactiveSequences)
                        XCTAssertEqual(0, animation!.mainSequence!.count)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationSet() {
        let expectation = self.expectation(description: "testAnimationSet")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideAnimation()

            let effect1 = Effect()
            effect1.type = Effect.ModelType.blink
            effect1.shapeIndex = 2
            effect1.paragraphIndex = 1

            let effect2 = Effect()
            effect2.type = Effect.ModelType.box
            effect2.subtype = Effect.Subtype._in
            effect2.presetClassType = Effect.PresetClassType.entrance
            effect2.shapeIndex = 4
            dto.mainSequence = [ effect1, effect2 ]
            dto.interactiveSequences = []

            SlidesAPI.setAnimation("test.pptx", 1, dto, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(dto.mainSequence!.count, animation!.mainSequence!.count)
                XCTAssertEqual(0, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationCreateEffect() {
        let expectation = self.expectation(description: "testAnimationCreateEffect")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Effect()
            dto.type = Effect.ModelType.blast
            dto.shapeIndex = 3
            SlidesAPI.createAnimationEffect("test.pptx", 1, dto, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(2, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationCreateInteractiveSequence() {
        let expectation = self.expectation(description: "testAnimationSet")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = InteractiveSequence()
            dto.triggerShapeIndex = 2

            let effect = Effect()
            effect.type = Effect.ModelType.blast
            effect.shapeIndex = 3
            dto.effects = [ effect ]

            SlidesAPI.createAnimationInteractiveSequence("test.pptx", 1, dto, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(2, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationCreateInteractiveSequenceEffect() {
        let expectation = self.expectation(description: "testAnimationCreateInteractiveSequenceEffect")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Effect()
            dto.type = Effect.ModelType.blast
            dto.shapeIndex = 3
            SlidesAPI.createAnimationInteractiveSequenceEffect("test.pptx", 1, 1, dto, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationUpdateEffect() {
        let expectation = self.expectation(description: "testAnimationUpdateEffect")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Effect()
            dto.type = Effect.ModelType.blast
            dto.shapeIndex = 3
            SlidesAPI.updateAnimationEffect("test.pptx", 1, 1, dto, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationUpdateInteractiveSequenceEffect() {
        let expectation = self.expectation(description: "testAnimationUpdateInteractiveSequenceEffect")
        TestUtils.initialize("") { (response, error) -> Void in
            let dto = Effect()
            dto.type = Effect.ModelType.blast
            dto.shapeIndex = 3
            SlidesAPI.updateAnimationInteractiveSequenceEffect("test.pptx", 1, 1, 1, dto, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationDelete() {
        let expectation = self.expectation(description: "testAnimationDelete")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteAnimation("test.pptx", 1, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(0, animation!.mainSequence!.count)
                XCTAssertEqual(0, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationDeleteMainSequence() {
        let expectation = self.expectation(description: "testAnimationDeleteMainSequence")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteAnimationMainSequence("test.pptx", 1, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(0, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationDeleteMainSequenceEffect() {
        let expectation = self.expectation(description: "testAnimationDeleteMainSequenceEffect")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteAnimationEffect("test.pptx", 1, 1, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(0, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationDeleteInteractiveSequences() {
        let expectation = self.expectation(description: "testAnimationDeleteInteractiveSequences")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteAnimationInteractiveSequences("test.pptx", 1, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(0, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationDeleteInteractiveSequence() {
        let expectation = self.expectation(description: "testAnimationDeleteInteractiveSequence")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteAnimationInteractiveSequence("test.pptx", 1, 1, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(0, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testAnimationDeleteInteractiveSequenceEffect() {
        let expectation = self.expectation(description: "testAnimationDeleteInteractiveSequenceEffect")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.deleteAnimationInteractiveSequenceEffect("test.pptx", 1, 1, 1, "password", "TempSlidesSDK") { (animation, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(animation)
                XCTAssertNotNil(animation!.mainSequence)
                XCTAssertNotNil(animation!.interactiveSequences)
                XCTAssertEqual(1, animation!.mainSequence!.count)
                XCTAssertEqual(1, animation!.interactiveSequences!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
