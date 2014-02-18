//
//  TeamMember.h
//  NavigationControllers
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeamMember : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSString *birthCity;
@property (strong, nonatomic) NSString *birthState;
@property (strong, nonatomic) NSString *favoriteBand;
@property (strong, nonatomic) UIImage *image;

- (id)init; 
- (instancetype)initWithName:(NSString *)name
                 phoneNumber:(NSString *)phoneNumber
                   birthCity:(NSString *)birthCity
                  birthState:(NSString *)birthState
                favoriteBand:(NSString *)favoriteBand
                       image:(UIImage *)image;
@end
