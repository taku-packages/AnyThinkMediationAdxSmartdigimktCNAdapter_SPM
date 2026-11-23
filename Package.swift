// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationAdxSmartdigimktCNAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationAdxSmartdigimktCNAdapter",
            targets: ["AnyThinkMediationAdxSmartdigimktCNAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/kuying-ads/kuyingSDK_Spm", exact: "6.5.91")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktCNAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSmartdigimktCNAdapter/60591.2.10/AnyThinkSmartdigimktCNAdapter-60591.2.10.zip",
            checksum: "f2cecb7b77df0197af1a924c34e33ef09d27e9c03fd1cc712510691290917765"
        ),
        .target(
            name: "AnyThinkMediationAdxSmartdigimktCNAdapterTarget",
            dependencies: [
                "AnyThinkSmartdigimktCNAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "SmartdigimktCNSDK", package: "kuyingSDK_Spm")
            ],
            path: "Sources/AnyThinkMediationAdxSmartdigimktCNAdapterTarget"
        )
    ]
)