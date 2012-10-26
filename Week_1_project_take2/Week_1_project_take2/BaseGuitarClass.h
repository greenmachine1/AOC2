//
//  BaseGuitarClass.h
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseGuitarClass : NSObject
{
    int numberOfStrings;
    
    NSString *nameOfManufacture;
}

-(void)setterMethod:(int)numberOStrings nameOManufacture:(NSString *)nameOManufacture;
-(NSString *)gettermethod;

-(void)calculationMethod;

@end
