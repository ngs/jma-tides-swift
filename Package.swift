// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "JMATides",
    products: [.library(name: "JMATides", targets: ["JMATides"])],
    dependencies: [],
    targets: [
        .target( name: "JMATides", dependencies: []),
        .testTarget(name: "JMATidesTests", dependencies: ["JMATides"])
    ]
)
