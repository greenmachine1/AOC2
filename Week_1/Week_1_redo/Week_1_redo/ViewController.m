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
#import "ESP.h"
#import "Jackson.h"
#import "Ibanez.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // using the static method found in my guitar factory, all this coding looks much cleaner
    // and also easier to read.
    /*
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
    
    BaseGuitarClass *jacksonGuitar = [GuitarFactory getGuitar:JACKSON];
    if (jacksonGuitar != nil)
    {
        UILabel *thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, 320, 100)];
        thirdLabel.numberOfLines = 6;
        thirdLabel.text = [jacksonGuitar printSpecs];
        [self.view addSubview:thirdLabel];
    }
    */
    /*
    Jackson *newGuitarThing = (Jackson*)[GuitarFactory getGuitar:JACKSON];
    if(newGuitarThing != nil)
    {
        
        // sets the Bool to true
        [newGuitarThing setHasSwirlyDesign:1];
        
        NSLog(@"This is %c", newGuitarThing.hasSwirlyDesign);
    }
    
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
