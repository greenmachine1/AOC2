//
//  ViewController.h
//  Week_4_Project
//
//  Created by Cory Green on 11/10/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController<SecondViewDelegate>
{
    IBOutlet UITextView *mainTextField;
    
    NSString *savedEvent;
    NSMutableString *finalSavedString;
}





-(IBAction)onclick:(id)sender;



@end
