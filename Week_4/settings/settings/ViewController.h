//
//  ViewController.h
//  settings
//
//  Created by Cory Green on 11/14/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *name;
    IBOutlet UITextField *favColor;
    IBOutlet UITextField *favCreature;
}

-(IBAction)onClick:(id)sender;
@end
