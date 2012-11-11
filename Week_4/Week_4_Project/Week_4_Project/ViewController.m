
//  ViewController.m
//  Week_4_Project
//
//  Created by Cory Green on 11/10/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    //finalSavedString = nil;
    
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)onclick:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if(secondView != nil)
    {
        secondView.delegate = self;
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// Ok this actually works to add to the overall text!
-(void)didClose:(NSString*)nameString
{
    
    
    if(finalSavedString != nil)
    {
        finalSavedString = [finalSavedString stringByAppendingString:nameString];

    }
    
    // if there is nothing in the finalSavedString, put the return value of nameString in it
    else if(finalSavedString == nil)
    {
        finalSavedString = [NSString stringWithFormat:@"%@",nameString];
    }
    mainTextField.text = finalSavedString;
}

@end











