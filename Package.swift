// swift-tools-version:5.3
import PackageDescription

let version = "0.9.0-renamed"
let mediasoupChecksum = "2a4cc0cb5bb2b3e63b0d8651b87a38631bdf29700f1929c0b8bd6d8b3594bcff"
let webrtcChecksum = "0d8957dc2c16312bf052d0db33f4f3d8ae220611ec22f4681f06eaaeb91681d6"

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
