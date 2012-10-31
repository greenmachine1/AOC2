//
//  Fender.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Fender.h"

@implementation Fender

-(id)init
{
    if(self = [super init])
    {
        [self setNumberOfStrings:6];
        
        [self setNameOfManufacture:@"Fender"];
        
        [self set_price:1200.95f];
    }
    return self;
}

@end
