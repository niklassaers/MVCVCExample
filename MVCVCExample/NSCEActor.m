//
//  NSCEActor.m
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import "NSCEActor.h"

@implementation NSCEActor

@synthesize firstname;
@synthesize lastname;
@synthesize movies;

+ actorWithFirstname:(NSString*)firstname lastname:(NSString*) lastname {
    NSCEActor *actor = [[NSCEActor alloc] init];
    actor.firstname = firstname;
    actor.lastname = lastname;
    return actor;
}

@end
