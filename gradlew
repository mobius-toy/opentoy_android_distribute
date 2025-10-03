#!/bin/sh

# This is a minimal gradlew script for JitPack
# In a real project, you would have the full Gradle wrapper

# Check if Gradle is installed
if command -v gradle >/dev/null 2>&1; then
    gradle "$@"
else
    echo "Gradle is not installed. Please install Gradle to build this project."
    exit 1
fi
