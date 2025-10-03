# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# Keep OpenToy classes
-keep class com.mobius.opentoy.** { *; }

# Keep Flutter plugin classes
-keep class io.flutter.plugin.** { *; }

# Keep Bluetooth related classes
-keep class android.bluetooth.** { *; }
