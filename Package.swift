// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "lame-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "lame",
			targets: [
				"lame",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "lame",
			url: "https://github.com/sbooth/lame-binary-xcframework/releases/download/0.1.1/lame.xcframework.zip",
			checksum: "3ad128367bf5429c9b70e3ab483398b8e23724da9092e3cda5707aace318fa2f"),
	]
)
