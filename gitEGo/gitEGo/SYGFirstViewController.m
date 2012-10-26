//
//  SYGFirstViewController.m
//  gitEGo
//
//  Created by YangBin on 12-10-24.
//  Copyright (c) 2012年 dacaiguoguo. All rights reserved.
//

#import "SYGFirstViewController.h"

@interface SYGFirstViewController ()

@end

@implementation SYGFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
/*
-(IBAction) showDebugInfo:(id) sender{
	NSAutoreleasePool* pool=[[NSAutoreleasePool alloc] init];
	NSString* str=@"";
#ifdef DEBUG
	str=@"build is debug\n";
#else
	str=@"build is release\n";
#endif
    VANCLAppDelegate* appdelegate=(VANCLAppDelegate*) [[UIApplication sharedApplication] delegate];
	NSString* apnstoken=[appdelegate apnsDeviceToken];
    NSString* svninfofile=[[NSBundle mainBundle] pathForResource:@"svninfo" ofType:@"txt"];
    NSString* svninfo=[NSString stringWithContentsOfFile:svninfofile encoding:NSUTF8StringEncoding error:NULL];
	NSString* debugInfo=[NSString stringWithFormat:@"%@sourceid=%@\nudid=%@\n apnstoken=%@ \n\n\n svninfo=%@\n\n\n\n",str,sourceId(),[[UIDevice currentDevice] uniqueDeviceIdentifier], apnstoken,svninfo];
	
	self.debugInfoText.hidden=NO;
	self.debugInfoText.text=debugInfo;
	[pool release];
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *str = @"";
#ifdef DEBUG
	str=@"build is debug\n";
#else
	str=@"build is release\n";
#endif
    NSString* gitfile=[[NSBundle mainBundle] pathForResource:@"git" ofType:@"txt"];
    NSString* gitinfo=[NSString stringWithContentsOfFile:gitfile encoding:NSUTF8StringEncoding error:NULL];
    NSMutableString *suGitInfo = [NSMutableString string];
    NSRange dateRange = [gitinfo rangeOfString:@"Date:"];
    if (dateRange.location!=NSNotFound) {
        suGitInfo = [[gitinfo substringToIndex:dateRange.location+36] mutableCopy];
    }
    NSString *debugInfo = [NSString stringWithFormat:@"%@%@",str,suGitInfo];
    self.lbFirstTextView.text = debugInfo;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_lbFirstTextView release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setLbFirstTextView:nil];
    [super viewDidUnload];
}
@end
