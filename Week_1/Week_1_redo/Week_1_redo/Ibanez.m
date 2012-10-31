//
//  Ibanez.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Ibanez.h"

@implementation Ibanez

-(id)init
{
    if(self = [super init])
    {
        numberOfStrings = 8;
        nameOfManufacture = @"Ibanez";
        _price = 1900.00f;
    }
    return self;
}

@end
