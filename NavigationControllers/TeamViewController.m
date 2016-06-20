//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Zain Nadeem on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamDetailViewController.h"
#import "TeamMember.h"


@interface TeamViewController ()
@property (weak, nonatomic) IBOutlet UIButton *topLeftButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *topRightButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *bottomLeftButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *buttomRightButtonTapped;

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    TeamDetailViewController *detailViewController = (TeamDetailViewController *)segue.destinationViewController;
  
   
    if([segue.identifier isEqual:@"alSegue"]){
        
        detailViewController.teamMember = [[TeamMember alloc]initWithName:@"Al" PhoneNumber:@"5551212" BirthCity:@"Detroit" BirthState:@"Michigan" FavoriteBand:@"The Beatles" Photo: [UIImage imageNamed:@"al.jpg"]];
    
    }else if([segue.identifier isEqual:@"joeSegue"]){
        
        detailViewController.teamMember = [[TeamMember alloc]initWithName:@"joe" PhoneNumber:@"9991212" BirthCity:@"NY" BirthState:@"NY" FavoriteBand:@"The Beatles" Photo: [UIImage imageNamed:@"joe.jpg"]];
    
    }else if([segue.identifier isEqualToString:@"chrisSegue"]){
        
        detailViewController.teamMember = [[TeamMember alloc]initWithName:@"chris" PhoneNumber:@"0001212" BirthCity:@"NJ" BirthState:@"NY" FavoriteBand:@"The Beatles" Photo: [UIImage imageNamed:@"chris.jpg"]];
    
    }else if([segue.identifier isEqual:@"aviSegue"]){
        
        detailViewController.teamMember = [[TeamMember alloc]initWithName:@"avi" PhoneNumber:@"0001212" BirthCity:@"NJ" BirthState:@"NY" FavoriteBand:@"The Beatles" Photo: [UIImage imageNamed:@"avi.jpg"]];
    }
        
    
    
        
    
    

    }

@end


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

 // Get the new view controller using [segue destinationViewController].
    //Pass the selected object to the new view controller.
}
*/

