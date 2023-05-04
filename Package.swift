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
    //dependencies: [
    //    .package(name: "TSBackgroundFetch", url: "https://github.com/mapbox/mapbox-common-ios.git", .upToNextMajor(from: mapboxCommonVersion)),
    //],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "TSLocationManager",
            url: "https://github.com/markerpen/TSLocationManagerSPM/blob/main/TSBackgroundFetch.xcframework.zip",
            checksum: "819101a40a8a54fa189bc462570b19dcf091cd2db124fe54a7cd9b1e468688a5"
        )
    ]
)