//
//  NSCEGenre.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEGenre.h"

@implementation NSCEGenre

@synthesize title;
@synthesize movies;

+ (NSCEGenre*) genreWithTitle:(NSString*) title {
    NSCEGenre *genre = [[NSCEGenre alloc] init];
    genre.title = title;
    return genre;
}


@end
