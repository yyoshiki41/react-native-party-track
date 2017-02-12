//
//  RNMixpanel.h
//
//  Created by Yoshiki Nakagawa on 12/02/2017.
//

#import "RNPartyTrack.h"
#import <Partytrack/Partytrack.h>

#define kUserAgentKey @"UserAgent"

@implementation RNUserAgent

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(sendEventWithID:(NSString *)eventID)
{
    [[Partytrack sharedInstance] sendEventWithID:eventID];
}

@end
