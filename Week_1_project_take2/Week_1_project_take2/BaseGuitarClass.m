//
//  BaseGuitarClass.m
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "BaseGuitarClass.h"

@implementation BaseGuitarClass

// constructor - constructs one verson of the class
-(id)init
{
    self = [super init];
    if(self != nil)
    {
        numberOfStrings = 6;
        
        nameOfManufacture = @"Fender";
        
        costOfGuitar = 1000;
    }
    return self;
}

// creating my setter method
-(void)setterMethod:(int)numberOStrings nameOManufacture:(NSString *)nameOManufacture costOfGuitar:(int)cost
{
    numberOfStrings = numberOStrings;
    
    nameOfManufacture = nameOManufacture;
    
    costOfGuitar = cost;
}


// calculation method used to figure out total cost of the guitar
// in a seperate class, will use some other states sales tax and use as an override
-(float)calculationMethod:(int)costOfGuitarInWholeDollars
{
    float tax = costOfGuitarInWholeDollars * 0.07f;
    float finalValueOfGuitar = costOfGuitarInWholeDollars + tax;
    return finalValueOfGuitar;
}

// creating my getter method - calls on the calculationMethod from within itself
-(NSString *)gettermethod
{
    NSString *returnedString = [[NSString alloc] initWithFormat:@"The guitar manufactured by %@ has %i strings. The total price of this guitar including tax is %.02f", nameOfManufacture, numberOfStrings,[self calculationMethod:costOfGuitar]];
    return returnedString;
}
@end
