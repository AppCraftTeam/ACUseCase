// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ACUseCase",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "ACUseCase",
            targets: ["ACUseCase"]),
    ],
    dependencies: [
        .package(
            name: "ACNetwork",
            url: "https://github.com/AppCraftTeam/ACNetwork.git",
            from: "1.0.1"
        ),
        .package(
            name: "ACCoreData",
            url: "https://github.com/AppCraftTeam/ACCoreData.git",
            .upToNextMajor(from: "1.0.0")
        )
    ],
    targets: [
        .target(
            name: "ACUseCase",
            dependencies: [
                "ACNetwork",
                "ACCoreData"
            ]
        ),
        .testTarget(
            name: "ACUseCaseTests",
            dependencies: ["ACUseCase"]),
    ]
)
