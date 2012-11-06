//
//  ViewController.m
//  TextViewTest
//
//  Created by Cory Green on 11/2/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // cache the original size of the textview
    textViewFrame = textView.frame;
    
    // setting up the notification center to handle what happens when the keyboard will show and hide
    // selector:@selector(keyboardWillShow) - is the method that will be ran when the keyboard shows.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// this is the method that gets called on for keyboardWillShow
-(void)keyboardWillShow:(NSNotificationCenter *)notification
{
    // get both the width and height of the keyboard
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey]CGRectValue].size;
    
    CGRect newFrame = CGRectMake(0.0f, textView.frame.origin.y, 320.0f, textView.frame.size.height - keyboardSize.height);
    
    [textView setFrame:newFrame];
}

- (void)keyboardWillHide:(NSNotificationCenter *)notification
{
    // works to bring the text back to normal after you close the keyboard
    [textView setFrame:textViewFrame];
}

-(IBAction)onclick:(id)sender
{
    
    // This has the ability to capture what is in the text view
    UIButton *button = (UIButton*)sender;
    if(button !=nil)
    {
        if(button.tag == 0)
        {
            [textView resignFirstResponder];
        }
        else if(button.tag == 1)
        {
            NSString *tempString = textView.text;
            
            NSLog(@"%@", tempString);
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
