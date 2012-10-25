//
//  Guitar.m
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Guitar.h"

@implementation Guitar

-(id)init
{
    if(self = [super init])
    {
        numberOfStrings = 6;
        
        headStockType = @"normal";
        
        hasTremelo = true;
    }
    return self;
}

// my setter method
-(void)setValues:(int)numberOStrings headStockType:(NSString *)headStockT hasTremeloType:(BOOL)hasTremeloT
{
    numberOfStrings = numberOStrings;
    headStockType = headStockT;
    hasTremelo = hasTremeloT;
}

// my getter method
-(NSString *)printValues
{
    NSString *tremeloValue = [[NSString alloc] init];
    if(hasTremelo == true)
    {
        tremeloValue = @"Yes";
    }
    else
    {
        tremeloValue = @"No";
    }
    
    NSString *returnedString = [[NSString alloc] initWithFormat:@"The values of the guitar are: number of Strings = %i, headstock type %@, and has a tremelo? = %@", numberOfStrings, headStockType, tremeloValue];
    
    return returnedString;
}

@end
