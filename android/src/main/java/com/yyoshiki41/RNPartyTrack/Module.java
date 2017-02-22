package com.yyoshiki41.RNPartyTrack;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import it.partytrack.sdk.Track;

public class Module extends ReactContextBaseJavaModule {

  public Module(ReactApplicationContext reactContext) {
    super(reactContext);
  }

  @Override
  public String getName() {
    return "RNPartyTrack";
  }

  // TODO
  /*
  @ReactMethod
  public void startWithAppID(Context context, int appId, String appKey) {
    Track.start(context, appId, appKey);
  }
  */

  @ReactMethod
  public void sendEventWithID(int id) {
    Track.event(id);
  }
}
