//
//  ViewController.h
//  Date_and_Rolodex_project
//
//  Created by Cory Green on 11/5/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
{
    IBOutlet UIPickerView *pickerView;
}

-(IBAction)onChange:(id)sender;
@end
