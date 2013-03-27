//
//  ViewController.m
//  TwoTabs
//
//  Created by David Casseres on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

typedef enum
{
    kFiles,
    kLinks
}StateType;

@interface ViewController ()

@property(nonatomic, assign)StateType currentState;

@end

@implementation ViewController

@synthesize fileButton = _fileButton;
@synthesize linkButton = _linkButton;
@synthesize currentState = _currentState;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _currentState = kFiles;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Button actions

- (IBAction)fileButtonTouched:(id)sender
{
    if (_currentState != kFiles)
    {
        _currentState = kFiles;
        [_fileButton setImage:[UIImage imageNamed:@"file_filter-button_SELECTED"] forState:UIControlStateNormal];
        [_linkButton setImage:[UIImage imageNamed:@"link_filter-button_NORMAL"] forState:UIControlStateNormal];
    }
}

- (IBAction)linkButtonTouched:(id)sender
{
    if (_currentState != kLinks)
    {
        _currentState = kLinks;
        [_fileButton setImage:[UIImage imageNamed:@"file_filter-button_NORMAL"] forState:UIControlStateNormal];
        [_linkButton setImage:[UIImage imageNamed:@"link_filter-button_SELECTED"] forState:UIControlStateNormal];
    }
}

@end
