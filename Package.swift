// swift-tools-version: 5.10
//
//  Package.swift

import PackageDescription

let package = Package(
    name: "SloppySwiper",
	defaultLocalization: "en",
    platforms: [
		.iOS(.v13)
    ],
    products: [
        .library(
            name: "SloppySwiper",
            targets: ["SloppySwiper"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SloppySwiper",
            dependencies: [],
            path: "Source",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit", .when(platforms: [.iOS])),
            ]
        )
    ]
)
