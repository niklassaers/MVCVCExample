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

SYNTHESIZE_SINGLETON_FOR_CLASS_ARC(NSCEMockMovieService);

+ (NSCEMovieService*) sharedNSCEMovieService {
    return [NSCEMockMovieService sharedNSCEMockMovieService];
}


- (id) init {
    self = [super init];
    if(self != nil) {

        [self setup];
    }
    return self;
}

- (NSSet*) genres {
    return genres;
}

- (NSSet*) moviesForGenre:(NSCEGenre*) genre {
    return genre.movies;
}

- (NSSet*) actorsForMovie:(NSCEMovie*) movie {
    return movie.actors;
}

- (void) setup {
    genres = [NSMutableSet setWithCapacity:3];
    NSCEGenre *crime = [NSCEGenre genreWithTitle:@"Crime"];
    [genres addObject:crime];
    NSCEGenre *comedy = [NSCEGenre genreWithTitle:@"Comedy"];
    [genres addObject:comedy];
    NSCEGenre *action = [NSCEGenre genreWithTitle:@"Action"];
    [genres addObject:action];
    
    actors = [NSMutableSet setWithCapacity:4];
    NSCEActor *hFord = [NSCEActor actorWithFirstname:@"Harrison" lastname:@"Ford"];
    [actors addObject:hFord];
    NSCEActor *cFisher = [NSCEActor actorWithFirstname:@"Carrie" lastname:@"Fisher"];
    [actors addObject:cFisher];
    NSCEActor *mMyers = [NSCEActor actorWithFirstname:@"Mike" lastname:@"Myers"];
    [actors addObject:mMyers];
    NSCEActor *sConnery = [NSCEActor actorWithFirstname:@"Sean" lastname:@"Connery"];
    [actors addObject:sConnery];
    
    movies = [NSMutableSet setWithCapacity:3];
    NSCEMovie *sw5 = [NSCEMovie movie:@"The Empire Strikes Back" year:1980 actors:[NSSet setWithObjects:hFord, cFisher, nil] imdb:[NSURL URLWithString:@"http://www.imdb.com/title/tt0080684/"]];
    [movies addObject:sw5];
    [action.movies addObject:sw5];
    
    NSCEMovie *austinPowers = [NSCEMovie movie:@"International Man of Mystery" year:1997 actors:[NSSet setWithObjects:cFisher, mMyers, nil] imdb:[NSURL URLWithString:@"http://www.imdb.com/title/tt0118655/"]];
    [movies addObject:austinPowers];
    [comedy.movies addObject:austinPowers];
    [crime.movies addObject:austinPowers];
     
    NSCEMovie *indianaJones = [NSCEMovie movie:@"The Last Crusade" year:1989 actors:[NSSet setWithObjects:hFord, sConnery, nil] imdb:[NSURL URLWithString:@"http://www.imdb.com/title/tt0097576/"]];
    [movies addObject:indianaJones];
    [action.movies addObject:indianaJones];
    [comedy.movies addObject:indianaJones];
}

@end
