//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Zain Nadeem on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"
#import "TeamMember.h"
#import "TeamViewController.h"
@interface TeamDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityStateLabel;
@property (weak, nonatomic) IBOutlet UILabel *bandLabel;
@property (weak, nonatomic) IBOutlet UIImageView *teamMemberImageView;



@end



@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.accessibilityLabel = @"TeamDetailViewController";
    
    
    self.nameLabel.text = self.teamMember.name;
    self.phoneNumberLabel.text = self.teamMember.phoneNumber;
    self.cityStateLabel.text = [NSString stringWithFormat:@"%@,%@", self.teamMember.birthCity,self.teamMember.birthState];
    self.bandLabel.text = self.teamMember.favoriteBand;
    self.teamMemberImageView.image = self.teamMember.photo;
    
    
    
    
    
    
    
//    self.pictureDisplay.image = _teamMember.photo;
    
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
