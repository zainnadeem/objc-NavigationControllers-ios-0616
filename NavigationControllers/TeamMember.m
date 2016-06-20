//
//  TeamMember.m
//  NavigationControllers
//
//  Created by Zain Nadeem on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember

-(instancetype)init{
    self = [self initWithName:@"" PhoneNumber:@"" BirthCity:@"" BirthState:@"" FavoriteBand:@"" Photo:[UIImage new]];
    return self;
}

-(instancetype)initWithName:(NSString*)name PhoneNumber:(NSString*)phoneNumber BirthCity:(NSString*)birthCity BirthState: (NSString *)birthState FavoriteBand:(NSString*)favoriteBand Photo:(UIImage*)photo{
    
    self = [super init];
    
    if (self){
        _name=name;
        _phoneNumber=phoneNumber;
        _birthCity=birthCity;
        _birthState=birthState;
        _favoriteBand=favoriteBand;
        _photo=photo;
        
    }
    return self;
}
@end
