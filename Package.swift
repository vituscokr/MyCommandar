// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyCommandar",
    platforms: [
        .macOS(.v10_13)
    ],
    dependencies: [
         .package(url: "https://github.com/mtynior/ColorizeSwift.git", from: "1.5.0"),
         .package(url: "https://github.com/IngmarStein/CommandLineKit.git", from:"2.3.0"),
         .package(url: "https://github.com/bow-swift/SwiftLine.git", from: "0.5.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "MyCommandar",
            dependencies: [
                "ColorizeSwift",
                "CommandLineKit",
                .product(name: "Swiftline", package: "SwiftLine"),

                ]),
        .testTarget(
            name: "MyCommandarTests",
            dependencies: ["MyCommandar"]),
    ]
)
