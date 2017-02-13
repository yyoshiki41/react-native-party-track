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

TODO

## Usage

```javascript
//Require the module
var PartyTrack = require('react-native-party-track').default;

//Send an event
PartyTrack.sendEventWithID(1);
```
