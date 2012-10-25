//
//  ViewController.m
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "Guitar.h"
#import "JacksonDinky.h"
#import "IbanezS.h"
#import "ESPBuz.h"
#import "GuitarFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    GuitarFactory *guitar = [[GuitarFactory alloc] init];
    if(guitar != nil)
    {
        Guitar *jackson = [guitar returnedGuitarType:0];
        [jackson printName];
    }
    
    
    
// creating my labels
/*
    UILabel *topGuitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    topGuitarLabel.text = [espGuitar printValues];
    topGuitarLabel.numberOfLines = 5;
    
    UILabel *middleGuitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 110, 320, 100)];
    middleGuitarLabel.text = [jacksonGuitar printValues];
    middleGuitarLabel.numberOfLines = 5;
    
    UILabel *bottomGuitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, 320, 100)];
    bottomGuitarLabel.text = [ibanezGuitar printValues];
    bottomGuitarLabel.numberOfLines = 5;
    
    // setting them to subview
    [self.view addSubview:topGuitarLabel];
    [self.view addSubview:middleGuitarLabel];
    [self.view addSubview:bottomGuitarLabel];
 */   
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
