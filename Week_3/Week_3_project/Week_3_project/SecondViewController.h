//
//  SecondViewController.h
//  Week_3_project
//
//  Created by Cory Green on 11/7/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    
}

@end

@protocol TopViewDelegate <NSObject>

-(void)didClose:(NSString*)nameString;

-(IBAction)onClose:(id)sender;
@end
