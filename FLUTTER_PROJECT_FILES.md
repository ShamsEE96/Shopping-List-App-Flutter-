# Beginner's Guide to Important Flutter Project Files

This guide explains the key configuration files you will encounter in the `android` and `ios` folders of your Flutter project.

## 1. `AndroidManifest.xml`
**Location:** `android/app/src/main/AndroidManifest.xml`
**Purpose:** The main configuration file for the Android system. It tells the OS "who" the app is and "what" it needs.

*   **`manifest (package="...")`**: The unique internal identifier for the app package.
*   **`uses-permission`**: (Usually added here manually) This is where you declare permissions like Internet, Camera, or Location.
*   **`application` > `android:label`**: The name of the app as it appears to the user (e.g., "bootcamp_01").
*   **`activity` > `.MainActivity`**: The entry point for the Android app. The `<intent-filter>` inside with `action.MAIN` and `category.LAUNCHER` tells Android that this is the first screen to open when the icon is tapped.
*   **`meta-data`**: Configuration tags used by the Flutter engine to set themes or integration settings.

---

## 2. `build.gradle.kts` (Project vs. App Level)
Android uses Gradle for building. There are **two** main files you need to distinguish:

### A. Project Level (`android/build.gradle.kts`)
**Purpose:** Configuration for the *entire* workspace/project.
*   **`allprojects { repositories { ... } }`**: Tells Gradle where to download libraries from (e.g., `google()`, `mavenCentral()`).
*   **`rootProject.layout.buildDirectory`**: Defines where build artifacts (output files) should go for the whole project.
*   **Role**: It acts as the "Parent". Generally, you touch this file less often unless you are adding a global configuration.

### B. App Level (`android/app/build.gradle.kts`)
**Purpose:** Configuration specific to the **Android App Module** (your actual app). This is the file you will edit most often for Android settings.
*   **`plugins`**: Lists plugins applied, like `com.android.application` and the `flutter-gradle-plugin`.
*   **`namespace`**: The Java/Kotlin package namespace for your generated resources.
*   **`defaultConfig`**:
    *   **`applicationId`**: The unique ID for the Google Play Store (e.g., `com.example.bootcamp_01`). This **must** be unique globally if you publish.
    *   **`minSdk` / `targetSdk`**: Defines which Android versions your app supports.
    *   **`versionCode` / `versionName`**: Automatically pulled from `pubspec.yaml`.
*   **`buildTypes`**: Configures settings for `debug` vs `release` builds (like app signing).

---

## 3. `AppDelegate.swift`
**Location:** `ios/Runner/AppDelegate.swift`
**Purpose:** The entry point for the iOS application code.

*   **`@main`**: The annotation that tells iOS "Start here".
*   **`FlutterAppDelegate`**: The class inherits from this to give your iOS app Flutter capabilities.
*   **`application(didFinishLaunchingWithOptions)`**: The specific function called when the app launches.
*   **`GeneratedPluginRegistrant.register(with: self)`**: A critical line that initializes all your Flutter plugins (like Google Maps or Camera) so they work on the iOS side.

---

## 4. `Info.plist`
**Location:** `ios/Runner/Info.plist`
**Purpose:** A property list that stores configuration data for the iOS app (similar role to `AndroidManifest`).

*   **`CFBundleDisplayName`**: The app name shown on the iPhone home screen.
*   **`CFBundleIdentifier`**: The unique Bundle ID for the Apple App Store.
*   **`NS...UsageDescription` Keys**: (Usually added here manually) When you need permissions (Camera, Photo Library, Location), you **must** add a key here with a string explaining *why* you need it, otherwise the app will crash/reject on iOS.
*   **`CFBundleVersion` / `CFBundleShortVersionString`**: The build and version numbers, mapped from your Flutter build.
*   **`UISupportedInterfaceOrientations`**: Controls whether your app supports Portrait, Landscape, or both.

---

## 5. `pubspec.yaml`
**Location:** Root directory
**Purpose:** The heart of a Flutter project. It manages dependencies, versioning, and assets.

*   **`name` & `description`**: Internal project metadata.
*   **`version`**: The single source of truth (e.g., `1.0.0+1`). Flutter tooling reads this line to set the version for **both** Android (`versionCode`/`versionName`) and iOS (`CFBundleVersion`/`ShortVersionString`).
*   **`environment`**: Specifies the Dart SDK version required.
*   **`dependencies`**: Where you add libraries your app uses (e.g., `http`, `provider`).
*   **`dev_dependencies`**: Libraries only needed during coding/testing (e.g., `flutter_lints`, `flutter_test`).
*   **`flutter` section**:
    *   **`assets`**: Where you list images or files to bundle with the app.
    *   **`fonts`**: Where you register custom font files.
