//
//  BaseGuitarClass.m
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "BaseGuitarClass.h"

@implementation BaseGuitarClass
-(id)init

{
    self = [super init];
    if(self != nil)
    {
        numberOfStrings = 6;
        
        nameOfManufacture = @"Fender";
    }
    return self;
}

// creating my setter method
-(void)setterMethod:(int)numberOStrings nameOManufacture:(NSString *)nameOManufacture
{
    numberOfStrings = numberOStrings;
    
    nameOfManufacture = nameOManufacture;
}

// creating my getter method
-(NSString *)gettermethod
{
    NSString *returnedString = [[NSString alloc] initWithFormat:@"The guitar manufactured by %@ has %i strings.", nameOfManufacture, numberOfStrings];
    return returnedString;
}

-(void)calculationMethod
{
    
}
@end
