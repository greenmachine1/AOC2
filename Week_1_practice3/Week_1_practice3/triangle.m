//
//  triangle.m
//  Week_1_practice3
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

// the triangle class which inherits from the shape class
#import "triangle.h"
#import "Shape.h"

@implementation triangle

-(id)init
{
    if (self = [super init])
    {
        numSides = 3;
        
    }
    return self;
}


@end
