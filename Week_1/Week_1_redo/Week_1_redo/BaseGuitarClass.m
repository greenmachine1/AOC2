//
//  BaseGuitarClass.m
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "BaseGuitarClass.h"

// my baseClass
@implementation BaseGuitarClass


@synthesize numberOfStrings, _price, nameOfManufacture;


// init method, creates a constructor (generic class)
// using the @synthesize, each property gets a set method which also needs a capitol
// letter for the first letter of the property
-(id)init 
{
    if(self = [super init])
    {
        [self setNumberOfStrings:0];
        
        [self setNameOfManufacture:@""];
        
        [self set_price:0];
    }
    return self;
}



// printSpecs returns the info for the guitar


-(NSString*)printSpecs
{
    NSString *returnedString = [[NSString alloc] initWithFormat:@"The specs of the guitar are: manufacture = %@, number of strings = %i, and the price = %0.2f, and the final price of the guitar %0.02f", nameOfManufacture, numberOfStrings, _price, [self calculateFinalPriceOfGuitar]];
                
    return returnedString;
}


-(float)calculateFinalPriceOfGuitar
{
    return _price;
}
@end
