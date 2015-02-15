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
//    [self layoutViews];
    [self layoutConstraints];
}
- (void)layoutViews{
    UIButton *btn1 =[UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btn2 =[UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btn3 =[UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setBackgroundColor:[UIColor greenColor]];
    [btn2 setBackgroundColor:[UIColor redColor]];
    [btn3 setBackgroundColor:[UIColor blueColor]];
    btn1.translatesAutoresizingMaskIntoConstraints = NO;
    btn2.translatesAutoresizingMaskIntoConstraints = NO;
    btn3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:btn1];
    [self.view addSubview:btn2];
//    [self.view addSubview:btn3];

    [btn1 setTitle:@"Test Button 1" forState:UIControlStateNormal];
    [btn2 setTitle:@"Test Button 2" forState:UIControlStateNormal];
    [btn3 setTitle:@"Test Button 3" forState:UIControlStateNormal];
    
    NSDictionary *metrics = @{@"height":@50.0,@"space":@20.0};
    NSDictionary *views = NSDictionaryOfVariableBindings(btn1,btn2,btn3);
    
    NSLayoutConstraint *constraint= [NSLayoutConstraint constraintWithItem:btn2
                                                                 attribute:NSLayoutAttributeBottom
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:btn1
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1 constant:100];
    
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[btn1(>=200)][btn2(==200)][btn3(==200)]" options:0 metrics:metrics views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[btn1(<=200)][btn2(==200)][btn3(==200)]" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[btn1]-|" options:NSLayoutFormatAlignAllLeft  metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[btn2]-|" options:NSLayoutFormatAlignAllLeft  metrics:metrics views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[btn3]-|" options:NSLayoutFormatAlignAllLeft  metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-height-[btn1]" options:0 metrics:metrics views:views]];
    [self.view addConstraint:constraint];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[btn2]" options:0 metrics:metrics views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[btn3]" options:0 metrics:metrics views:views]];



}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
