//
//  GuitarFactory.h
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseGuitarClass.h"
#import "ESP.h"
#import "Jackson.h"
#import "Fender.h"
#import "Ibanez.h"


// the different types of guitars
typedef enum{
    JACKSON = 0,
    FENDER,
    ESPGUITAR,
    IBANEZ
}guitarType;

@interface GuitarFactory : NSObject


// static method getGuitar
+(BaseGuitarClass *)getGuitar:(int)guitarType;

@end
