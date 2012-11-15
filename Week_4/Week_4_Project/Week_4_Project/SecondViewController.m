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
    }
    return self;
}

- (void)viewDidLoad
{
    // setting defaults
    self.view.backgroundColor = [UIColor colorWithRed:0.0f green:100.0f blue:200.0f alpha:1.0f];

    secondViewTextInput.text = @"default text";
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated
{
    
    // setting up my left swipe gesture
    closeAndSave = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(closeAndSaveSwipe:)];
    closeAndSave.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [closeAndSaveLabel addGestureRecognizer:closeAndSave];
    
    
    [super viewWillAppear:animated];
}

// setting up what happens when you close using the left swipe
-(void)closeAndSaveSwipe:(UISwipeGestureRecognizer*)recognizer
{
    // upon closing of the second view, the delegate method (didClose) gets called
    // and passes back what ever is in the secondViewTextInput.text
    if(delegate != nil)
    {
        // states that if tempStringSecondViewInput does not equal 0 in lenth and does not equal "default text" to pass it
        // on through, if its false throw up an error
        NSString *tempStringSecondViewInput = [[NSString alloc] initWithString:secondViewTextInput.text];
        if(!((tempStringSecondViewInput.length == 0) || ([tempStringSecondViewInput isEqualToString:@"default text"])))
        {
            // puts the event title and date into one string then inserted in the didClose method of the delegate
            NSString *returnedString = [NSString stringWithFormat:@"%@ %@ \n \n", secondViewTextInput.text, dateString];
            [delegate didClose:returnedString];
            
            // this returns them to the first view
            [self dismissViewControllerAnimated:TRUE completion:nil];
            
        }
        else
        {
            // alerting the user to enter an event name
            UIAlertView *alertUserToEnterAnEvent = [[UIAlertView alloc] initWithTitle:@"Enter more info" message:@"Please enter an Event Name" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            
            [alertUserToEnterAnEvent show];
            
        }
    }

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

// date picker section
-(IBAction)datePicker:(id)sender
{
    // casting
    UIDatePicker *datePicker = (UIDatePicker *)sender;
    if(datePicker != nil)
    {
        // creating a new date
        newDate = [datePicker date];
        
        NSDateFormatter *formatDate = [[NSDateFormatter alloc]init];
        
        if(formatDate != nil)
        {
            // sets the format of the date
            [formatDate setDateFormat:@" MMM.dd.yyyy hh:mm a zzzz"];
            
            // sets up an NSMutableString to contain all the data, then put it into dateString
            NSMutableString *dateStringOne = [[NSMutableString alloc] initWithString:[formatDate stringFromDate:newDate]];
                
            dateString = dateStringOne;
        }
    }
}


// close keyboard button
-(IBAction)closeKeyboard:(id)sender
{
    UIButton *closeButton = (UIButton*)sender;
    if(closeButton != nil)
    {
        if(closeButton.tag == 1)
        {
            [secondViewTextInput resignFirstResponder];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
