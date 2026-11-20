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
            checksum: "5c6593bc63b4f0277925a1d452f55afcb6e7fccc326a188d0610adc95c6914fe"
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