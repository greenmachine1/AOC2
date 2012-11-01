//
//  ViewController.m
//  Week_2_Project
//
//  Created by Cory Green on 10/29/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // experimenting with my IBOutlet connections
    mainTextField.text = @"Helloooo";

    
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}


// my on click event handler.
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if(button.tag == 0)
        {
            NSLog(@"You pressed the 1 key");
        }
        else if(button.tag == 1)
        {
            NSLog(@"You pressed the 2 key");
        }
        else if(button.tag == 2)
        {
            NSLog(@"You pressed the 3 key");
        }
        else if(button.tag == 3)
        {
            NSLog(@"You pressed the 4 key");
        }
        else if(button.tag == 4)
        {
            NSLog(@"You pressed the 5 key");
        }
        else if(button.tag == 5)
        {
            NSLog(@"You pressed the 6 key");
        }
        else if(button.tag == 6)
        {
            NSLog(@"You pressed the 7 key");
        }
        else if(button.tag == 7)
        {
            NSLog(@"You pressed the 8 key");
        }
        else if(button.tag == 8)
        {
            NSLog(@"You pressed the 9 key");
        }
        else if(button.tag == 9)
        {
            NSLog(@"You pressed the 0 key");
        }
    }
    
}

-(IBAction)everyThingElseClick:(id)sender
{
    UIButton *newButtonThing = (UIButton*)sender;
    if (newButtonThing != nil)
    {
        if(newButtonThing.tag == 0)
        {
            NSLog(@"Switch was pressed");
        }
        if(newButtonThing.tag == 1)
        {
            NSLog(@"+ button was pressed");
        }
        if(newButtonThing.tag == 2)
        {
            NSLog(@"= button was pressed");
        }
        if(newButtonThing.tag == 3)
        {
            NSLog(@"Clear button was pressed");
        }
    }
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
