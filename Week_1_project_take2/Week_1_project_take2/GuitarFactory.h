//
//  GuitarFactory.h
//  Week_1_project_take2
//
//  Created by Cory Green on 10/26/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseGuitarClass.h"
#import "Guitar_different_taxes.h"


@interface GuitarFactory : BaseGuitarClass

-(BaseGuitarClass *)guitarChoise:(int)choise;

@end
