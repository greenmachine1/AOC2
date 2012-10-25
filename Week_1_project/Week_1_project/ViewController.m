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
    
    GuitarFactory *jacksonGuitar = [[GuitarFactory alloc] init];
    if(jacksonGuitar != nil)
    {
        Guitar *jackson = [jacksonGuitar returnedGuitarType:0];
        UILabel *topGuitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
        topGuitarLabel.text = [jackson printName];
        topGuitarLabel.numberOfLines = 5;
        [self.view addSubview:topGuitarLabel];
    }
    GuitarFactory *ibanezGuitar = [[GuitarFactory alloc] init];
    if(jacksonGuitar != nil)
    {
        Guitar *ibanez = [ibanezGuitar returnedGuitarType:2];
        UILabel *middleGuitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 110, 320, 100)];
        middleGuitarLabel.text = [ibanez printName];
        middleGuitarLabel.numberOfLines = 5;
        [self.view addSubview:middleGuitarLabel];
    }
    GuitarFactory *espGuitar = [[GuitarFactory alloc] init];
    if(espGuitar != nil)
    {
        Guitar *esp = [espGuitar returnedGuitarType:1];
        UILabel *bottomGuitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, 320, 100)];
        bottomGuitarLabel.text = [esp printName];
        bottomGuitarLabel.numberOfLines = 5;
        [self.view addSubview:bottomGuitarLabel];
        
    }
 
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
