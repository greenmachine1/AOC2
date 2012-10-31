//
//  Jackson.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Jackson.h"


@implementation Jackson

@synthesize hasSwirlyDesign;

// has to be generalization of the object
-(id)init
{
    if(self = [super init])
    {
        [self setHasSwirlyDesign:TRUE];
    }
    return self;
}

// calculates the final price of the guitar if it has a swirly design
-(float)calculateFinalPriceOfGuitar
{
    float addedPrice = 0.0f;
    
    if(hasSwirlyDesign == TRUE)
    {
        addedPrice = 300.00f;
    }
    
    return addedPrice + [self _price];
}
@end
