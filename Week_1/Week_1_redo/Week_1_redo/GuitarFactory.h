//
//  GuitarFactory.h
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseGuitarClass.h"

typedef enum{
    JACKSON = 0,
    FENDER,
    ESP,
    IBANEZ
}guitarType;

@interface GuitarFactory : NSObject

+(BaseGuitarClass *)getGuitar:(int)guitarType;

@end
