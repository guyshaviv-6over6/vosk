// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VoskFramework",
    platforms: [
        .iOS(.v16), // Specify the platform(s) and version(s) your package supports
    ],
    products: [
        .library(
            name: "Vosk",
            targets: ["VoskFramework"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "VoskFramework",
            dependencies: [
                .target(name: "FrameworkTarget") // Add the XCFramework target as a dependency
            ],
            path: "Sources/Vosk"
        ),
        .binaryTarget(
            name: "FrameworkTarget",
            path: "Libraries/Vosk/Vosk.xcframework" // Path to your XCFramework
        ),
    ]
)
