//
//  square.m
//  Week_1_practice3
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

// the square class which inherits from the shape class
#import "square.h"

@implementation square

-(id)init
{
    if (self = [super init])
    {
        numSides = 4;
        
    }
    return self;
}
@end
