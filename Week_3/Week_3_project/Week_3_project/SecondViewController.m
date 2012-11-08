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


// still working on my date pickerview
// still need to figure out how to once you have selected a date
// to not go a head and send (note, I have a bad migrane agagin)
-(IBAction)datePickerView:(UIDatePicker*)sender
{
    
    
    if(sender != nil)
    {
        NSDate *newDate = sender.date;
        if(newDate != nil)
        {
            NSDateFormatter *newFormattedDate = [[NSDateFormatter alloc] init];
            
            if(newFormattedDate != nil)
            {
                // date gets formatted correctly
                [newFormattedDate setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
            
            
                //NSString *newStringReturn = [NSString stringWithString:[newDate description]];
                // date gets passed back to dateString string
                dateString = [newFormattedDate stringFromDate:newDate];
                NSLog(@" %@",dateString);
            
            }
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
            
          [delegate returnedString:mainTextField.text secondString:dateString];
            [self dismissViewControllerAnimated:TRUE completion:nil];
        }
        else if (button.tag == 1)
        {
            [mainTextField resignFirstResponder];
        }
        
    }
}



@end
