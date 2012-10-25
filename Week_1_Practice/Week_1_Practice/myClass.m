//
//  myClass.m
//  Week_1_Practice
//
//  Created by Cory Green on 10/24/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "myClass.h"


// definition of myClass
@implementation myClass

// creating an object construct
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        intValue = 10;
        floatValue = 3.4f;
        thisIsBool = TRUE;
        
    }
    
    return self;
}

-(NSString *)getText
{
    NSString *newStringThing = [[NSString alloc] initWithFormat:@"the numbers are intValue = %d, float value = %f", intValue, floatValue];
    
    return newStringThing;
}

@end
