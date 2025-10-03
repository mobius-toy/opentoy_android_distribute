# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Keep OpenToy public API classes and methods
-keep class com.mobius.opentoy.OpenToyAndroid { *; }
-keep class com.mobius.opentoy.OpenToyResult { *; }
-keep class com.mobius.opentoy.OpenToyError { *; }
-keep class com.mobius.opentoy.OpenToyDevice { *; }
-keep class com.mobius.opentoy.OpenToyCoreDelegate { *; }

# Obfuscate internal implementation classes
# Remove this line to keep all internal classes
# -keep class com.mobius.opentoy.** { *; }

# Keep Flutter plugin classes
-keep class io.flutter.plugin.** { *; }

# Keep Bluetooth related classes
-keep class android.bluetooth.** { *; }

# Keep Kotlin metadata for reflection
-keep class kotlin.** { *; }
-keep class kotlin.Metadata { *; }

# Keep coroutines related classes
-keep class kotlinx.coroutines.** { *; }

# Keep annotations
-keepattributes *Annotation*

# Keep generic signatures
-keepattributes Signature

# Keep enclosing methods
-keepattributes EnclosingMethod

# Remove debug logs
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}

# Optimize
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-optimizationpasses 5
-allowaccessmodification

# Prevent renaming of public API
-keep public class com.mobius.opentoy.OpenToyAndroid {
    public <init>(...);
    public com.mobius.opentoy.OpenToyResult initializeBluetooth();
    public com.mobius.opentoy.OpenToyResult startScan();
    public com.mobius.opentoy.OpenToyResult stopScan();
    public com.mobius.opentoy.OpenToyResult connectToDevice(java.lang.String);
    public com.mobius.opentoy.OpenToyResult disconnectFromDevice(java.lang.String);
    public void readBatteryLevel(java.lang.String, kotlin.jvm.functions.Function1);
    public void writeMotor(java.lang.String, java.util.List, kotlin.jvm.functions.Function1);
    public void setContext(android.content.Context);
    public void cleanup();
}

-keep public class com.mobius.opentoy.OpenToyResult {
    public static com.mobius.opentoy.OpenToyResult$Success Success(...);
    public static com.mobius.opentoy.OpenToyResult$Failure Failure(...);
}

-keep public class com.mobius.opentoy.OpenToyError {
    public static com.mobius.opentoy.OpenToyError BluetoothNotInitialized;
    public static com.mobius.opentoy.OpenToyError BluetoothNotAvailable;
    public static com.mobius.opentoy.OpenToyError DeviceNotFound;
    public static com.mobius.opentoy.OpenToyError DeviceNotConnected;
    public static com.mobius.opentoy.OpenToyError ReadFailed;
    public static com.mobius.opentoy.OpenToyError WriteFailed;
}

-keep public class com.mobius.opentoy.OpenToyDevice {
    public <init>(...);
    public java.lang.String getId();
    public java.lang.String getName();
    public int getRssi();
    public boolean isConnectable();
}

-keep public class com.mobius.opentoy.OpenToyCoreDelegate {
    public void bluetoothStateChanged(java.lang.String);
    public void deviceDiscovered(java.util.Map);
    public void deviceConnected(java.lang.String, java.util.Map);
    public void deviceDisconnected(java.lang.String, java.lang.String);
    public void deviceConnectionFailed(java.lang.String, java.lang.String);
    public void characteristicValueUpdated(java.lang.String, java.lang.String, java.util.List);
    public void characteristicReadFailed(java.lang.String, java.lang.String, java.lang.String);
    public void characteristicWriteSuccess(java.lang.String, java.lang.String);
    public void characteristicWriteFailed(java.lang.String, java.lang.String, java.lang.String);
    public void servicesDiscoveryFailed(java.lang.String, java.lang.String);
    public void characteristicsDiscoveryFailed(java.lang.String, java.lang.String, java.lang.String);
}

# Suppress warnings for missing classes
-dontwarn java.lang.invoke.StringConcatFactory
