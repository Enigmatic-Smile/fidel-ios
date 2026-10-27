// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Fidel",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Fidel.framework links against analytics.framework, so both must ship together.
        .library(
            name: "Fidel",
            targets: ["Fidel", "analytics"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Fidel",
            path: "Fidel.xcframework"
        ),
        .binaryTarget(
            name: "analytics",
            path: "analytics.xcframework"
        )
    ]
)
