//
//  BaseGuitarClass.h
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>


// defining my different guitar types
typedef enum {
    JACKSON=0,
    IBANEZ,
    ESP
}EGuitarType;

@interface BaseGuitarClass : NSObject
{
    int numberOfStrings;
    
    NSString *nameOfManufacture;
    
    int costOfGuitar;
}

-(void)setterMethod:(int)numberOStrings nameOManufacture:(NSString *)nameOManufacture costOfGuitar:(int)cost;
-(NSString *)gettermethod;

-(float)calculationMethod:(int)costOfGuitarInWholeDollars;

@end
