//
//  ViewHelper.m
//  twitter
//
//  Created by Jaayden on 10/27/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "ViewHelper.h"

@implementation ViewHelper

+ (NSString *)fuzzyTime:(NSString *)datetime; {
    NSString *formatted;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"eee MMM dd HH:mm:ss ZZZZ yyyy"];
    NSTimeZone *gmt = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
    [formatter setTimeZone:gmt];
    NSDate *date = [formatter dateFromString:datetime];
    NSDate *today = [NSDate date];
    NSInteger minutes = [today minutesAfterDate:date];
    NSInteger hours = [today hoursAfterDate:date];
    NSInteger days = [today daysAfterDate:date];
    NSString *period;
    if(days >= 365){
        float years = round(days / 365) / 2.0f;
        period = (years > 1) ? @"y" : @"y";
        formatted = [NSString stringWithFormat:@"%i%@", years, period];
    } else if(days < 365 && days >= 30) {
        float months = round(days / 30) / 2.0f;
        period = @"m";
        formatted = [NSString stringWithFormat:@"%i%@", months, period];
    } else if(days < 30 && days >= 2) {
        period = @"d";
        formatted = [NSString stringWithFormat:@"%i%@", days, period];
    } else if(days == 1){
        period = @"d";
        formatted = [NSString stringWithFormat:@"%i%@", days, period];
    } else if(days < 1 && minutes > 60) {
        period = (hours > 1) ? @"h" : @"h";
        formatted = [NSString stringWithFormat:@"%i%@", hours, period];
    } else {
        period = (minutes < 60 && minutes > 1) ? @"m" : @"m";
        formatted = [NSString stringWithFormat:@"%i%@", minutes, period];
        if(minutes < 1){
            formatted = @"a moment ago";
        }
    }
    return formatted;
}

@end
