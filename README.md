# Aspose.Slides Cloud SDK for Swift
This repository contains Aspose.Slides Cloud SDK for Swift source code. This SDK allows you to work with Aspose.Slides Cloud REST APIs in your Swift applications.

## Key Features
* Conversion between various document-related formats (20+ formats supported), including PDF<->PowerPoint conversion
* Download slides and shapes in various formats, including PDF and SVG
* Merge and split PowerPoint presentations
* Access PowerPoint presentation metadata and statistics
* Find and replace
* Full read & write access to Document Object Model, including slides, shapes, paragraphs, portions and many others
* Support of Aspose.Storage API

## Licensing
All Aspose.Slides Cloud SDKs are licensed under MIT License.

## How to use the SDK?
The complete source code is available in this repository folder. You can either directly use it in your project via source code or get the library using [Cocoapods](https://cocoapods.org/pods/AsposeSlidesCloud) or [Packages](https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift) (recommended).

## Prerequisites
To use Aspose Slides Cloud SDK for Java you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

Minimal supported Swift version is 4.2.3.

### Installation

To use the SDK in a swift package, add a the SDK to dependencies in your Package.swift:

```swift
// swift-tools-version:4.2.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage",
    dependencies: [
        .package(url: "https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift", from: "20.10.0"),
    ],
    targets: [
        .target(
            name: "MyPackage"
            dependencies: ["AsposeSlidesCloud"]),
    ]
)
```

To use the SDK as a Cocoapod, add "pod 'AsposeSlidesCloud'" line to your Podfile.

```ruby
target 'myproj' do
  ...
  pod 'AsposeSlidesCloud', '~> 20.10.0'
end
```
### Sample usage

The example code below converts a PowerPoint document to PDF format using AsposeSlidesCloud:
```swift
import Foundation
import AsposeSlidesCloud

let dispatchGroup = DispatchGroup()

AsposeSlidesCloudAPI.appSid = "MyClientId"
AsposeSlidesCloudAPI.appKey = "MyClientSecret"

dispatchGroup.enter()
let input = FileManager.default.contents(atPath: "MyPresentation.ppt")!
let request = postSlidesConvertRequest(format: "pdf", document: input)
SlidesAPI.postSlidesConvert(request: request) { (response, e) -> Void in
    do {
        let url = URL(fileURLWithPath: "MyPresentation.pdf")
        try (response as! Data).write(to: url)
    } catch {
        print("Error saving file: \(error).")
    }
    if (e != nil) {
        print("An error occured: \(e).")
    }
    dispatchGroup.leave()
}
dispatchGroup.notify(queue: DispatchQueue.main) {
    exit(EXIT_SUCCESS)
}
dispatchMain()
```

## Contact Us

Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.aspose.cloud/c/slides).

## Resources
 
[Website](https://www.aspose.cloud/)  
[Product Home](https://products.aspose.cloud/slides/family)  
[API Reference](https://apireference.aspose.cloud/slides/)  
[Documentation](https://docs.aspose.cloud/slides/)  
[Blog](https://blog.aspose.cloud/category/slides/)  
 
## Other languages

We generate our SDKs in different languages so you may check if yours is available in our [list](https://github.com/aspose-slides-cloud).
 
If you don't find your language in the list, feel free to request it from us, or use raw REST API requests as you can find it [here](https://products.aspose.cloud/slides/curl).
