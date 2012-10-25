//
//  ESPBuz.m
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ESPBuz.h"
#import "Guitar.h"

@implementation ESPBuz
-(id)init
{
    if(self = [super init])
    {
        numberOfStrings = 8;
        
        headStockType = @"reverse";
        
        hasTremelo = true;
    }
    return self;
}

@end
