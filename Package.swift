import PackageDescription

let package = Package(
    name: "PDFKitSwiftUI",
    platforms: [
        .iOS(.v15),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "PDFKitSwiftUI",
            targets: ["PDFKitSwiftUI"]),
    ],
    targets: [
        .target(
            name: "PDFKitSwiftUI"),
        .testTarget(
            name: "PDFKitSwiftUITests",
            dependencies: ["PDFKitSwiftUI"]),
    ]
)
