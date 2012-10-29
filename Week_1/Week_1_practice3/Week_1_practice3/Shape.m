//
//  Shape.m
//  Week_1_practice3
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

// the base class
#import "Shape.h"

@implementation Shape


-(id)init
{
    if(self = [super init])
    {
        numSides = 10;
    }
    return self;
}

-(void)printNumSides
{
    NSLog(@"the number of sides are %i", numSides);
}

@end
