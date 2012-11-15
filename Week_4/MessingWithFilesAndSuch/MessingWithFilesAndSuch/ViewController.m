//
//  ViewController.m
//  MessingWithFilesAndSuch
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
    
    // gives us the full path to the devices document directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *path = (NSString*) [paths objectAtIndex:0];
    NSLog(@"%@",path);
    
    NSArray *directoryContent;
    
    directoryContent = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:path error:nil];
    
    // so this works to output what files are currently in this directory
    if(directoryContent != nil)
    {
        for(int i = 0; i < [directoryContent count]; i++)
        {
            NSString *filePath = (NSString*)[directoryContent objectAtIndex:i];
            if(filePath != nil)
            {
                NSLog(@"File#%d=%@a",i,filePath);
            }
        }
    }
    
    // generating strings that have file names 
    NSString *stuff = [path stringByAppendingPathComponent:@"stuff.rtf"];
    NSString *stuff2 = [path stringByAppendingPathComponent:@"stuffandthings.rtf"];
    
    NSLog(@"%@", stuff);
    
    // file checking
    if([[NSFileManager defaultManager] fileExistsAtPath:stuff])
    {
        NSLog(@"This actually exsists");
    }
    else
    {
        NSLog(@"This file doesnt exsist");
    }
    if([[NSFileManager defaultManager] fileExistsAtPath:stuff2])
    {
        NSLog(@"This actually exsists");
    }
    else
    {
        // creates the file if it hasnt already
        [[NSFileManager defaultManager] createFileAtPath:path contents:nil attributes:nil];
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
