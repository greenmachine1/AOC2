//
//  BaseCreature.h
//  inheritanceTest
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum
{
    CREATURETYPE_BEAR=0,
    CREATURETYPE_UNICORN,
    CREATURETYPE_DRAGON,
    CREATURETYPE_PLATYPUS
} ECreatureType;

@interface BaseCreature : NSObject
{
    ECreatureType creatureType;
    NSString *creatureName;
    
    BOOL mythical;
}

@end
