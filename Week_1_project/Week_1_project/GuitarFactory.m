//
//  GuitarFactory.m
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "GuitarFactory.h"
#import "Guitar.h"
#import "JacksonDinky.h"
#import "IbanezS.h"
#import "ESPBuz.h"

@implementation GuitarFactory
{
    
}

-(Guitar *)returnedGuitarType:(int)EGuitarType
{
    if (EGuitarType == 0)
    {
        return [[Guitar alloc] initWithDetails:6 name:@"Jackson" price:1799];
    }
    else if(EGuitarType == 1)
    {
        return [[Guitar alloc] initWithDetails:7 name:@"ESP" price:1699];
    }
    else if (EGuitarType == 2)
    {
        return [[Guitar alloc] initWithDetails:8 name:@"Ibanez" price:1499];
    }
    return nil;
}
@end
