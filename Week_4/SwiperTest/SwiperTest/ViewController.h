//
//  ViewController.h
//  SwiperTest
//
//  Created by Cory Green on 11/13/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *swipeLabel;
    
    UISwipeGestureRecognizer *leftSwiper;
    UISwipeGestureRecognizer *rightSwiper;
}
@end
