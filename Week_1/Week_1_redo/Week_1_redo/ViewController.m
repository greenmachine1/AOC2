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
        UILabel *secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 110, 320, 100)];
        secondLabel.numberOfLines = 6;
        secondLabel.text = [espGuitar printSpecs];
        [self.view addSubview:secondLabel];
    }
    
    BaseGuitarClass *fenderGuitar = [GuitarFactory getGuitar:FENDER];
    if (fenderGuitar != nil)
    {
        UILabel *thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, 320, 100)];
        thirdLabel.numberOfLines = 6;
        thirdLabel.text = [fenderGuitar printSpecs];
        [self.view addSubview:thirdLabel];
    }
    
    BaseGuitarClass *jacksonGuitar = [GuitarFactory getGuitar:JACKSON];
    if (jacksonGuitar != nil)
    {
        UILabel *forthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 330, 320, 100)];
        forthLabel.numberOfLines = 6;
        forthLabel.text = [jacksonGuitar printSpecs];
        [self.view addSubview:forthLabel];
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
