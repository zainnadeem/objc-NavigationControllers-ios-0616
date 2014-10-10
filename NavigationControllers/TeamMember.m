//
//  TeamMember.m
//  NavigationControllers
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember

- (id)init
{
    return [self initWithName:@""
                  phoneNumber:@""
                    birthCity:@""
                   birthState:@""
                 favoriteBand:@""
                        image:[UIImage new]];
}

- (instancetype)initWithName:(NSString *)name
                 phoneNumber:(NSString *)phoneNumber
                   birthCity:(NSString *)birthCity
                  birthState:(NSString *)birthState
                favoriteBand:(NSString *)favoriteBand
                       image:(UIImage *)image
{
    self = [super init];
    if (self)
    {
        _name = name;
        _phoneNumber = phoneNumber;
        _birthCity = birthCity;
        _birthState = birthState;
        _favoriteBand = favoriteBand;
        _image = image;
    }
    return self;
}


@end
