//
//  ViewController.m
//  Week_1_practice3
//
//  Created by Cory Green on 10/25/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "Shape.h"
#import "triangle.h"
#import "square.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    Shape *newShape = [[Shape alloc] init];
    [newShape printNumSides];
    
    triangle *triangleShape = [[triangle alloc] init];
    [triangleShape printNumSides];
    
    square *newSquare = [[square alloc] init];
    [newSquare printNumSides];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
