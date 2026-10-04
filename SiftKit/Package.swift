// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "SiftKit",
    defaultLocalization: "en",
    platforms: [
        .macOS("27.0"),
        .iOS("27.0"),
    ],
    products: [
        .library(name: "SiftKit", targets: ["SiftKit"]),
    ],
    targets: [
        .target(name: "SiftCore"),
        .target(name: "SiftScanning", dependencies: ["SiftCore"]),
        .target(name: "SiftClustering", dependencies: ["SiftCore"]),
        .target(name: "SiftPlanning", dependencies: ["SiftCore", "SiftClustering"]),
        .target(name: "SiftSelection", dependencies: ["SiftCore"]),
        .target(
            name: "SiftKit",
            dependencies: [
                "SiftCore",
                "SiftScanning",
                "SiftClustering",
                "SiftPlanning",
                "SiftSelection",
            ]
        ),
        .target(
            name: "SiftTestHelpers",
            dependencies: ["SiftCore"],
            path: "Tests/SiftTestHelpers"
        ),
        .testTarget(
            name: "SiftCoreTests",
            dependencies: ["SiftCore", "SiftTestHelpers"]
        ),
        .testTarget(
            name: "SiftScanningTests",
            dependencies: ["SiftScanning", "SiftTestHelpers"]
        ),
    ]
)
