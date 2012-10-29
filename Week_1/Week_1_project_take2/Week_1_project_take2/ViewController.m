//
//  ViewController.m
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "BaseGuitarClass.h"
#import "Guitar_different_taxes.h"
#import "GuitarFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    // instantiating classes and applying labels to them
    // using enum, I can have a word representation for my integer values
    // that represent the different classes..
    GuitarFactory *newFactory = [[GuitarFactory alloc] init];
    
    UILabel *newNewLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    newNewLabel.text = [newFactory guitarChoise:JACKSON];
    newNewLabel.numberOfLines = 5;
    
    // instantiating a new object using the same class outline!
    UILabel *newNewLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 110, 320, 100)];
    newNewLabel2.text = [newFactory guitarChoise:ESP];
    newNewLabel2.numberOfLines = 5;
    
    // instantiating a new object using the same class outline!
    UILabel *newNewLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, 320, 100)];
    newNewLabel3.text = [newFactory guitarChoise:IBANEZ];
    newNewLabel3.numberOfLines = 5;
    
    [self.view addSubview:newNewLabel3];
    [self.view addSubview:newNewLabel2];
    [self.view addSubview:newNewLabel];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
