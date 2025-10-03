# OpenToy Android Distribution

This repository is used to distribute the OpenToy Android library AAR files via JitPack.

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
    implementation 'com.github.mobius-toy:opentoy_android_distribute:1.0.0'
}
```

## Versioning

- Version 1.0.0: Initial release

## License

This distribution repository is licensed under the MIT License. Note that the OpenToy Android library itself may have a different license.

