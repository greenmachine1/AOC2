//
//  ViewController.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "BaseGuitarClass.h"
#import "GuitarFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    BaseGuitarClass *newGuitar = [GuitarFactory getGuitar:IBANEZ];
    if (newGuitar != nil)
    {
        [newGuitar printSpecs];
    }
    
    BaseGuitarClass *espGuitar = [GuitarFactory getGuitar:ESPGUITAR];
    if (espGuitar != nil)
    {
        [espGuitar printSpecs];
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
