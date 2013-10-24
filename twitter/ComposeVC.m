//
//  ComposeVC.m
//  twitter
//
//  Created by Jaayden on 10/23/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "ComposeVC.h"

@interface ComposeVC ()

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onCancelButton {

    [self dismissViewControllerAnimated:YES completion:nil];
    
//    [self removeFromParentViewController:self];
    
  //  UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    //[self presentViewController:nvc animated:YES completion:nil];
}

@end
