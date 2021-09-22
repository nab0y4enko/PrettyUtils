// swift-tools-version:5.4
import PackageDescription

let package = Package(
	name: "PrettyUtils",
	platforms: [
		.iOS(.v13),
	],
	products: [
		.library(
			name: "PrettyUtils",
			targets: [
				"PrettyUtils"
			]
		)
	],
	targets: [
		.target(
			name: "PrettyUtils"
		),
		.testTarget(
			name: "PrettyUtilsTests",
			dependencies: [
				"PrettyUtils"
			]
		)
	]
)
