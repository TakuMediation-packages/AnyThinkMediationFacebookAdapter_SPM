// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationFacebookAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AnyThinkMediationFacebookAdapter",
            targets: ["AnyThinkMediationFacebookAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.22.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkFacebookAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkFacebookAdapter/6.22.0.2.1/AnyThinkFacebookAdapter-6.22.0.2.1.zip",
            checksum: "a9c61f3495673b7f5e92ebc19de610d562458ce0971b8c8158b49ef064df1dd2"
        ),
        .target(
            name: "AnyThinkMediationFacebookAdapterTarget",
            dependencies: [
                "AnyThinkFacebookAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork")
            ],
            path: "Sources/AnyThinkMediationFacebookAdapterTarget"
        )
    ]
)
