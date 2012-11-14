//
//  ViewController.m
//  Week_4_practice
//
//  Created by Cory Green on 11/13/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // setting isOpen to false to start with
    isOpen = false;
    
    // caching the original frame
    originalTopViewFrame = topView.frame;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)onClick:(id)sender
{
    
    // so, what is ever between these two blocks of code, will get animated
    [UIView beginAnimations:nil context:nil];
    
    // actually sets a delay of 3 seconds from the time it takes to start the
    // animation to the very end
    [UIView setAnimationDuration:0.5f];
    
    // detects wether or not the view is open
    if(!isOpen)
    {
        // this sets the amount of space off to the side to push over the topview
        topView.frame = CGRectMake(270.0f, 0.0f, topView.frame.size.width, topView.frame.size.height);
        isOpen = true;
    }
    // resets the frame to its original frame
    else
    {
        topView.frame = originalTopViewFrame;
        
        // reset isOpen to false
        isOpen = false;
    }
    [UIView commitAnimations];
}
@end
