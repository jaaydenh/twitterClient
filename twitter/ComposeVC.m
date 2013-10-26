//
//  ComposeVC.m
//  twitter
//
//  Created by Jaayden on 10/23/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "ComposeVC.h"
#import "UIImageView+AFNetworking.h"
//#import "User.h"

@interface ComposeVC ()

@property (nonatomic, strong) User *currentUser;

@end

@implementation ComposeVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(onCancelButton)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Tweet" style:UIBarButtonItemStylePlain target:self action:@selector(onPostTweetButton)];
    
    User *user = [User currentUser];
    
    self.userName.text = user.name;

    self.screenName.text = [@"@" stringByAppendingString:user.screenName];
    
    UIImage *defaultImage = [UIImage imageNamed:@"user.png"];
    
    [self.userImage setImageWithURL: [NSURL URLWithString:user.profileImageUrl] placeholderImage:defaultImage];
 
    [self.tweetText becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onCancelButton {

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)onPostTweetButton {
    
    [[TwitterClient instance] postTweet:self.tweetText.text success:^(AFHTTPRequestOperation *operation, id response) {
        NSLog(@"%@", response);
        //self.tweets = [Tweet tweetsWithArray:response];
        //[self.tableView reloadData];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    }];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
