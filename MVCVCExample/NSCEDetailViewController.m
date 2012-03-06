//
//  NSCEDetailViewController.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEDetailViewController.h"

@interface NSCEDetailViewController ()
- (void)configureView;
@end

@implementation NSCEDetailViewController

@synthesize movie = _movie;

#pragma mark - Managing the detail item

- (void)setMovie:(id)newMovie
{
    if (_movie != newMovie) {
        _movie = newMovie;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.movie) {
        [webview loadRequest:[NSURLRequest requestWithURL:self.movie.imdbLink]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    webview = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
