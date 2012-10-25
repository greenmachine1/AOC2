//
//  Guitar.m
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Guitar.h"

@implementation Guitar

-(id)initWithDetails:(int)numberOfStrings name:(NSString *)name
{
    if(self = [super init])
    {
        _numberOfStrings = numberOfStrings;
        
        _name = name;
    }
    return self;
}

-(NSString *)printName
{
    NSString *returnedStringValue = [[NSString alloc] initWithFormat:@"I am a %@ with %i strings", _name, _numberOfStrings];
    
    return returnedStringValue;
}






@end
