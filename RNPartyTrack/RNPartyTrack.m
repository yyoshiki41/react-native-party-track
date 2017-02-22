//
//  RNPartyTrack.m
//  RNPartyTrack
//
//  Created by Yoshiki Nakagawa on 2017/02/13.
//  Copyright © 2017 Yoshiki Nakagawa. All rights reserved.
//

#import "RNPartyTrack.h"
#import <Partytrack/Partytrack.h>

@implementation RNPartyTrack

RCT_EXPORT_MODULE();

// TODO
/*
RCT_EXPORT_METHOD(startWithAppID:(int)appID appKey:(NSString *)appKey launchOptions:(NSDictionary *)launchOptions)
{
    [[Partytrack sharedInstance] startWithAppID:appID AndKey:appKey AndOptions:launchOptions];
}
*/

RCT_EXPORT_METHOD(sendEventWithID:(int)eventID)
{
    [[Partytrack sharedInstance] sendEventWithID:eventID];
}

@end
