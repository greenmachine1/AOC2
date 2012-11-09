//
//  SecondViewController.m
//  Week_3_project
//
//  Created by Cory Green on 11/7/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    // setting my defaults for the rest of the program
    mainTextField.text = nil;
    enterInAnEvent.text = @"Enter the event below";
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// clears the text field upon clicking inside
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = @"";
    return TRUE;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    enterInAnEvent.textColor = [UIColor blackColor];
    enterInAnEvent.text = @"Enter the event below";
}


// Ok so this code actually works to pick up the date and time! Formatting now works!
-(IBAction)datePickerView:(UIDatePicker*)sender
{
        UIDatePicker *newDate = (UIDatePicker*)sender;
        if(newDate != nil)
        {
            
            // setting up a new NSDate object
            NSDate *newNewDate = [NSDate date];
            
            // setting up a NSDateFormatter
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            
            // making sure theres something in dateFormatter
            if(dateFormatter != nil)
            {
                // the actual format of the date
                [dateFormatter setDateFormat:@" MMM.dd.yyyy hh:mm a zzzz"];
                
                // making a temporary string to hold the formatted date
                NSMutableString *dateString1 = [[NSMutableString alloc] initWithString:[dateFormatter stringFromDate:newNewDate]];
                
                // setting up dateString to hold that temp string
                dateString = dateString1;
                
            }
        }
}

// upon hitting the return button
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    // made it so that my keyboard resigns from being the first responder
    [textField resignFirstResponder];
    
    
    return TRUE;
}


// on click for my save button
-(IBAction)secondViewOnClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == 0)
        {
            // Ok, so if the mainTextField is not empty - do this
            if(mainTextField.text != nil)
            {
                
                // passes back the string from the Delegate back to the main screen
                [delegate returnedString:mainTextField.text secondString:dateString];
                
            
                [self dismissViewControllerAnimated:TRUE completion:nil];
            }
            
            // if the mainTextField is empty - do this
            else if(mainTextField.text == nil)
            {
                // sets the text for asking to input and save
                enterInAnEvent.text = @"Please enter an event then Save";
                enterInAnEvent.textColor = [UIColor redColor];
                NSLog(@"The field is empty");
            }
        }
        else if (button.tag == 1)
        {
            [mainTextField resignFirstResponder];
        }
        
    }
}



@end
