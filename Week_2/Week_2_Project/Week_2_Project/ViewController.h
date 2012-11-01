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
    IBOutlet UITextField *mainTextField;
    IBOutlet UISwitch *onOffSwitch;
   
    
}

-(IBAction)onClick:(id)sender;

@end
