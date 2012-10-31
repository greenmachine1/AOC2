//
//  BaseGuitarClass.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "BaseGuitarClass.h"
#import "ESP.h"

@implementation BaseGuitarClass


// will change to a generic init method.
-(id)init //WithDetails:(int)numberOStrings nameOManufacture:(NSString*)nameOmanufacture price:(float)price
{
    if(self = [super init])
    {
        numberOfStrings = 6;
        nameOfManufacture = @"";
        _price = 2300.00f;
        
       /* numberOfStrings = numberOStrings;
        nameOfManufacture = nameOmanufacture;
        _price = price; */
    }
    return self;
}
-(void)printSpecs
{
    NSLog(@"The specs of the guitar are: manufacture = %@, number of strings = %i, and the price = %0.2f", nameOfManufacture, numberOfStrings, _price);
}
@end
