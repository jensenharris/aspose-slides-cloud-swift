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

class PropertyTests : XCTestCase {
    static var allTests : [(String, (PropertyTests) -> () -> ())] = [
        ("testPropertyBuiltin", testPropertyBuiltin),
        ("testPropertyCustom", testPropertyCustom),
        ("testPropertyBuilkUpdate", testPropertyBuilkUpdate),
        ("testPropertySlideProperties", testPropertySlideProperties),
        ("testPropertySlideSizePreset", testPropertySlideSizePreset),
        ("testPropertySlideCustom", testPropertySlideSizeCustom),
        ("testProtection", testProtection),
        ("testProtectionDelete", testProtectionDelete),
        ("testProtectionOnline", testProtectionOnline),
        ("testProtectionUnprotectOnline", testProtectionUnprotectOnline),
        ("testViewPropertiesGet", testViewPropertiesGet),
        ("testViewPropertiesSet", testViewPropertiesSet),
        ("testProtectionCheck", testProtectionOnline),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
	        super.tearDown()
    }    

    func testPropertyBuiltin() {
        let expectation = self.expectation(description: "testPropertyBuiltin")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let propertyName = "Author"
            let updatedPropertyValue = "New Value"
            SlidesAPI.getDocumentProperty(fileName, propertyName, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(propertyName, result!.name)
                XCTAssertNotNil(result!.builtIn)
                XCTAssertTrue(result!.builtIn!)

                let property = DocumentProperty()
                property.value = updatedPropertyValue
                SlidesAPI.setDocumentProperty(fileName, propertyName, property, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    XCTAssertEqual(propertyName, result!.name)
                    XCTAssertEqual(updatedPropertyValue, result!.value)
                    XCTAssertNotNil(result!.builtIn)
                    XCTAssertTrue(result!.builtIn!)
                    SlidesAPI.deleteDocumentProperty(fileName, propertyName, password, folderName) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        SlidesAPI.getDocumentProperty(fileName, propertyName, password, folderName) { (result, error) -> Void in
                            // built-in property is not actually deleted
                            XCTAssertNil(error)
                            XCTAssertNotNil(result)
                            XCTAssertEqual(propertyName, result!.name)
                            XCTAssertNotEqual(updatedPropertyValue, result!.value)
                            XCTAssertNotNil(result!.builtIn)
                            XCTAssertTrue(result!.builtIn!)
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPropertyCustom() {
        let expectation = self.expectation(description: "testPropertyCustom")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let propertyName = "CustomProperty2"
            let updatedPropertyValue = "New Value"

            let property = DocumentProperty()
            property.value = updatedPropertyValue
            SlidesAPI.setDocumentProperty(fileName, propertyName, property, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(propertyName, result!.name)
                XCTAssertEqual(updatedPropertyValue, result!.value)
                XCTAssertNotNil(result!.builtIn)
                XCTAssertFalse(result!.builtIn!)
                SlidesAPI.deleteDocumentProperty(fileName, propertyName, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    SlidesAPI.getDocumentProperty(fileName, propertyName, password, folderName) { (result, error) -> Void in
                        // built-in property is not actually deleted
                        XCTAssertNotNil(error)
                        switch (error!) {
                        case ErrorResponse.error(let actualCode, _, _):
                            XCTAssertEqual(404, actualCode)
                        default:
                            XCTFail("Unexpected error")
                        }
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPropertyBuilkUpdate() {
        let expectation = self.expectation(description: "testPropertyBuilkUpdate")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            let propertyName = "Author"
            let customPropertyName = "CustomProperty2"
            let updatedPropertyValue = "New Value"
            SlidesAPI.getDocumentProperties(fileName, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.list)
                let count = result!.list!.count

                let property1 = DocumentProperty()
                property1.name = propertyName
                property1.value = updatedPropertyValue
                let property2 = DocumentProperty()
                property2.name = customPropertyName
                property2.value = updatedPropertyValue
                let properties = DocumentProperties()
                properties.list = [ property1, property2 ]
                SlidesAPI.setDocumentProperties(fileName, properties, password, folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    XCTAssertNotNil(result!.list)
                    XCTAssertEqual(count + 1, result!.list!.count)
                    SlidesAPI.deleteDocumentProperties(fileName, password, folderName) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        XCTAssertNotNil(result!.list)
                        XCTAssertEqual(count - 1, result!.list!.count)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPropertySlideProperties() {
        let expectation = self.expectation(description: "testPropertySlideProperties")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.getSlideProperties(fileName, password, folderName) { (getResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(getResult)
                XCTAssertNotNil(getResult!.firstSlideNumber)

                let dto = SlideProperties()
                dto.firstSlideNumber = getResult!.firstSlideNumber! + 2
                SlidesAPI.setSlideProperties(fileName, dto, password, folderName) { (putResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(putResult)
                    XCTAssertEqual(getResult!.orientation, putResult!.orientation)
                    XCTAssertNotEqual(getResult!.firstSlideNumber, putResult!.firstSlideNumber)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPropertySlideSizePreset() {
        let expectation = self.expectation(description: "testPropertySlideSizePreset")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideProperties()
            dto.sizeType = SlideProperties.SizeType.b4IsoPaper
            SlidesAPI.setSlideProperties("test.pptx", dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(SlideProperties.SizeType.b4IsoPaper, result!.sizeType)
                XCTAssertEqual(852, result!.width)
                XCTAssertEqual(639, result!.height)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPropertySlideSizeCustom() {
        let expectation = self.expectation(description: "testPropertySlideSizeCustom")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = SlideProperties()
            dto.width = 800
            dto.height = 500
            SlidesAPI.setSlideProperties("test.pptx", dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertEqual(SlideProperties.SizeType.custom, result!.sizeType)
                XCTAssertEqual(dto.width, result!.width)
                XCTAssertEqual(dto.height, result!.height)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testProtection() {
        let expectation = self.expectation(description: "testProtection")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.getProtectionProperties(fileName, password, folderName) { (getResult, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(getResult)
                XCTAssertNotNil(getResult!.readOnlyRecommended)

                let dto = ProtectionProperties()
                dto.readOnlyRecommended = !getResult!.readOnlyRecommended!
                SlidesAPI.setProtection(fileName, dto, password, folderName) { (putResult, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(putResult)
                    XCTAssertEqual(getResult!.encryptDocumentProperties, putResult!.encryptDocumentProperties)
                    XCTAssertNotEqual(getResult!.readOnlyRecommended, putResult!.readOnlyRecommended)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testProtectionDelete() {
        let expectation = self.expectation(description: "testProtectionDelete")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            let password = "password"
            SlidesAPI.deleteProtection(fileName, password, folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.isEncrypted)
                XCTAssertFalse(result!.isEncrypted!)
                XCTAssertNotNil(result!.readOnlyRecommended)
                XCTAssertFalse(result!.readOnlyRecommended!)
                XCTAssertNil(result!.readPassword)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testProtectionOnline() {
        let expectation = self.expectation(description: "testProtectionOnline")

        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)

            let dto = ProtectionProperties()
            dto.readPassword = "newPassword"
            SlidesAPI.setProtectionOnline(document!, dto, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotEqual(document!.count, result!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testProtectionUnprotectOnline() {
        let expectation = self.expectation(description: "testProtectionUnprotectOnline")

        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAPI.deleteProtectionOnline(document!, "password") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotEqual(document!.count, result!.count)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testViewPropertiesGet() {
        let expectation = self.expectation(description: "testViewPropertiesGet")

        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAPI.getViewProperties("test.pptx", "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.showComments)
                XCTAssertEqual(ViewProperties.ShowComments._false, result!.showComments!)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testViewPropertiesSet() {
        let expectation = self.expectation(description: "testViewPropertiesSet")

        TestUtils.initialize("") { (response, error) -> Void in
            let dto = ViewProperties()
            dto.showComments = ViewProperties.ShowComments._false
            dto.slideViewProperties = CommonSlideViewProperties()
            dto.slideViewProperties!.scale = 50
            SlidesAPI.setViewProperties("test.pptx", dto, "password", "TempSlidesSDK") { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.showComments)
                XCTAssertEqual(ViewProperties.ShowComments._false, result!.showComments!)
                XCTAssertNotNil(result!.slideViewProperties)
                XCTAssertEqual(50, result!.slideViewProperties!.scale)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testProtectionCheck() {
        let expectation = self.expectation(description: "testProtectionCheck")

        TestUtils.initialize("") { (response, error) -> Void in
            let folderName = "TempSlidesSDK"
            let fileName = "test.pptx"
            SlidesAPI.getProtectionProperties(fileName, "", folderName) { (result, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(result)
                XCTAssertNotNil(result!.isEncrypted)
                XCTAssertTrue(result!.isEncrypted!)
                XCTAssertNil(result!.readPassword)
                SlidesAPI.getProtectionProperties(fileName, "password", folderName) { (result, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(result)
                    XCTAssertNotNil(result!.isEncrypted)
                    XCTAssertTrue(result!.isEncrypted!)
                    XCTAssertNotNil(result!.readPassword)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
