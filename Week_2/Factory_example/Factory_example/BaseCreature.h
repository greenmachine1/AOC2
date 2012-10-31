//
//  BaseCreature.h
//  Factory_example
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCreature : NSObject
{
    int _type;
    
    NSString *_name;
}

-(id)initWithDetails:(int)type name:(NSString*)name;
-(void)printName;

@end
