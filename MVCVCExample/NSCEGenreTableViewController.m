//
//  NSCEGenreTableViewController.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEGenreTableViewController.h"
#import "NSCEMockMovieService.h"

@interface NSCEGenreTableViewController ()

@end

@implementation NSCEGenreTableViewController {
    NSArray *cachedGenres;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        cachedGenres = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Genres", @"Genres");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(cachedGenres == nil)
        cachedGenres = [[[NSCEMockMovieService sharedNSCEMockMovieService] genres] sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES]]];
    return [[[NSCEMockMovieService sharedNSCEMockMovieService] genres] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"GenreCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    NSCEGenre *genre = cachedGenres[indexPath.row];
    cell.textLabel.text = genre.title;

    int count = [[[NSCEMockMovieService sharedNSCEMockMovieService] moviesForGenre:genre] count];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", count];
    
    return cell;
}

/*
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
}

*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showMovies"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSCEGenre *genre = cachedGenres[indexPath.row];
        [[segue destinationViewController] setGenre:genre];
    }
}

@end
