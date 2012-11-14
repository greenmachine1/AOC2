//
//  ViewController.h
//  Week_4_practice
//
//  Created by Cory Green on 11/13/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIView *bottomView;
    IBOutlet UIView *topView;
    
    IBOutlet UIButton *button;
    
    CGRect originalTopViewFrame;
    
    bool isOpen;
}

-(IBAction)onClick:(id)sender;
@end
