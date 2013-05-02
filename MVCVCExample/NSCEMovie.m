//
//  NSCEMovie.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEMovie.h"

@implementation NSCEMovie

+ (NSCEMovie*) movie:(NSString*)title year:(int)year actors:(NSSet*)actors imdb:(NSURL*)link {
    NSCEMovie *movie = [[NSCEMovie alloc] init];
    movie.title = title;
    movie.year = year;
    movie.actors = actors;
    movie.imdbLink = link;
    return movie;
}

@end
