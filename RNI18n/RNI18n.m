//
//  RNI18n.m
//  RNI18n
//
//  Created by Alexander Zaytsev on 14/06/15.
//  Copyright (c) 2015 Alexander Zaytsev. All rights reserved.
//

#import "RNI18n.h"

@interface RNI18n ()
-(NSString*) getCurrentLocale;
@end

@implementation RNI18n
RCT_EXPORT_MODULE();

-(NSString*) getCurrentLocale {
    NSArray *localizations = [[NSBundle mainBundle] preferredLocalizations];

    if ([localizations count] > 0) {
        return localizations[0];
    } else {
        return @"en";
    }
}

- (NSDictionary *)constantsToExport
{
    return @{ @"locale": [self getCurrentLocale] };
}
@end
