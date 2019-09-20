// swift-tools-version:5.1

import PackageDescription
let package = Package(
    name: "SwiftyAttributes",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .tvOS(.v10),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "SwiftyAttributesiOStvOS",
            targets: ["SwiftyAttributesiOStvOS"]
        ),
        
        .library(
            name: "SwiftyAttributeswatchOS",
            targets: ["SwiftyAttributesCommon"]
        ),

        .library(
            name: "SwiftyAttributesmacOS",
            targets: ["SwiftyAttributesmacOS"]
        )
    ],
    targets: [
        .target(
            name: "SwiftyAttributesCommon",
            path: "SwiftyAttributes/Sources/common"
        ),

        .target(
            name: "SwiftyAttributesiOStvOS",
            dependencies: [ "SwiftyAttributesCommon" ],
            path: "SwiftyAttributes/Sources/iOS_tvOS"
        ),

        .target(
            name: "SwiftyAttributesmacOS",
            dependencies: [ "SwiftyAttributesCommon" ],
            path: "SwiftyAttributes/Sources/macOS"
        )
    ],
    swiftLanguageVersions: [ .v5 ]
)
