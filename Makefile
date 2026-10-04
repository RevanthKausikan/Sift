build:
	xcodebuild build -workspace Sift.xcworkspace -scheme Sift -destination "platform=macOS" -derivedDataPath build

test:
	cd SiftKit && swift test

run: build
	open build/Build/Products/Debug/Sift.app

clean:
	rm -rf build SiftKit/.build

.PHONY: build test run clean
