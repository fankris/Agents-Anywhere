// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "AgentsAnywhereClient",
    platforms: [.macOS(.v14), .iOS(.v17)],
    targets: [
        .target(
            name: "ClientCore",
            path: "Agents Anywhere/Agents Anywhere",
            exclude: [
                "App", "Assets.xcassets", "Resources", "Services", "Stores", "Views",
                "ios-dark.icon", "Business/AccountAvatarProcessor.swift",
            ],
            sources: ["API", "Network", "Models", "Domain", "Business", "Repositories"]
        ),
        .testTarget(
            name: "ClientCoreTests",
            dependencies: ["ClientCore"],
            path: "Tests/ClientCoreTests",
            resources: [.copy("Fixtures")]
        ),
    ]
)
