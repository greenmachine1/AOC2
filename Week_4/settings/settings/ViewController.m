//
//  ViewController.m
//  settings
//
//  Created by Cory Green on 11/14/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(IBAction)onClick:(id)sender
{
    NSUserDefaults *defualts = [NSUserDefaults standardUserDefaults];
    if(defualts != nil)
    {
        NSString *nameString = name.text;
        NSString *colorString = favColor.text;
        NSString *creatureString = favCreature.text;
        
        [defualts setObject:nameString forKey:@"name"];
        [defualts setObject:colorString forKey:@"color"];
        [defualts setObject:creatureString forKey:@"creature"];
        
        // this actually saves the data
        [defualts synchronize];
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    NSUserDefaults *defualts = [NSUserDefaults standardUserDefaults];
    if(defualts != nil)
    {
        NSString *name1 = [defualts objectForKey:@"name"];
        NSString *color1 = [defualts objectForKey:@"color"];
        NSString *creature1 = [defualts objectForKey:@"creature"];
        
        
        //sets these defaults to the saved values
        
        name.text = name1;
        favColor.text = color1;
        favCreature.text = creature1;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
