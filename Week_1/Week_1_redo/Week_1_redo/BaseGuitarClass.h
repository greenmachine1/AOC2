//
//  BaseGuitarClass.h
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BaseGuitarClass : NSObject

@property int numberOfStrings;
    
@property NSString *nameOfManufacture;
    
@property float _price;


-(id)init; 
-(NSString*)printSpecs;
-(int)calculation:(int)firstNumber second:(int)secondNumber;

@end
