//
//  ViewController.m
//  AUTOLayoutDemo
//
//  Created by Mangesh Tekale on 27/01/14.
//  Copyright (c) 2014 ShowSeeker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.scrollView setFrame:CGRectMake(0, 0, 320, 200)];

    [self.scrollView setContentSize:CGSizeMake(320, 400)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
