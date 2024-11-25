// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]),
    
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "shared", path: "shared.xcframework"),
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyPackage",
            dependencies: ["shared"],
            path: "Sources/MyPackage",
            linkerSettings: [
                .linkedFramework("SwiftUI"),
            ]),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]
        ),
    ]
)
