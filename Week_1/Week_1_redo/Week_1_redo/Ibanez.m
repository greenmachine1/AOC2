//
//  Ibanez.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Ibanez.h"

@implementation Ibanez

@synthesize discount;

-(id)init
{
    if(self = [super init])
    {
        [self setDiscount:0.0f];
    }
    return self;
}

-(float)calculateFinalPriceOfGuitar
{
    float discountedPrice = discount * [self _price];
    
    
    float finalValueOfGuitar = [self _price] - discountedPrice;
    return finalValueOfGuitar;
}

@end
