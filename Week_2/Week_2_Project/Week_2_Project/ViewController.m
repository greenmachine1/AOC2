//
//  ViewController.m
//  Week_2_Project
//
//  Created by Cory Green on 10/29/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //onlySwitch.on = false;
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}

// my switch function
-(IBAction)onSwitch:(id)sender
{
    UISwitch *mainSwitch = (UISwitch *)sender;
    if(mainSwitch != nil)
    {
        // made main switch togglable
        if(mainSwitch.on == true)
        {
            one.enabled = false;
            two.enabled = false;
            three.enabled = false;
            four.enabled = false;
            five.enabled = false;
            six.enabled = false;
            seven.enabled = false;
            eight.enabled = false;
            nine.enabled = false;
            zero.enabled = false;
        }
        else if(mainSwitch.on == false)
        {
            one.enabled = true;
            two.enabled = true;
            three.enabled = true;
            four.enabled = true;
            five.enabled = true;
            six.enabled = true;
            seven.enabled = true;
            eight.enabled = true;
            nine.enabled = true;
            zero.enabled = true;
        }
    }
    
    
}


// my on click event handler.
// need to find a way to move over to the right 
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if(button.tag == 0)
        {
            NSLog(@"You pressed the 1 key");
            mainTextField.text = @"1";
        }
        else if(button.tag == 1)
        {
            NSLog(@"You pressed the 2 key");
            mainTextField.text = @"2";
        }
        else if(button.tag == 2)
        {
            NSLog(@"You pressed the 3 key");
            mainTextField.text = @"3";
        }
        else if(button.tag == 3)
        {
            NSLog(@"You pressed the 4 key");
            mainTextField.text = @"4";
        }
        else if(button.tag == 4)
        {
            NSLog(@"You pressed the 5 key");
            mainTextField.text = @"5"; 
        }
        else if(button.tag == 5)
        {
            NSLog(@"You pressed the 6 key");
            mainTextField.text = @"6"; 
        }
        else if(button.tag == 6)
        {
            NSLog(@"You pressed the 7 key");
            mainTextField.text = @"7"; 
        }
        else if(button.tag == 7)
        {
            NSLog(@"You pressed the 8 key");
            mainTextField.text = @"8"; 
        }
        else if(button.tag == 8)
        {
            NSLog(@"You pressed the 9 key");
            mainTextField.text = @"9"; 
        }
        else if(button.tag == 9)
        {
            NSLog(@"You pressed the 0 key");
            mainTextField.text = @"0";
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
            NSLog(@"+ button was pressed");
        }
        if(newButtonThing.tag == 1)
        {
            NSLog(@"= button was pressed");
        }
        if(newButtonThing.tag == 2)
        {
            NSLog(@"Clear button was pressed");
        }
        if(newButtonThing.tag == 3)
        {
            // calls on the second view to display the programmers name
            SecondViewController *newViewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
            if(newViewController != nil)
            {
                [self presentViewController:newViewController animated:true completion:nil];
               
            }
        }
    }
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
