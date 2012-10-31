//
//  ESP.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ESP.h"

@implementation ESP


-(id)init
{
    if(self = [super init])
    {
        [self setNumberOfStrings:6];
        
        [self setNameOfManufacture:@"ESP"];
        
        [self set_price:1390.95f];
    }
    return self;
}
@end