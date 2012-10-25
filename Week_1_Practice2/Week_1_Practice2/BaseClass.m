//
//  BaseClass.m
//  Week_1_Practice2
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "BaseClass.h"

@implementation BaseClass

-(id)init
{
    if(self = [super init])
    {
        temp = 3;
        nameString = @"hello";
    }
    return self;
}
@end
