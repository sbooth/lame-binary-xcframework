// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "lame-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
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
			url: "https://github.com/sbooth/lame-binary-xcframework/releases/download/0.1.0/lame.xcframework.zip",
			checksum: "d047bfc24bce458ba80b4ef1bda190deaaf5eeb410414412925b342411f1888b"),
	]
)
