# OpenToy Android Distribution

This repository contains the source code for the OpenToy Android library, which is distributed via JitPack.

## Usage

To use the OpenToy Android library in your project, add the following to your `build.gradle`:

```gradle
allprojects {
    repositories {
        google()
        mavenCentral()
        maven { url 'https://jitpack.io' }
    }
}

dependencies {
    implementation 'com.github.mobius-toy:opentoy_android_distribute:1.0.3'
}
```

## Building

To build the library locally:

```bash
./gradlew assembleRelease
```

## License

This library is licensed under the Apache License 2.0.
