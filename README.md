![](https://img.shields.io/badge/api-v3.0-lightgrey)  [![GitHub license](https://img.shields.io/github/license/aspose-slides-cloud/aspose-slides-cloud-swift)](https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift)

# Swift REST API to Process Presentation in Cloud
This repository contains Aspose.Slides Cloud SDK for Swift source code. This SDK allows you to [process & manipulate PPT, PPTX, ODP, OTP](https://products.aspose.cloud/slides/swift) using Aspose.slides Cloud REST APIs in your Swift applications.

You may want to check out Aspose free [Powerpoint to PDF](https://products.aspose.app/slides/conversion), [Powerpoint to Word](https://products.aspose.app/slides/conversion/ppt-to-word), [Powerpoint to JPG](https://products.aspose.app/slides/conversion/ppt-to-jpg), [Powerpoint to PNG](https://products.aspose.app/slides/conversion/ppt-to-png), [PDF to Powerpoint](https://products.aspose.app/slides/import/pdf-to-powerpoint), [JPG to Powerpoint](https://products.aspose.app/slides/import/jpg-to-ppt), and [PNG to Powerpoint](https://products.aspose.app/slides/import/png-to-ppt) converters because they are live implementations of popular conversion processes.

## Presentation Processing Features

- Fetch presentation images in any of the supported file formats.
- Copy the layout side or clone the master slide from the source presentation.
- Process slides shapes, slides notes, placeholders, colors & font theme info.
- Programmatically create a presentation from HTML & export it to various formats.
- Merge multiple presentations or split the single presentation into multiple ones.
- Extract and replace text from a specific slide or an entire presentation.

## Read & Write Presentation Formats

**Microsoft PowerPoint:** PPT, PPTX, PPS, PPSX, PPTM, PPSM, POTX, POTM
**OpenOffice:** ODP, OTP, FODP
**Other**: PDF, PDF/A

## Save Presentation As

**Fixed Layout:** XPS
**Images:** JPEG, PNG, BMP, TIFF, GIF, SVG
**Web:** HTML/HTML5
**Other:** MPEG4, SWF (export whole presentations)

## Enhancements in Version 23.3

* Added **options** parameter to **SplitOnline** and **SplitAndSaveOnline** methods. Those options are the same as for other split & convert methods.
* Added **ShowHiddenSlides** boolean property to **ImageExportOptions** class.

## Enhancements in Version 23.2

* New **DownloadShapeFromDto** method allows to convert charts and other shapes from DTO to SVG and other formats without creating and storing presentation files.
* Added **SoundBase64** property to **Hyperlink** class to support getting and setting hyperlink sounds.
* Added **BulletFillFormat** property to **Paragraph** class.
* Added **StopPreviousSound** property to animation **Effect** class.
* Added a number of properties to **TextFrameFormat** that enable formatting shape text: **MarginLeft**, **MarginRight**, **MarginTop**, **MarginBottom**, **WrapText**, **AnchoringType**, **CenterText**, **TextVerticalType**, **AutofitType**, **ColumnCount**, **ColumnSpacing**, **KeepTextFlat**, **RotationAngle**, **DefaultParagraphFormat**.
* Added **Pdf16**, **Pdf17**, **PdfA2b**, **PdfA2a**, **PdfA2u**, **PdfA3a**, **PdfA3b** to the list of allowed values for **PdfExportOptions.Compliance** property.

## Enhancements in Version 23.1

* New **CompressEmbeddedFonts** and **CompressEmbeddedFontsOnline** methods allow to reduce the size taken by embedded fonts by excluding unused characters.

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
        .package(url: "https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift", from: "22.4.0"),
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
  pod 'AsposeSlidesCloud', '~> 22.6.0'
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
SlidesAPI.convert(input, "pdf") { (response, e) -> Void in
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

## Aspose.Slides Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Swift|Perl|Go|
|---|---|---|---|---|---|---|--|--|--|
| [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-dotnet) | [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-java) | [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-php) | [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-python) | [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-ruby)  | [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-nodejs) | [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-android) | [GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift)|[GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-perl) |[GitHub](https://github.com/aspose-slides-cloud/aspose-slides-cloud-go) |
| [NuGet](https://www.nuget.org/packages/Aspose.slides-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-slides-cloud) | [Composer](https://packagist.org/packages/aspose/slides-sdk-php) | [PIP](https://pypi.org/project/asposeslidescloud/) | [GEM](https://rubygems.org/gems/aspose_slides_cloud)  | [NPM](https://www.npmjs.com/package/asposeslidescloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-slides-cloud) | [Cocoapods](https://cocoapods.org/pods/AsposeslidesCloud)|[Meta Cpan](https://metacpan.org/release/AsposeSlidesCloud-SlidesApi) | [Go.Dev](https://pkg.go.dev/github.com/aspose-slides-cloud/aspose-slides-cloud-go/) |

[Product Page](https://products.aspose.cloud/slides/swift) | [Documentation](https://docs.aspose.cloud/display/slidescloud/Home) | [API Reference](https://apireference.aspose.cloud/slides/) | [Code Samples](https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift) | [Blog](https://blog.aspose.cloud/category/slides/) | [Free Support](https://forum.aspose.cloud/c/slides) | [Free Trial](https://dashboard.aspose.cloud/#/apps)
