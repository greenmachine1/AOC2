//
//  BaseCreature.m
//  Factory_example
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "BaseCreature.h"

@implementation BaseCreature

-(id)initWithDetails:(int)type name:(NSString*)name
{
   
    if (self = [super init])
    {
        _type = type;
        _name = name;
    }
    return self;
}

-(void)printName
{
    NSLog(@"I am a %@ with a type of %d", _name, _type);
}
@end


