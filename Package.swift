// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PrettyUtils",
    products: [
        .library(
            name: "PrettyUtils",
            targets: ["PrettyUtils"]),
    ],
    targets: [
        .target(
            name: "PrettyUtils",
            dependencies: []),
        .testTarget(
            name: "PrettyUtilsTests",
            dependencies: ["PrettyUtils"]),
    ]
)
