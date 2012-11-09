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


// Ok so this code actually works to pick up the date and time! Formatting now works!
-(IBAction)datePickerView:(UIDatePicker*)sender
{
        UIDatePicker *newDate = (UIDatePicker*)sender;
        if(newDate != nil)
        {
            
            NSDate *newNewDate = [NSDate date];
            
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            if(dateFormatter != nil)
            {
                [dateFormatter setDateFormat:@" MMM.dd.yyyy hh:mm a zzzz"];
                
                NSMutableString *dateString1 = [[NSMutableString alloc] initWithString:[dateFormatter stringFromDate:newNewDate]];
                
                NSLog(@"%@",dateString1);
                
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
            
            // passes back the string from the Delegate back to the main screen
            [delegate returnedString:mainTextField.text secondString:dateString];
            //NSLog(@"%@", dateString);
            
            [self dismissViewControllerAnimated:TRUE completion:nil];
        }
        else if (button.tag == 1)
        {
            [mainTextField resignFirstResponder];
        }
        
    }
}



@end
