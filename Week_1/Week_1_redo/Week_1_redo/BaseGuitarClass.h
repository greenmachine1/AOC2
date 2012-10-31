//
//  BaseGuitarClass.h
//  Week_1_redo
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BaseGuitarClass : NSObject
{
    int numberOfStrings;
    
    NSString *nameOfManufacture;
    
    float _price;
}

-(id)init; //WithDetails:(int)numberOStrings nameOManufacture:(NSString*)nameOmanufacture price:(float)price;

-(void)printSpecs;

@end
