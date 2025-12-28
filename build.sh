#!/bin/bash

# Build script for Pixie Module

MODULE_NAME="pixie"
VERSION=$(grep "^version=" module.prop | cut -d'=' -f2)
OUTPUT_ZIP="${MODULE_NAME}-v${VERSION}.zip"

echo "Building ${MODULE_NAME} v${VERSION}..."

# Clean previous build
rm -f "${OUTPUT_ZIP}"

# Create ZIP with proper structure
zip -r9 "${OUTPUT_ZIP}" \
    META-INF \
    system \
    *.prop \
    post-fs-data.sh \
    customize.sh \
    uninstall.sh \
    -x "*.git*" "build.sh" "*.zip" "*.md"

if [ $? -eq 0 ]; then
    echo "✓ Module built successfully: ${OUTPUT_ZIP}"
    echo "- Size: $(du -h ${OUTPUT_ZIP} | cut -f1)"
else
    echo "✗ Build failed"
    exit 1
fi
