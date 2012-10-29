//
//  ViewController.m
//  Experiment
//
//  Created by Cory Green on 10/27/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
 
   
        UILabel *newLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
         newLabel.text = @"Floating Text!";
        
        [self.view addSubview:newLabel];
    

    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
