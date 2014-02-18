---
  tags: tutorial, intermediate, OOP, Object-Oriented Programming, Navigation 
  languages: objc
---

NavigationControllers
=========

### Goals 

- Learn about segues and destination view controllers 
- Use Navigation Controllers to control View Controller interactions 
 

### Navigation Controllers  

UINavigation Controller provides a method to manage the navigation of hierarchical content.  Often in iOS, we'll have related content that requires the pushing of one view on top of another.  The content in the destination view is often derived from the content that was selected in the master screen.  In this Lab, we'll explore using Navigation controllers to push content from one view to another.  


### Instructions 

The demo app attached has 3 classes you'll be interested in.  `TeamMember, TeamViewController, and TeamDetailViewController`.  The three classes serve the following functions: 

- TeamMember: TeamMember is a model class that represents each member of your team.  
- TeamViewController: TeamViewController lays out a UIButton with a background image for each of your team members.
- TeamDetailViewController: TeamDetailViewController displays the details for the given team member that is tapped on

1. In TeamViewController create an NSArray Property `teamMembers`.  Populate that array with TeamMembers (instantiate a TeamMember instance for each member of your team and add them to the teamMembers array).  
2. Switch over to your storyboard. For now, we'll use the tag property to keep track of each Button.  In your storyboard take note of which tag is assigned to which image view. 
3. cntrl + drag from each button to the TeamDetailViewController (clicking any button should perform a segue to the TeamDetailViewController).   
5. The action for tapping a button should perform a segue to the detail view controller.  The segue (in performSegueWithIdentifier:) should instantiate the destination view controller (TeamDetailViewController), and set it's teamMember property to the corresponding teamMember that was selected. You can find this by using code similar to the following: 

```objc

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	//in prepare for segue you'll create a new destination view controller and set it's teamMember property to self.destinationMember.  

	if ([sender isKindOfClass:[UIButton class]])
    {
        UIButton *button = (UIButton *)sender;
        NSInteger buttonTag = button.tag;
        
        self.destinationMember = self.teamMembers[buttonTag]; //This is a property that you can access from your prepareForSegue method 

        [self.navigationController performSegueWithIdentifier:@"MemberDetail"]; //Make sure to set the Segue Identifier in the Storyboard 
    }
}

```

6. In order for perform segue to work, you'll need to embed TeamViewController in a navigation controller in your storyboard. Do that! 
7. Add a bar button item to the navigation bar in your TeamViewController.  
8. Make the action of tapping your BarButtonItem perform a modal segue that presents a view controller (all of this can be done in the storyboard).  
9. The presented view controller will need it's own UIViewController subclass with a single action, that dismisses the presented view controller.  An elegant way to do this is to place the following code in the action method that connects to the done button.   

```objc

- (IBAction)donePressed:(id)sender 
{

	[self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

```  
10. On your presented view controller, add labels for each of your team members and a few fun facts about them.  Make sure that this view controller has a done button so that it can be dismissed.  


### Hints

- The prepareForSegue Method in your TeamViewController should instantiate a new TeamDetailViewController.  After initialization, you'll set the teamDVC's teamMember property equal to the member that corresponds with the tapped UIImageView.  You can get the tag of the selected imageView in the method you 
    
