//
//  NSCEGenre.h
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSCEGenre : NSObject {
    
}

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSMutableSet *movies;

+ (NSCEGenre*) genreWithTitle:(NSString*) title;

@end
