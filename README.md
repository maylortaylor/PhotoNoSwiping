# Photo No Swiping
![Flutter Push](https://github.com/maylortaylor/PhotoNoSwiping/workflows/Flutter%20Push/badge.svg)
![Flutter Build APK Release](https://github.com/maylortaylor/PhotoNoSwiping/workflows/Flutter%20Build%20APK%20Release/badge.svg)

Photo No Swiping is a Flutter based project that allows users to select multiple photos and only show those selected photos.

Got something private but want to show off some pictures?
Don't want someone swiping through all of your pictures?

Photo No Swiping allows users to select multiple photos and only show those selected photos. 

Select up to 8 photos to share.
Once selected, the application will lock the user out, allowing the user to only swipe between the selected photos.


### Install Packages
```
flutter packages get
// installs dependencies from pubspec.yaml
```

### Setup Emulator
```
flutter emulators
// shows all available emulators

// Once you find the name of the emulator you want to use.

flutter emulators --launch Pixel_2_XL_API_28
flutter emulators --launch Pixel_2_XL_API_26
flutter emulators --launch Pixel_2_XL_API_23
// launches the Pixel 2 XL emulator
flutter emulators --launch apple_ios_simulator
// launches the iOS emulator (Mac OSX only)

```

### Build
```
flutter build ios
// builds the iOS app

flutter build apk -t lib/main_prod.dart
// builds the Android app
// https://flutter.dev/docs/deployment/android

flutter packages pub run flutter_launcher_icons:main
// create icons 
```

### Building For Release
```
flutter build apk -t lib/main_prod.dart appbundle
// builds a small file version for app release
```
 - [Upload your app to the Play Console](https://developer.android.com/studio/publish/upload-bundle)
 - [Prepare and roll out release](https://support.google.com/googleplay/android-developer/answer/7159011)

## Running the app
```
flutter run
// runs flutter app

flutter clean
// deletes build/ folder
```

```
flutter run -t lib/main_dev.dart
// run app in development mode

flutter run -t lib/main_prod.dart
// run app in prod mode mode
```

## Useful Commands

Repair Flutter Cache

```
flutter packages pub cache repair
```


## Getting Started With Flutter

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
