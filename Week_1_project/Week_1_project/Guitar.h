//
//  Guitar.h
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>

// defining my different guitar types
typedef enum {
    JACKSONDINKY=0,
    IBANEZS,
    ESPBUZ
}EGuitarType;

// setting my different variables for my base class
@interface Guitar : NSObject
{
    int numberOfStrings;
    
    NSString *headStockType;
    
    BOOL hasTremelo;
}

-(NSString *)printValues;
-(void)setValues:(int)numberOStrings headStockType:(NSString *)headStockT hasTremeloType:(BOOL)hasTremeloT;

@end
