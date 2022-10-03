// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ACUseCase",
    platforms: [
        .iOS(.v11),
        .watchOS(.v6),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "ACUseCase",
            targets: ["ACUseCase"]
        )
    ],
    dependencies: [
        .package(
            name: "ACNetwork",
            url: "https://github.com/AppCraftTeam/appcraft-network-ios.git",
            from: "1.0.2"
        ),
        .package(
            name: "ACCoreData",
            url: "https://github.com/AppCraftTeam/appcraft-core-data-ios.git",
            from: "1.0.1"
        )
    ],
    targets: [
        .target(
            name: "ACUseCase",
            dependencies: [
                "ACCoreData",
                .product(
                    name: "ACNetwork",
                    package: "ACNetwork",
                    condition: .when(platforms: [.iOS, .macOS])
                )
            ]
        ),
        .testTarget(
            name: "ACUseCaseTests",
            dependencies: ["ACUseCase"]),
    ]
)
