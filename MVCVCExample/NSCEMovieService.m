//
//  NSCEMovieService.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEMovieService.h"

@implementation NSCEMovieService

SYNTHESIZE_SINGLETON_FOR_CLASS_ARC(NSCEMovieService)

- (NSSet*) genres {
    NSLog(@"%s: Whoops, forgot to implement this function", __PRETTY_FUNCTION__);
    return nil;
}

- (NSSet*) moviesForGenre:(NSCEGenre*) genre {
    NSLog(@"%s: Whoops, forgot to implement this function", __PRETTY_FUNCTION__);
    return nil;
}

- (NSSet*) actorsForMovie:(NSCEMovie*) movie {
    NSLog(@"%s: Whoops, forgot to implement this function", __PRETTY_FUNCTION__);
    return nil;
}


@end
