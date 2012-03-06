//
//  NSCEMovie.h
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSCEModel.h"

@interface NSCEMovie : NSObject

@property (strong, nonatomic) NSString *title;
@property (nonatomic) int year;
@property (strong, nonatomic) NSURL *imdbLink;
@property (strong, nonatomic) NSSet *actors;
@property (strong, nonatomic) NSCEGenre *genre;

+ (NSCEMovie*) movie:(NSString*)title year:(int)year actors:(NSSet*)actors imdb:(NSURL*)link;

@end
