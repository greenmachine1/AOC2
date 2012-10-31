//
//  CreatureFactory.h
//  Factory_example
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCreature.h"

typedef enum{
    UNICORN = 0,
    DRAGON
}creatureName;

@interface CreatureFactory : NSObject

+(BaseCreature*)GetCreature:(int)creatureType;

@end
