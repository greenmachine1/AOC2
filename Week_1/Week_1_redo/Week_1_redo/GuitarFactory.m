//
//  GuitarFactory.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "GuitarFactory.h"

@implementation GuitarFactory

+(BaseGuitarClass *)getGuitar:(int)guitarType
{
    if(guitarType == ESPGUITAR)
    {
        return [[ESP alloc] init];
    }
    
    if(guitarType == FENDER)
    {
        return [[Fender alloc]init];
    }
    
    if(guitarType == JACKSON)
    {
        return [[Jackson alloc] init];
    }
    
    if(guitarType == IBANEZ)
    {
        return [[Ibanez alloc] init];
    }
    
    return nil;
}

@end
