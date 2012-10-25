//
//  myClass.h
//  Week_1_Practice
//
//  Created by Cory Green on 10/24/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myClass : NSObject
{
    // creating object variables
    NSString *text;
    
    int intValue;
    
    float floatValue;
}

// creating methods for the object to use
-(NSString *)getText;
@end
