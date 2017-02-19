# React Native Party Track

React Native wrapper for [Party Track](http://partytrack.it/).

[![npm version](https://badge.fury.io/js/react-native-party-track.svg)](https://badge.fury.io/js/react-native-party-track)
![platforms](https://img.shields.io/badge/platforms-Android%20%7C%20iOS-yellowgreen.svg)

## Requirements

- Party Track SDK
- React Native ( < v0.40.0 )

## Installation

```bash
$ npm install react-native-party-track --save
```

## ■ iOS Setup

```bash
$ react-native link react-native-party-track
```

### Troubleshooting

- `'Partytrack/Partytrack.h' file not found`

Add path to `Partytrack.framework` in *RNPartyTrack.xcodeproj* > *Build Settings* > *FRAMEWORK_SEARCH_PATHS*.

## ■ Android Setup

In `android/app/build.gradle`

```diff
dependencies {
    ...
+   compile project(':react-native-party-track')
}
```

In `MainApplication.java`

```diff
+ import com.yyoshiki41.RNPartyTrack.RNPartyTrack;

public class MainApplication extends Application implements ReactApplication {
    ...
    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
          ...
+         new RNPartyTrack()
      );
    }
}
```

This package needs `android/app/libs/partytrack.jar` in your project.
If there is not, fix a relative path in `android/build.gradle`.

### Troubleshooting

When your projects's `android/app/build.gradle` includes `*.jar`, fix like below.

```diff
dependencies {
    ...
-   compile fileTree(include: ['*.jar'], dir: 'libs')
+   compile fileTree(include: ['*.jar'], dir: 'libs', exclude: 'partytrack.jar')
}
```

## Usage

```javascript
// Require the module
var PartyTrack = require('react-native-party-track').default;

// Send an event
PartyTrack.sendEventWithID(1);
```
