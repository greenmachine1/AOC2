//
//  ViewController.m
//  Week_3_project
//
//  Created by Cory Green on 11/6/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    textView.text = nil;
    
    finalString = nil;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// All button clicks are handled with this guy
-(IBAction)onClick:(id)sender
{


    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if(viewController != nil)
    {
        viewController.delegate = self;
        [self presentViewController:viewController animated:TRUE completion:nil];
         
    }
    


}

-(void)returnedString:(NSString *)nameString secondString:(NSString*)date
{
    NSString *newReturnedString = [NSString stringWithFormat:@"Event Name: %@ and the date to be held: %@", nameString, date];
    
    
    // so if the newReturnedString which holds all the event information in the form
    // of a string actually has something in it... do something.
    
    if(newReturnedString != nil)
    {
        
        // Ok lets say that if the returned string is not empty... lets store what ever its contents
        // are in a saved variable string called savedEvent
        
      /*
        if(savedEvent == nil)
        {
            
                // store the contents of newReturnedString into savedEvent
                // which makes it != nil
            
            
            // Ok getting somewhere
            // going back and forth, storing dates and events in the saved event
            // while destroying the contents of secondSavedEvent
            
            
            savedEvent = newReturnedString;
            
            finalString = savedEvent;
            
            secondSavedEvent = nil;
            
            //finalString = [savedEvent stringByAppendingString:finalString];
            //textView.text = savedEvent;
            
        }
    
        else if(savedEvent != nil)
        {
            NSLog(@"saved events does have something in it");
            
            secondSavedEvent = newReturnedString;
            
            
            savedEvent = nil;
            
            finalString = secondSavedEvent;
            
            //textView.text = secondSavedEvent;
            
            //finalString = [finalString stringByAppendingString:secondSavedEvent];
        }
        
        */
        
        
        // if final string = nothing then do this
        if(finalString == nil)
        {
            // if final string is nil then saved events holds the string returned
            // by newReturnedString
            savedEvent = newReturnedString;
            
            // also finalString now holds savedEvents(also known as newRetruendString)
            finalString = savedEvent;
        }
        
        // triggers if finalString has something in it
        else if (finalString != nil)
        {
            
        }
        
       
        // if there is something in savedEvents, I want to append what ever is coming
        // next to it
        
        
        
    }
}
        
        
        
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //if(textView.text != nil)
    //{
        // should be doing my saving, displaying and appending here
        
        
        
        
        
        
        
        
        
        //savedEvent = newReturnedString;

        // sending the final string to the textView
        //textView.text = newReturnedString;
        //textView.text = savedEvent;
        //textView.textAlignment = NSTextAlignmentLeft;
    //}
    
    
    //else if (textView.text == nil)
    //{
    //    NSLog(@"NIL");
    //}



@end
