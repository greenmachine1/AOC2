//
//  SecondViewController.h
//  Week_4_Project
//
//  Created by Cory Green on 11/10/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

// ----------------------------------------- assigned a protocol -----------------------------------------------------

// assigning my secondViewDelegate.
// this is placed above the @interface section
@protocol SecondViewDelegate <NSObject>

// and assigning the didCLose method to be passed back into
// the ViewController
// made the method required - needs to be implemented

@required
-(void)didClose:(NSString*)nameString;

@end

// --------------------------------------- @interface section ---------------------------------------------------------

@interface SecondViewController : UIViewController<UITextFieldDelegate>
{
    id<SecondViewDelegate> delegate;
    IBOutlet UITextField *secondViewTextInput;
    

    IBOutlet UIDatePicker *datePicker1;
    
    IBOutlet UILabel *enterNewEvent;

    IBOutlet UILabel *closeAndSaveLabel;
    
    NSString *dateString;
    NSDate *newDate;
    
    UISwipeGestureRecognizer *closeAndSave;
}



// this allows me to set my deletage from outside
@property (strong) id<SecondViewDelegate> delegate;

-(IBAction)closeKeyboard:(id)sender;

-(IBAction)datePicker:(id)sender;


@end
