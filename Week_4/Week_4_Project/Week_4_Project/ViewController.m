
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
    
    NSLog(@"This loaded up once");

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
        NSLog(@"You swiped to the right");
        
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
            // ... and finalSavedString has something in it...
            if(finalSavedString != nil)
            {
                // ... append the two strings together into finalSavedString
                finalSavedString = [[NSMutableString alloc] initWithFormat:@"%@%@",newOne ,nameString];
            }
            
            // if newOne has something in it but finalSavedString does not...
            else if(finalSavedString == nil)
            {
                // finalSavedString has nameString in it.
                finalSavedString = [[NSMutableString alloc] initWithString:nameString];
            }
        }
        else if(newOne == nil)
        {
            if(finalSavedString != nil)
            {
                
            }
            else if(finalSavedString == nil)
            {
                
            }
        }
        
        
        
        /*
        else
        {
            finalSavedString = [[NSMutableString alloc] initWithString:nameString];
            //NSLog(@"There isnt information stored");
        }
         */
        mainTextField.text = finalSavedString;
    }
    
        
    
   /*
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
*/
    
}

@end











