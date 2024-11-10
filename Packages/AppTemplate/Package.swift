// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "AppTemplate",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "AppTemplate",
            targets: [
                "AppTemplate",
            ]
        ),
    ],
    targets: [
        .target(
            name: "AppTemplate",
            path: "Sources/App"
        ),
        .testTarget(
            name: "AppTemplateTests",
            dependencies: ["AppTemplate"]
        ),
    ]
)

for target in package.targets {
    var settings = target.swiftSettings ?? []
    settings.append(.enableUpcomingFeature("ExistentialAny", .when(configuration: .debug)))
    target.swiftSettings = settings

    var plugins = target.plugins ?? []
    target.plugins = plugins
}
