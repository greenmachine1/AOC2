//
//  ViewController.m
//  SwiperTest
//
//  Created by Cory Green on 11/13/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// had to manually put in this method
// does work though
-(void)viewWillAppear:(BOOL)animated
{
    
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:leftSwiper];
    
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    
    [super viewWillAppear:animated];
    
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        swipeLabel.text = @"Left Swipe";
    }
    else if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        swipeLabel.text = @"Right Swipe";
    }
}
@end
