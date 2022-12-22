# How to deploy Flutter firebase

## Update bundle id in iOS

1. `open ios/Runner.xcworkspace/`
2. On the right side bar, click in `Runner`
3. On tabs, click `Signing & Capabilities`
4. Update `Bundle Identifier`

## Update bundle id in Android

1. open `app/build.gradle`
2. locate and update `applicationId "your.bundle.here`

# Building application

## Build ios

`flutter build ipa`

Next, either upload the outputted ipa
or, open .xcarchive file and upload to store.

## Build Android

`flutter build apk`

or

`flutter build appbundle`
