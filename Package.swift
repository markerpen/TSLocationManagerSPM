// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
import Foundation

let version = "2023.4"

let package = Package(
    name: "TSLocationManager-SPM",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "TSLocationManager",
            targets: ["TSLocationManager"]
        )
    ],
    dependencies: [
        .package(name: "CocoaLumberjack", url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", .exact("3.8.0")),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "TSLocationManager",
            url: "TSLocationManager.xcframework"
        )
    ]
)