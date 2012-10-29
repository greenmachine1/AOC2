//
//  IbanezS.m
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "IbanezS.h"
#import "Guitar.h"

@implementation IbanezS
-(id)init
{
    if(self = [super init])
    {
        _numberOfStrings = 6;
        
        _name = @"Ibanez";
        
    }
    return self;
}


@end
