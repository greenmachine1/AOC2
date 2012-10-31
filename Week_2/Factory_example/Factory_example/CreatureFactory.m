//
//  CreatureFactory.m
//  Factory_example
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "CreatureFactory.h"

@implementation CreatureFactory

+(BaseCreature*)GetCreature:(int)creatureType
{
    if (creatureType == 0)
    {
        return [[BaseCreature alloc] initWithDetails:UNICORN name:@"Unicorn"];
    }
    else if (creatureType == 0)
    {
        return [[BaseCreature alloc] initWithDetails:DRAGON name:@"Dragon"];
    }
    return nil;
}

@end
