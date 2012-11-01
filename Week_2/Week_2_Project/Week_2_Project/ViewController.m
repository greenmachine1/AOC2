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
    
    // defaults to white background
    self.view.backgroundColor = [UIColor whiteColor];
    
    // by default plus and equals are false
    plus.enabled = false;
    equals.enabled = false;
    
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
        if(mainSwitch.on == false)
        {
            // clears the text field
            mainTextField.text = @"";
            mainTextField.enabled = false;
            
            plus.enabled = false;
            equals.enabled = false;
            clear.enabled = false;
            info.enabled = false;
            
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
            
            segment.enabled = false;
        }
        else if(mainSwitch.on == true)
        {
            plus.enabled = true;
            equals.enabled = true;
            clear.enabled = true;
            info.enabled = true;
            
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
            
            segment.enabled = true;
        }
    }
    
    
}



// my on click event handler.
// need to find a way to move over to the right

// this assigns different numbers to my two variables if the equals button has been enabled
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        int firstNumber = 0;
        int secondNumber = 0;
        
        firstNumberVariable = firstNumber;
        secondNumberVariable = secondNumber;

       
        
        if(button.tag == 0)
        {
            NSLog(@"You pressed the 1 key");
            mainTextField.text = @"1";

           
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 1
            
            if(equals.enabled == false)
            {
                firstNumber = 1;
                
                NSLog(@"%i", firstNumber);
                
                // when number 1 is pressed, the plus button is enabled
                plus.enabled = true;
               
            }
            
            // only assigns second number to 1 if the equals sign has been enabled
            else if(equals.enabled == true)
            {
                // second number = 1
                secondNumber = 1;
                NSLog(@"equals is set to true %i", secondNumber);
               
                
            }
           
        }
        else if(button.tag == 1)
        {
            NSLog(@"You pressed the 2 key");
            mainTextField.text = @"2";
            
            // first number = 2
            firstNumber = 2;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 2 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 2;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 2)
        {
            NSLog(@"You pressed the 3 key");
            mainTextField.text = @"3";
            
            // first number = 3
            firstNumber = 3;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 3 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 3;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 3)
        {
            NSLog(@"You pressed the 4 key");
            mainTextField.text = @"4";
            
            // first number = 4
            firstNumber = 4;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 4 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 4;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 4)
        {
            NSLog(@"You pressed the 5 key");
            mainTextField.text = @"5";
            
            // first number = 5
            firstNumber = 5;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 5 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 5;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 5)
        {
            NSLog(@"You pressed the 6 key");
            mainTextField.text = @"6";
            
            // first number = 6
            firstNumber = 6;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 6 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 6;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 6)
        {
            NSLog(@"You pressed the 7 key");
            mainTextField.text = @"7";
            
            // first number = 7
            firstNumber = 7;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 7 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 7;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 7)
        {
            NSLog(@"You pressed the 8 key");
            mainTextField.text = @"8";
            
            // first number = 8
            firstNumber = 8;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 8 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 8;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 8)
        {
            NSLog(@"You pressed the 9 key");
            mainTextField.text = @"9";
            
            // first number = 9
            firstNumber = 9;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 9 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 9;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        else if(button.tag == 9)
        {
            NSLog(@"You pressed the 0 key");
            mainTextField.text = @"0";
            
            // first number = 0
            firstNumber = 0;
            NSLog(@"%i", firstNumber);
            
            // only assigns second number to 0 if the equals sign has been enabled
            if(equals.enabled == true)
            {
                secondNumber = 0;
                NSLog(@"equals is set to true %i", secondNumber);
                plus.enabled = false;
            }
        }
        
    }
    
}


-(IBAction)everyThingElseClick:(id)sender
{
    UIButton *newButtonThing = (UIButton*)sender;
    if (newButtonThing != nil)
    {
      
        // will do the capture of the first number here
        // + button
        if(newButtonThing.tag == 0)
        {
            NSLog(@"+ button was pressed");
            mainTextField.text = @"";
            
            // if pushed the equals button is disabled

        }
        
        // will call on calculation method from here
        // = button
        if(newButtonThing.tag == 1)
        {
            NSLog(@"= button was pressed");

        }
        
        // clears all text from the mainField
        // clear button
        if(newButtonThing.tag == 2)
        {
            firstNumberVariable = 0;
            secondNumberVariable = 0;
            
            mainTextField.text = @"";
            NSLog(@"Clear button was pressed");
            plus.enabled = false;
            equals.enabled = false;
        }
        
        // this is for the info button
        // info button
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

-(int)calculation:(int)firstNumber second:(int)secondNumber
{
    return firstNumber + secondNumber;
}



// for my segment control bar
// currently changes the color of the background
-(IBAction)onChangeButton:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl *)sender;
    if(segmentControl != nil)
    {
        int selectedIndex = segmentControl.selectedSegmentIndex;
        
        if(selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        if(selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
        if(selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
    }
}


// need to implement an actual calculation method here
// also need to figure a way to make the calculator read more than one number at a time




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
