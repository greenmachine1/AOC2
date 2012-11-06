//
//  ViewController.m
//  Date_and_Rolodex_project
//
//  Created by Cory Green on 11/5/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// creates the number of columns in the picker view
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

// creates the number of rows in the picker view
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 5;
}

// fills in each row with the columns and rows
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *str = [NSString stringWithFormat:@"col %d, row %d", component, row];
    return str;
}

// handles the date picker methods
-(IBAction)onChange:(id)sender
{
    UIDatePicker *datePicker = (UIDatePicker*)sender;
    if(datePicker != nil)
    {
        NSDate *date = datePicker.date;
        
        NSLog(@"date = %@", [date description]);
    }
}
    


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
