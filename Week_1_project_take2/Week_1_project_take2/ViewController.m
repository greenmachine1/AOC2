//
//  ViewController.m
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "BaseGuitarClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    BaseGuitarClass *newGuitarClass = [[BaseGuitarClass alloc] init];
    [newGuitarClass setterMethod:6 nameOManufacture:@"Jackson"];
    
    UILabel *newLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    newLabel.text = [newGuitarClass gettermethod];
    newLabel.numberOfLines = 5;
    
   
    
    [self.view addSubview:newLabel];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
