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
			url: "https://github.com/sbooth/lame-binary-xcframework/releases/download/0.1.2/lame.xcframework.zip",
			checksum: "53111002eb05438c02cb4fe4ed9e3a4ce6e4e3932bbb09502f6b3629d0708cc7"),
	]
)
