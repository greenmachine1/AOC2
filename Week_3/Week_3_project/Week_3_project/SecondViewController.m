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
    
    mainTextField.text = nil;
    
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

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if(textField.text != @"")
    {
        UIAlertView *newAlert = [[UIAlertView alloc] initWithTitle:@"Wrong Entry" message:@"Please enter in a proper Event" delegate:Nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [newAlert show];
        
        //textField.text = @"";
    }
    else if(textField.text == @"")
    {
        NSLog(@"Field is not blank");
    }

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
            if(mainTextField.text != Nil)
            {
                // passes back the string from the Delegate back to the main screen
                [delegate returnedString:mainTextField.text secondString:dateString];
            
                [self dismissViewControllerAnimated:TRUE completion:nil];
            }
            
            // if the mainTextField is empty - do this
            else if(mainTextField.text == nil)
            {  
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
