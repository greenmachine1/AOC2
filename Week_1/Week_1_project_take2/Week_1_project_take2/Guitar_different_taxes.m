//
//  Jackson.m
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "Guitar_different_taxes.h"

@implementation Guitar_different_taxes
{
    
}

// this calculation method will override the BaseGuitarClass method with the
// same name but with a different tax amount
-(float)calculationMethod:(int)costOfGuitarInWholeDollars
{
    float tax = costOfGuitarInWholeDollars * 0.10f;
    float finalValueOfGuitar = costOfGuitarInWholeDollars + tax;
    return finalValueOfGuitar;
}

@end
