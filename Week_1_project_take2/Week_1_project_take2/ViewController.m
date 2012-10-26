//
//  ViewController.m
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "BaseGuitarClass.h"
#import "Jackson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    // this way of instantiating a class will be moved to the GuitarFactory class
    // when I make it
    BaseGuitarClass *newGuitarClass = [[BaseGuitarClass alloc] init];
    [newGuitarClass setterMethod:6 nameOManufacture:@"ESP" costOfGuitar:1200];
    
    UILabel *newLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    newLabel.text = [newGuitarClass gettermethod];
    newLabel.numberOfLines = 5;
    
    
    Jackson *jacksonGuitarClass = [[Jackson alloc] init];
    [jacksonGuitarClass setterMethod:7 nameOManufacture:@"jackson" costOfGuitar:1999];
    
    UILabel *jacksonLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 110, 320, 100)];
    jacksonLabel.text = [jacksonGuitarClass gettermethod];
    jacksonLabel.numberOfLines = 5;
   
    [self.view addSubview:jacksonLabel];
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
