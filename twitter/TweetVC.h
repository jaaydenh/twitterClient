//
//  TweetVC.h
//  twitter
//
//  Created by Jaayden on 10/23/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TweetVC : UIViewController

- (id)initWithTweet:(Tweet *) tweet;

@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *screenName;
@property (weak, nonatomic) IBOutlet UILabel *tweetText;
@property (weak, nonatomic) IBOutlet UIImageView *userImage;

@end
