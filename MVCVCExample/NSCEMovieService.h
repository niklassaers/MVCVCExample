//
//  NSCEMovieService.h
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSCEModel.h"

@interface NSCEMovieService : NSObject {
    
}

+ (NSCEMovieService*) sharedNSCEMovieService;

- (NSSet*) genres;
- (NSSet*) moviesForGenre:(NSCEGenre*) genre;
- (NSSet*) actorsForMovie:(NSCEMovie*) movie;



@end
