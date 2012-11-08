//
//  SecondViewController.h
//  Week_3_project
//
//  Created by Cory Green on 11/7/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol TopViewDelegate <NSObject>

@required
-(void)didClose:(NSString*)nameString;

@end

@interface SecondViewController : UIViewController<UITextFieldDelegate>
{
    id<TopViewDelegate> delegate;
}

-(IBAction)onClose:(id)sender;

@property (strong) id<TopViewDelegate> delegate;
@end

