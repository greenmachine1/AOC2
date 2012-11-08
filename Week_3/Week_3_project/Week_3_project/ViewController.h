//
//  ViewController.h
//  Week_3_project
//
//  Created by Cory Green on 11/6/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface ViewController : UIViewController<TopViewDelegate>
{
    IBOutlet UITextView *textView;
    IBOutlet UIButton *addEvent;
    //IBOutlet UIButton *close;
}

-(IBAction)onClick:(id)sender;

@end
