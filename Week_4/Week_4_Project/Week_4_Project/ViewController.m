
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
    
    finalSavedString = nil;

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    addEvent = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    addEvent.direction = UISwipeGestureRecognizerDirectionRight;
    
    [addEventLabel addGestureRecognizer:addEvent];
    
    [super viewWillAppear:animated];
}


// OK this works
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        NSLog(@"You swiped to the right");
        //swipeLabel.text = @"Right Swipe";
        
        SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        if(secondView != nil)
        {
            secondView.delegate = self;
            [self presentViewController:secondView animated:TRUE completion:nil];
        }
    }

}






// this is going to need to be replaced by the swipe event
/*
-(IBAction)onclick:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if(secondView != nil)
    {
        secondView.delegate = self;
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}
*/


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Ok this actually works now!!
-(void)didClose:(NSString*)nameString
{
    
       
    // if there is nothing in the finalSavedString, put the return value of nameString in it
    if(finalSavedString == nil)
    {
        finalSavedString =[[NSMutableString alloc] initWithString:nameString];
       
    }
    
    else if(finalSavedString != nil)
    {
               [finalSavedString appendString:nameString];
        
    }
    mainTextField.text = finalSavedString;
}

@end











