//
//  BaseClass.h
//  Week_1_Practice2
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseClass : NSObject
{
    

// setting certain properties to public access
@private
    int temp;
    NSString *nameString;
}


// you can use (readonly) right after @property to make it a get only property
// meaning you cannot set it to anything else you can only retrieve it

// using the (readwrite) right after @property it lets you use setter and getter
// methods.  This is by default so its not specified

// (strong) implies a strong reference.
@property int temp;
@property (strong) NSString *nameString;

+(void)printValue:(int)temp;


@end
