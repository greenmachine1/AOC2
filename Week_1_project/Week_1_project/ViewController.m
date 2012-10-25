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
    
    
    Guitar *baseGuitar = [[Guitar alloc] init];
    [baseGuitar printValues];
    
    JacksonDinky *jacksonGuitar = [[JacksonDinky alloc] init];
    [jacksonGuitar printValues];
    
    IbanezS *ibanezGuitar = [[IbanezS alloc] init];
    [ibanezGuitar printValues];
    
    ESPBuz *espGuitar = [[ESPBuz alloc] init];
    [espGuitar printValues];
    
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
