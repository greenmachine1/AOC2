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
        [self setNumberOfStrings:8];
        
        [self setNameOfManufacture:@"Ibanez"];
        
        [self set_price:1900.00f];
    }
    return self;
}

@end
