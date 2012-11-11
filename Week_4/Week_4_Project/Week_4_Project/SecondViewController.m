//
//  SecondViewController.m
//  Week_4_Project
//
//  Created by Cory Green on 11/10/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

// had to synthesize the delegate property
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // nil out delegate
        delegate = nil;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    
    self.view.backgroundColor = [UIColor whiteColor];

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

// this happens when you click inside the text field on the second view controller
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    
    textField.text = @"";
    return  TRUE;
}

// this happens when you hit the return key on the second view controller
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return TRUE;
}

// onclick function for second view controller.
-(IBAction)secondViewOnClick:(id)sender
{

    // upon closing of the second view, the delegate method (didClose) gets called
    // and passes back what ever is in the secondViewTextInput.text
    if(delegate != nil)
    {
        [delegate didClose:secondViewTextInput.text];
    }
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
