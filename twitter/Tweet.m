//
//  Tweet.m
//  twitter
//
//  Created by Timothy Lee on 8/5/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet


// Memoization, if the property is nil check the underlying dictionary


- (NSString *)id_str {
    return [self.data valueOrNilForKeyPath:@"id_str"];
}

- (NSString *)text {
    return [self.data valueOrNilForKeyPath:@"text"];
}

- (NSString *)name {
    return [self.data valueOrNilForKeyPath:@"user.name"];
}

- (NSString *)screenName {
    return [self.data valueOrNilForKeyPath:@"user.screen_name"];
}

- (NSString *)imageUrl {
    return [self.data valueOrNilForKeyPath:@"id_str"];
}

- (NSString *)profileImageUrl {
    return [self.data valueOrNilForKeyPath:@"user.profile_image_url"];
}

- (NSString *)createdAt {
    return [self.data valueOrNilForKeyPath:@"created_at"];
}

+ (NSMutableArray *)tweetsWithArray:(NSArray *)array {
    NSMutableArray *tweets = [[NSMutableArray alloc] initWithCapacity:array.count];
    for (NSDictionary *params in array) {
        [tweets addObject:[[Tweet alloc] initWithDictionary:params]];
    }
    return tweets;
}

@end
