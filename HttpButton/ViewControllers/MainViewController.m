//
//  MainViewController.m
//  HttpButton
//
//  Created by Ryan Luce on 6/28/11.
//  Copyright 2011 Ryan Luce. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"MainViewController initialized");
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle






// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    UIWebView *webView = [[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)] autorelease];
    NSString *myHTML = @"<html><body>text text <a href='httpbutton://1234'>Click here to do something</a> text text</body></html>";
    
    [webView loadHTMLString:myHTML baseURL:nil];
    [self.view addSubview:webView];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
