// swift-tools-version:4.2.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AsposeSlidesCloud",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AsposeSlidesCloud",
            targets: ["AsposeSlidesCloud"]),
    ],
    dependencies: [
		.package(url: "https://github.com/weichsel/ZIPFoundation.git", .upToNextMajor(from: "0.9.0")),
                .package(url: "https://github.com/allegro/swift-junit.git", from: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "AsposeSlidesCloud",
            path: "AsposeSlidesCloud"),
        .testTarget(
            name: "AsposeSlidesCloudTests",
            dependencies: ["AsposeSlidesCloud","ZIPFoundation","SwiftTestReporter"],
            path: "AsposeSlidesCloudTests"),
    ]
)
