//
//  ESP.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ESP.h"

@implementation ESP

@synthesize guitarWeight;

-(id)init
{
    if(self = [super init])
    {
        [self setGuitarWeight:0];
    }
    return self;
}

-(float)calculateFinalPriceOfGuitar
{
    float addedWeightPrice = 0.0f;
    
    if(guitarWeight == 10)
    {
        addedWeightPrice = 50.0f;
    }
    else if(guitarWeight > 10)
    {
        addedWeightPrice = 60.0f;
    }
    else
    {
        addedWeightPrice = 10;
    }
    
    // making a return variable
    float totalGuitarPrice = addedWeightPrice + [self _price];
    return totalGuitarPrice;
}
@end