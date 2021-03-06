//
//  TweetVC.m
//  twitter
//
//  Created by Jaayden on 10/23/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "TweetVC.h"
#import "Tweet.h"
#import "UIImageView+AFNetworking.h"

@interface TweetVC ()

@property (nonatomic, strong) Tweet *tweet;

@end

@implementation TweetVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Tweet";
    }
    return self;
}

- (id)initWithTweet:(Tweet *) tweet
{
    if (self) {
        self.tweet = tweet;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tweetText.text = self.tweet.text;
    self.userName.text = self.tweet.name;
    
    self.screenName.text = [@"@" stringByAppendingString:self.tweet.screenName];
    
    UIImage *defaultImage = [UIImage imageNamed:@"user.png"];
    
    [self.userImage setImageWithURL: [NSURL URLWithString:self.tweet.profileImageUrl] placeholderImage:defaultImage];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"eee MMM dd HH:mm:ss ZZZZ yyyy"];
    NSTimeZone *gmt = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
    [formatter setTimeZone:gmt];
    NSDate *date = [formatter dateFromString:self.tweet.createdAt];
    
    self.createdAt.text = [NSDateFormatter localizedStringFromDate:date
                                                         dateStyle:NSDateFormatterShortStyle
                                                         timeStyle:NSDateFormatterShortStyle];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
