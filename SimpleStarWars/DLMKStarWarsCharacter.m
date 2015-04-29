//
//  DLMKStarWarsCharacter.m
//  SimpleStarWars
//
//  Created by Daniel on 29/04/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import "DLMKStarWarsCharacter.h"

@implementation DLMKStarWarsCharacter

-(id) initWith:(NSString *)name andPhoto:(UIImage *)photo{
    
    if (self = [super init]){
        _name = name;
        _photo = photo;
    }
    return self;
}

-(NSString*) description{
    return [NSString stringWithFormat:@"My name is %@", self.name];
}

@end
