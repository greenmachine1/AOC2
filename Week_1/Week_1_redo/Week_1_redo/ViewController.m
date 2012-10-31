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
    BaseGuitarClass *ibanezGuitar = [GuitarFactory getGuitar:IBANEZ];
    if (ibanezGuitar != nil)
    {
        UILabel *topLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
        topLabel.numberOfLines = 6;
        topLabel.text = [ibanezGuitar printSpecs];
        [self.view addSubview:topLabel];
    }
    
    BaseGuitarClass *espGuitar = [GuitarFactory getGuitar:ESPGUITAR];
    if (espGuitar != nil)
    {
        [espGuitar printSpecs];
    }
    
    BaseGuitarClass *fenderGuitar = [GuitarFactory getGuitar:FENDER];
    if (fenderGuitar != nil)
    {
        [fenderGuitar printSpecs];
    }
    
    BaseGuitarClass *jacksonGuitar = [GuitarFactory getGuitar:JACKSON];
    if (jacksonGuitar != nil)
    {
        [jacksonGuitar printSpecs];
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
