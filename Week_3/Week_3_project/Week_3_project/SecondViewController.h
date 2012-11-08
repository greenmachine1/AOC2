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

-(void)returnedDate:(NSString *)nameString;
-(void)returnedString:(NSString*)nameOfEvent;

@end

@interface SecondViewController : UIViewController<UITextFieldDelegate,UIPickerViewDelegate>
{
    id<TopViewDelegate> delegate;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UIButton *saveButton;
    
    IBOutlet UIPickerView *pickerView;

}

-(IBAction)secondViewOnClick:(id)sender;
-(IBAction)datePickerView:(id)sender;

@property (strong) id<TopViewDelegate> delegate;

@end

