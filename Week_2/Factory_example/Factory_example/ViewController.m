//
//  ViewController.m
//  Factory_example
//
//  Created by Cory Green on 10/30/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"
#import "CreatureFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
     BaseCreature *unicorn = [CreatureFactory GetCreature:UNICORN];
    
    //CreatureFactory *creatureFactory = [[CreatureFactory alloc] init];
    if(unicorn != nil)
    {
        
        [unicorn printName];
        
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
