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
    
    // declaring my text alignment
    mainTextField.textAlignment = NSTextAlignmentRight;
    
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
            //plus.enabled = true;
            //equals.enabled = true;
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


// this assigns different numbers to my two variables if the equals button has been enabled
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        int firstNumber = 0;
        int secondNumber = 0;
        
        firstNumber = firstNumberVariable;
        secondNumber = secondNumberVariable;

       
        
        if(button.tag == 0)
        {
            //mainTextField.textAlignment = NSTextAlignmentRight;
            mainTextField.text = @"1";

           
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 1
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 1;
              
                
                // when number 1 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
               
            }
            
            // only assigns second number to 1 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 1
                secondNumberVariable = 1;

                equals.enabled = true;
                plus.enabled = false;
                
            }
           
        }
        
        
        else if(button.tag == 1)
        {

            mainTextField.text = @"2";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 2
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 2;
 
                
                // when number 2 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 1 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 2
                secondNumberVariable = 2;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        
        
        else if(button.tag == 2)
        {
            mainTextField.text = @"3";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 3
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 3;
                
                
                // when number 3 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 3 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 3
                secondNumberVariable = 3;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        
        else if(button.tag == 3)
        {
            mainTextField.text = @"4";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 4
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 4;
                
                
                // when number 4 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 4 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 4
                secondNumberVariable = 4;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        
        
        else if(button.tag == 4)
        {
            mainTextField.text = @"5";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 5
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 5;
                
                
                // when number 5 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 5 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 5
                secondNumber = 5;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        else if(button.tag == 5)
        {
            mainTextField.text = @"6";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 6
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 6;
                
                
                // when number 1 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 1 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 6
                secondNumberVariable = 6;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        else if(button.tag == 6)
        {
            mainTextField.text = @"7";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 7
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 7;
                
                
                // when number 7 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 1 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 7
                secondNumberVariable = 7;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        else if(button.tag == 7)
        {
            mainTextField.text = @"8";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 8
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 8;
                
                
                // when number 8 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 1 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 8
                secondNumberVariable = 8;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        else if(button.tag == 8)
        {
            mainTextField.text = @"9";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 9
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 9;
                
                
                // when number 9 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 9 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 9
                secondNumberVariable = 9;
                equals.enabled = true;
                plus.enabled = false;
                
            }
        }
        else if(button.tag == 9)
        {
            mainTextField.text = @"0";
            
            
            // the characteristics of this will be - select one number,
            // enable the plus button
            // select another number
            // disable plus button
            // enable equals button
            
            // first number = 0
            
            if(plus.enabled == false)
            {
                firstNumberVariable = 0;
                
                
                // when number 0 is pressed, the plus button is enabled
                plus.enabled = true;
                equals.enabled = false;
                
            }
            
            // only assigns second number to 0 if the equals sign has been enabled
            else if(plus.enabled == true)
            {
                // second number = 0
                secondNumberVariable = 0;
                equals.enabled = true;
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
            // made the + button represent a variable
            operatorValue = 0;
            mainTextField.text = @"";
            
            // if pushed the equals button is disabled

        }
        
        // will call on calculation method from here
        // = button
        if(newButtonThing.tag == 1)
        {
            //mainTextField.text = @"";
            
            // if the operator value = 0 which is + then add the two variables together
            if(operatorValue == 0)
            {
                
                // made a place holder string to hold the main text field text.
                NSString *mainStringText = [[NSString alloc] initWithFormat:@"%i", (firstNumberVariable + secondNumberVariable)];
                mainTextField.text = mainStringText;
            }
        }
        
        // clears all text from the mainField
        // clear button
        if(newButtonThing.tag == 2)
        {
            firstNumberVariable = 0;
            secondNumberVariable = 0;
            
            mainTextField.text = @"";
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
