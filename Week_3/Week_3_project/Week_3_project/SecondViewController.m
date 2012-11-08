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

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = @"";
    return TRUE;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
    
    if(delegate != nil)
    {
        [delegate didClose:textField.text];
    }
    return TRUE;
}

// does the same thing as the return key press function
-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];

}


@end
