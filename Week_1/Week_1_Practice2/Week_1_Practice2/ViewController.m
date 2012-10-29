//
//  ViewController.m
//  Week_1_Practice2
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "BaseClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    BaseClass *base = [[BaseClass alloc] init];
    if(base != nil)
    {
        // during runtime objc creates getter and setter methods.
        // sets temp value to 456
        base.temp = 456;
        // gets the value from base class
        NSLog(@"baseValue = %d", base.temp);
        
        
        // usage of a static method, you have to use the class name not the actual instance of the class
        [BaseClass printValue:3];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
