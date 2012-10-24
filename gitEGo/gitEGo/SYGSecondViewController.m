//
//  SYGSecondViewController.m
//  gitEGo
//
//  Created by YangBin on 12-10-24.
//  Copyright (c) 2012年 dacaiguoguo. All rights reserved.
//

#import "SYGSecondViewController.h"

@interface SYGSecondViewController ()

@end

@implementation SYGSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
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

@end
