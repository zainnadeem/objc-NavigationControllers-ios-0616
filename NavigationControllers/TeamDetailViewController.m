//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityStateLabel;
@property (weak, nonatomic) IBOutlet UILabel *bandLabel;
@property (weak, nonatomic) IBOutlet UIImageView *teamMemberImageView;

@end

@implementation TeamDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.accessibilityLabel = @"TeamDetailViewController";

    
    self.teamMemberImageView.image = self.teamMember.image;
    self.nameLabel.text = self.teamMember.name;
    self.phoneNumberLabel.text = self.teamMember.phoneNumber;
    self.cityStateLabel.text = [NSString stringWithFormat:@"%@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    self.bandLabel.text = self.teamMember.favoriteBand; 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
