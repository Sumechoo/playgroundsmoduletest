// swift-tools-version: 5.6

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "TestModule",
    platforms: [
        .iOS("15.2")
    ],
    products: [
	    .library(
            name: "CppTest",
            targets: ["CppTest"]
        ),
        .iOSApplication(
            name: "TestModule",
            targets: ["AppModule"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .car),
            accentColor: .presetColor(.indigo),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
			dependencies: ["CppTest"],
            path: "./Sources/AppModule"
        ),
        .target(
        	name: "CppTest",
            path: "./Sources/CppTest"
        )
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx14
)
