//
//  NSCEMockMovieService.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEMockMovieService.h"

@implementation NSCEMockMovieService {
    NSMutableSet *genres;
    NSMutableSet *actors;
    NSMutableSet *movies;
}

- (id) init {
    self = [super init];
    if(self != nil) {

        [self setup];
    }
    return self;
}

- (NSSet*) genres {
    return [NSSet setWithObjects:
            [NSCEGenre genreWithTitle:@""],
            [NSCEGenre genreWithTitle:@""],
            [NSCEGenre genreWithTitle:@""],
            [NSCEGenre genreWithTitle:@""],
            nil];
}

- (NSSet*) moviesForGenre:(NSCEGenre*) genre {
    NSLog(@"%@: Whoops, forgot to implement this function", __PRETTY_FUNCTION__);
    return nil;
}

- (NSSet*) actorsForMovie:(NSCEMovie*) movie {
    NSLog(@"%@: Whoops, forgot to implement this function", __PRETTY_FUNCTION__);
    return nil;
}

- (void) setup {
    
}

@end
