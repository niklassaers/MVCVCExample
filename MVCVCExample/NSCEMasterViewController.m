//
//  NSCEMasterViewController.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEMasterViewController.h"
#import "NSCEDetailViewController.h"
#import "NSCEMockMovieService.h"

@interface NSCEMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation NSCEMasterViewController {
    NSArray *cachedMovies;
}

@synthesize genre;

- (void)awakeFromNib
{
    [super awakeFromNib];
    cachedMovies = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(cachedMovies == nil)
        cachedMovies = [[[NSCEMockMovieService sharedNSCEMockMovieService] moviesForGenre:self.genre] sortedArrayUsingDescriptors:[NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES]]];
    return [cachedMovies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell"];

    NSCEMovie *movie = [cachedMovies objectAtIndex:indexPath.row];
    cell.textLabel.text = [movie title];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", movie.year];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSCEMovie *movie = [cachedMovies objectAtIndex:indexPath.row];
        [[segue destinationViewController] setMovie:movie];
    }
}

@end
