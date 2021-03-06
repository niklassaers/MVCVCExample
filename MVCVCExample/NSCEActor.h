//
//  NSCEActor.h
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSCEActor : NSObject

@property (nonatomic, copy) NSString *firstname;
@property (nonatomic, copy) NSString *lastname;
@property (nonatomic, strong) NSMutableSet *movies;

+ actorWithFirstname:(NSString*)firstname lastname:(NSString*) lastname;

@end
