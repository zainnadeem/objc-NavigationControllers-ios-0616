//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()


@end

@implementation TeamViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.accessibilityLabel = @"TeamViewController";
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TeamDetailViewController *teamDVC = (TeamDetailViewController *)segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"alSegue"])
    {
        teamDVC.teamMember = [[TeamMember alloc] initWithName:@"Al"
                                                  phoneNumber:@"5551212"
                                                    birthCity:@"Detroit"
                                                   birthState:@"Michigan"
                                                 favoriteBand:@"The Beatles"
                                                        image:[UIImage imageNamed:@"al.jpg"]];
    }
    else if ([segue.identifier isEqualToString:@"aviSegue"])
    {
        teamDVC.teamMember = [[TeamMember alloc] initWithName:@"Avi"
                                                  phoneNumber:@"5554141"
                                                    birthCity:@"New York"
                                                   birthState:@"New York"
                                                 favoriteBand:@"Blink 182"
                                                        image:[UIImage imageNamed:@"avi.jpg"]];
    }
    else if ([segue.identifier isEqualToString:@"joeSegue"])
    {
        teamDVC.teamMember = [[TeamMember alloc] initWithName:@"Joe"
                                                  phoneNumber:@"5556687"
                                                    birthCity:@"Washington"
                                                   birthState:@"District of Columbia"
                                                 favoriteBand:@"The Goo Goo Dolls"
                                                        image:[UIImage imageNamed:@"joe.jpg"]];
    }
    else if ([segue.identifier isEqualToString:@"chrisSegue"])
    {
        teamDVC.teamMember = [[TeamMember alloc] initWithName:@"Chris"
                                                  phoneNumber:@"5556788"
                                                    birthCity:@"San Diego"
                                                   birthState:@"California"
                                                 favoriteBand:@"Jackson 5"
                                                        image:[UIImage imageNamed:@"chris.jpg"]];
    }
}


@end
