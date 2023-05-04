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
            url: "https://github.com/markerpen/TSLocationManagerSPM/blob/main/TSBackgroundFetch.xcframework.zip",
            checksum: "f65638f2bbe72efec649370ad10f305fa6ed4382b8c3536b88389101d6de5e3e"
        )
    ]
)