//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"

@interface TeamViewController ()

@end

@implementation TeamViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]])
    {
        UIButton *button = (UIButton *)sender;
        NSInteger buttonTag = button.tag;
        
        TeamMember *member = self.teamMembers[buttonTag];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}


@end
