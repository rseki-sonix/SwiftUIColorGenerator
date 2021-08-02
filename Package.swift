// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIColorGenerator",
    products: [
        .executable(name: "swiftui-color-generator", targets: ["SwiftUIColorGenerator"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            .upToNextMajor(from: "0.4.0")
        )
    ],
    targets: [
        .target(
            name: "SwiftUIColorGenerator",
            dependencies: [
                .product(
                    name: "ArgumentParser",
                    package: "swift-argument-parser"
                )
            ]
        ),
        .testTarget(
            name: "SwiftUIColorGeneratorTests",
            dependencies: ["SwiftUIColorGenerator"]
        )
    ]
)
