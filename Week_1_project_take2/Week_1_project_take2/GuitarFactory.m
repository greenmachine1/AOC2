//
//  GuitarFactory.m
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "GuitarFactory.h"
#import "Guitar_different_taxes.h"

@implementation GuitarFactory


-(NSString *)guitarChoise:(int)EGuitarType
{
    if(EGuitarType == 0)
    {
        BaseGuitarClass *esp = [[BaseGuitarClass alloc] init];
        [esp setterMethod:6 nameOManufacture:@"ESP" costOfGuitar:1400];
        return [esp gettermethod];
    }
    else if(EGuitarType == 1)
    {
        Guitar_different_taxes *jackson = [[Guitar_different_taxes alloc] init];
        [jackson setterMethod:7 nameOManufacture:@"Jackson" costOfGuitar:1899];
        return [jackson gettermethod];
    }
    else if(EGuitarType == 2)
    {
        BaseGuitarClass *ibanez = [[BaseGuitarClass alloc] init];
        [ibanez setterMethod:8 nameOManufacture:@"Ibanez" costOfGuitar:1999];
        return [ibanez gettermethod];
    }
    else
    {
        return nil;
    }
}

@end
