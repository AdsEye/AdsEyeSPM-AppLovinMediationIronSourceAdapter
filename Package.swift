// swift-tools-version: 5.9
// 此清单按 Flutter iOS Demo 的锁定版本生成。
import PackageDescription

let package = Package(
    name: "AppLovinMediationIronSourceAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "AppLovinMediationIronSourceAdapter", targets: ["AppLovinMediationIronSourceAdapterWrapper"])],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.1"),
        .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package.git", exact: "9.4.0"),
        .package(url: "https://github.com/ironsource-mobile/Unity-Ad-Quality-Swift-Package.git", exact: "9.4.0"),
    ],
    targets: [
        .target(name: "AppLovinMediationIronSourceAdapterWrapper", dependencies: [.target(name: "AppLovinMediationIronSourceAdapter"), .product(name: "AppLovinSDK", package: "applovin-max-swift-package"), .product(name: "UnityMediationSDK", package: "unity-mediation-iads-swift-package"), .product(name: "AdQuality", package: "unity-ad-quality-swift-package")]),
        .binaryTarget(name: "AppLovinMediationIronSourceAdapter", url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ironsource-adapter/AppLovinMediationIronSourceAdapter-9.4.0.0.0.zip", checksum: "5674d78d5092394d8e931a721c89e4f0646ddfec13fe7d46a367aab4f344c7b6"),
    ]
)
