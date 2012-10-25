//
//  Guitar.h
//  Week_1_project
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>

// defining my different guitar types
typedef enum {
    JACKSONDINKY=0,
    IBANEZS,
    ESPBUZ
}EGuitarType;

// setting my different variables for my base class
@interface Guitar : NSObject
{
    int _numberOfStrings;
    
    NSString *_name;
    
    int _price;

}

-(id)initWithDetails:(int)numberOfStrings name:(NSString *)name price:(int)price;
-(NSString *)printName;
-(int)priceOfGuitar:(int)price;



@end
