//
//  DLMKStarWarsCharacter.h
//  SimpleStarWars
//
//  Created by Daniel on 29/04/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface DLMKStarWarsCharacter : NSObject

@property (copy, nonatomic) NSString* name;
@property (strong, nonatomic) UIImage* photo;

-(id) initWith:(NSString*)name andPhoto:(UIImage*)photo;


@end
