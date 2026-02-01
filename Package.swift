// swift-tools-version:5.3
import PackageDescription

let version = "0.9.0-renamed"
let mediasoupChecksum = "7c20e27971c05eebe380516fd50157261430a723ad75707612719c6b90d07e19"
let webrtcChecksum = "e41c957d0d7134930b83174e8e912cc2af996613e0061c0400a2840af7e8e4e4"

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
