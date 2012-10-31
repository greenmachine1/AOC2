//
//  BaseGuitarClass.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "BaseGuitarClass.h"


@implementation BaseGuitarClass


// init method, creates a constructor (generic class)
-(id)init 
{
    if(self = [super init])
    {
        numberOfStrings = 6;
        nameOfManufacture = @"";
        _price = 2300.00f;
    }
    return self;
}

// printSpecs returns the info for the guitar
-(void)printSpecs
{
    NSLog(@"The specs of the guitar are: manufacture = %@, number of strings = %i, and the price = %0.2f", nameOfManufacture, numberOfStrings, _price);
}
@end
