// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
import Foundation

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
        .package(name: "CocoaLumberjack", url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", .exact("3.8.0"))
    ],
    targets: [
        .binaryTarget(
            name: "TSBackgroundFetch",
            path: "TSBackgroundFetch.xcframework"),
        .binaryTarget(
            name: "TSLocationManager",
            path: "TSLocationManager.xcframework")
    ])

