//
//  ViewController.m
//  Week_1_Practice
//
//  Created by Cory Green on 10/23/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // just messing around with objects!
    
    textLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0, 0, 320, 100))];
    
    textLabel.text = @"default text";
    [self.view addSubview:textLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
