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
    textView.text = @"";

    
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
    NSString *newReturnedString = [NSString stringWithFormat:@"Event Name: %@ and the date to be held: %@ \n \n", nameString, date];
    
    
    // so if the newReturnedString which holds all the event information in the form
    // of a string actually has something in it... do something.
    
        if (finalString != nil)
        {
            [finalString appendString:newReturnedString];

        }

        else
        {
            finalString = [[NSMutableString alloc] initWithString:newReturnedString];
        }
    
        textView.text = finalString;
    
}
        
        
//finalString = [finalString stringByAppendingString:secondString];




    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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
