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
    if (self != nil){
        // any init for this object
    }
    
    return self;
}

-(NSString *)getText
{
    return @"HelllooooooooooooOoO!";
}

@end
