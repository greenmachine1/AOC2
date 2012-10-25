//
//  JacksonDinky.m
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "JacksonDinky.h"
#import "Guitar.h"

@implementation JacksonDinky
-(id)init
{
    if(self = [super init])
    {
        _numberOfStrings = 7;
        
        _name = @"Jackson";
        
    }
    return self;
}

@end
