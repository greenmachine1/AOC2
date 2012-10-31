//
//  BaseGuitarClass.h
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GuitarFactory.h"
#import "ESP.h"
#import "Jackson.h"
#import "Ibanez.h"


@interface BaseGuitarClass : NSObject
{
    int guitarType;
}

// the different types of guitars
typedef enum{
    JACKSON = 0,
    FENDER,
    ESPGUITAR,
    IBANEZ
}guitarType;

@property int numberOfStrings;
    
//@property NSString *nameOfManufacture;
    
@property float _price;


-(id)init; 
-(NSString*)printSpecs;
-(float)calculateFinalPriceOfGuitar;

@end
