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


-(IBAction)datePicker:(id)sender
{
    UIDatePicker *datePicker = (UIDatePicker*)sender;
    if(datePicker != nil)
    {
        NSDate *date = datePicker.date;
        NSLog(@"%@",[date description]);
        
        // getting close to understanding this
        NSString *dateThingy = [NSString stringWithFormat:@"%@", [date description]];
        
        
        [delegate returnedDate: dateThingy];
        
        
        
    
    }
}


// upon hitting the return button
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    // made it so that my keyboard resigns from being the first responder
    [textField resignFirstResponder];
    
    
    return TRUE;
}



-(IBAction)secondViewOnClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == 0)
        {
            NSLog(@"Hello");
            
            
            [delegate returnedDate:mainTextField.text];
            [self dismissViewControllerAnimated:TRUE completion:nil];

        }
        else if(button.tag == 1)
        {
            NSLog(@"Hello");
        }
        
    }
}



@end
