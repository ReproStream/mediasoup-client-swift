// swift-tools-version:5.3
import PackageDescription

let version = "0.9.0-renamed"
let mediasoupChecksum = "9a7b41413826ac9488980a2b0adb6f99abb78505579bde2f972fae73623d8234"
let webrtcChecksum = "26f0439dcd94aa6dd4f64ff761803c855411773c91bec061b3734cd317777a90"

let package = Package(
    name: "Mediasoup-Client-Swift",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14)
    ],
    products: [
        .library(
            name: "Mediasoup",
            targets: [
                "Mediasoup",
                "MediasoupWebRTC"
            ]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Mediasoup",
            url: "https://github.com/ReproStream/mediasoup-client-swift/releases/download/0.9.0-renamed/Mediasoup.xcframework.zip",
            checksum: mediasoupChecksum
        ),
        .binaryTarget(
            name: "MediasoupWebRTC",
            url: "https://github.com/ReproStream/mediasoup-client-swift/releases/download/0.9.0-renamed/MediasoupWebRTC.xcframework.zip",
            checksum: webrtcChecksum
        )
    ]
)
