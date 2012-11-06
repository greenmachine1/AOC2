//
//  ViewController.h
//  TextViewTest
//
//  Created by Cory Green on 11/2/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextView *textView;
    
    CGRect textViewFrame;
}


-(IBAction)onclick:(id)sender;
@end
