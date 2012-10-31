//
//  Jackson.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Jackson.h"


@implementation Jackson


-(id)init
{
    if(self = [super init])
    {
        [self setNumberOfStrings:6];
        
        [self setNameOfManufacture:@"Jackson"];
        
        [self set_price:1295.00f];
    }
    return self;
}
@end
