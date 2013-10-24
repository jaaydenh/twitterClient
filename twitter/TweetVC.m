//
//  TweetVC.m
//  twitter
//
//  Created by Jaayden on 10/23/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "TweetVC.h"
#import "Tweet.h"

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
    
    NSString *at = @"@";
    self.screenName.text = [at stringByAppendingString:self.tweet.screenName];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
