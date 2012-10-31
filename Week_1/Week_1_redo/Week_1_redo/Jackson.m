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
        numberOfStrings = 6;
        
        nameOfManufacture = @"ESP";
        
        _price = 1390.95f;
    }
    return self;
}
@end
