//
//  GuitarFactory.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "GuitarFactory.h"

@implementation GuitarFactory

+(BaseGuitarClass *)getGuitar:(int)guitarType
{
    if (guitarType == 0)
    {
        return [[BaseGuitarClass alloc] initWithDetails:6 nameOManufacture:@"Jackson" price:1499.00];
    }
    else if (guitarType == 1)
    {
        return [[BaseGuitarClass alloc] initWithDetails:6 nameOManufacture:@"Fender" price:1250.00];
    }
    else if (guitarType == 2)
    {
        return [[BaseGuitarClass alloc] initWithDetails:7 nameOManufacture:@"ESP" price:1399.95];
    }
    else if (guitarType == 3)
    {
        return [[BaseGuitarClass alloc] initWithDetails:8 nameOManufacture:@"Ibanez" price:1595.95];
    }
    return nil;
}

@end
