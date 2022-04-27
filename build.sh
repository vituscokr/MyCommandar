#!/bin/sh
rm -rf ./.build
rm -rf ./.swiftpm*
swift build
./.build/debug/MyCommandar
