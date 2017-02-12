//
//  RNMixpanel.h
//
//  Created by Yoshiki Nakagawa on 12/02/2017.
//

#import "RNPartyTrack.h"
#import <Partytrack/Partytrack.h>

@implementation RNPartyTrack

RCT_EXPORT_MODULE();

// TODO: AndOptions
RCT_EXPORT_METHOD(sharedInstanceWithAppConfig:(int)appID appKey:(NSString *)appKey)
{
    [[Partytrack sharedInstance] startWithAppID:appID AndKey:appKey AndOptions:launchOptions];
}

RCT_EXPORT_METHOD(sendEventWithID:(NSString *)eventID)
{
    [[Partytrack sharedInstance] sendEventWithID:eventID];
}

@end
