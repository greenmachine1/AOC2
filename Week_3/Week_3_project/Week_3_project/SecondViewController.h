//
//  SecondViewController.h
//  Week_3_project
//
//  Created by Cory Green on 11/7/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>


// custom delegate
@protocol TopViewDelegate <NSObject>

@required

-(void)returnedString:(NSString *)nameString secondString:(NSString*)date;


@end

@interface SecondViewController : UIViewController<UITextFieldDelegate>
{
    NSString *dateString;
    NSString *event;
    
    NSString *tempEvent;
    
    id<TopViewDelegate> delegate;
    IBOutlet UIButton *saveButton;
    IBOutlet UIButton *closeButton;
    
    
    IBOutlet UITextField *mainTextField;

    
    IBOutlet UILabel *enterInAnEvent;

}

-(IBAction)secondViewOnClick:(id)sender;

-(IBAction)datePickerView:(id)sender;

@property (strong) id<TopViewDelegate> delegate;

@end

