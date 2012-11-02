//
//  ViewController.h
//  Week_2_Project
//
//  Created by Cory Green on 10/29/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // my main textfield and switch declarations
    IBOutlet UITextField *mainTextField;
    IBOutlet UISwitch *onlySwitch;
    
    // my number button declarations
    IBOutlet UIButton *one;
    IBOutlet UIButton *two;
    IBOutlet UIButton *three;
    IBOutlet UIButton *four;
    IBOutlet UIButton *five;
    IBOutlet UIButton *six;
    IBOutlet UIButton *seven;
    IBOutlet UIButton *eight;
    IBOutlet UIButton *nine;
    IBOutlet UIButton *zero;
    
    IBOutlet UIButton *plus;
    IBOutlet UIButton *equals;
    IBOutlet UIButton *clear;
    IBOutlet UIButton *info;
    
    IBOutlet UISegmentedControl *segment;
    
    int firstNumberVariable;
    int secondNumberVariable;
    int operatorValue;
    
    int finalOutput;
    
}

// these are my click events.  One handles 0 - 9 buttons and the other handles everything else
-(IBAction)onClick:(id)sender;
-(IBAction)everyThingElseClick:(id)sender;

// handles the switch functionality
-(IBAction)onSwitch:(id)sender;

-(IBAction)onChangeButton:(id)sender;





@end
