//
//  ViewController.m
//  TapGesture
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
    
    UITapGestureRecognizer *tapper = [[UITapGestureRecognizer alloc ] initWithTarget:self action:@selector(onTap:)];
    if(tapper != nil)
    {
        
        // so when you tap the label twice, the onTap: function is called
        tapper.numberOfTapsRequired = 2;
        [textLabel addGestureRecognizer:tapper];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(void)onTap:(UITapGestureRecognizer *)recognizer
{
    textLabel.text = @"You clicked me!";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
