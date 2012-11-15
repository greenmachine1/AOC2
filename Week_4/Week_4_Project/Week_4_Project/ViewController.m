
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
    // setting the background color
    self.view.backgroundColor = [UIColor colorWithRed:0.0f green:100.0f blue:200.0f alpha:0.7f];
    
    // initializing the finalSavedString as nil
    finalSavedString = nil;
    
    
    // when the main view loads up, the default data loads up on it
    NSUserDefaults *defualts = [NSUserDefaults standardUserDefaults];
    if(defualts != nil)
    {
        NSString *name1 = [defualts objectForKey:@"savedString"];
        
        mainTextField.text = name1;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}




// this is where I will be saving what is in the main text field
-(IBAction)onSave:(id)sender
{
    NSUserDefaults *default1 = [NSUserDefaults standardUserDefaults];
    if(default1 != nil)
    {
        // saves what is in the mainTextField to user default
        NSString *finalSavedStringThing = mainTextField.text;
        
        [default1 setObject:finalSavedStringThing forKey:@"savedString"];
        
        // made an alert that lets the user know their info has been saved
        UIAlertView *newAlert = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your info Has been Saved" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        
        [newAlert show];
        
        [default1 synchronize];
    }

    
    
}

-(void)viewDidAppear:(BOOL)animated
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
    
        SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        if(secondView != nil)
        {
            secondView.delegate = self;
            [self presentViewController:secondView animated:TRUE completion:nil];
        }
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




// Ok this actually works now!!
// I do realize i spelled defaults wrong... I did it on purpose... I swear... :D
-(void)didClose:(NSString*)nameString
{
    NSUserDefaults *defualts = [NSUserDefaults standardUserDefaults];
    if(defualts != nil)
    {
        // this has the saved data from previous use
        NSString *newOne = [defualts objectForKey:@"savedString"];
     
        // if newOne has something in it...
        if(newOne != nil)
        {
            // ... and finalSavedString does not, then...
            if(finalSavedString == nil)
            {
                // ... finalSavedString has newOne and nameString in it.
                finalSavedString = [[NSMutableString alloc] initWithFormat:@"%@%@", newOne, nameString];
            }
            
            // If newOne has something in it and finalSavedString has something in it, then...
            else if(finalSavedString != nil)
            {
                // ... nameString gets added to finalSavedString.
                [finalSavedString appendString:nameString];
            }
        }
        
        // if newOne doesnt have anything in it...
        else if(newOne == nil)
        {
            // ... but finalSavedString does...
            if(finalSavedString != nil)
            {
                // ... append nameString to it.
                [finalSavedString appendString:nameString];
            }
            
            // if NewOne doesnt have anything it it and neither does finalSavedstring...
            else if(finalSavedString == nil)
            {
                // ... finalString has nameString in it.
                finalSavedString = [[NSMutableString alloc] initWithString:nameString];
            }
        }
        
        if(nameString.length == 0)
        {
            NSLog(@"Please enter a valid entry");
        }
        
        
            mainTextField.text = finalSavedString;
    }
    
}

@end











