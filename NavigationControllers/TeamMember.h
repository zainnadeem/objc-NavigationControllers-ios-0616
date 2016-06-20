//
//  TeamMember.h
//  NavigationControllers
//
//  Created by Zain Nadeem on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeamMember : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSString *birthCity;
@property (strong, nonatomic) NSString *birthState;
@property (strong, nonatomic) NSString *favoriteBand;
@property (strong, nonatomic) UIImage *photo;

-(instancetype)init;
-(instancetype)initWithName:(NSString*)name PhoneNumber:(NSString*)phoneNumber BirthCity:(NSString*)birthCity BirthState: (NSString *)birthState FavoriteBand:(NSString*)favoriteBand Photo:(UIImage*)photo;


@end
