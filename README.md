

# NavigationControllers


### Goals 

- Learn about segues, and use `-prepareForSegue:sender:` to pass data forward to destination view controllers 
- Use navigation controllers to control a stack of view controllers
 

### Navigation Controllers  

`UINavigationController` provides a means to manage the navigation of hierarchical content.  Often in iOS, we'll have related content that requires the pushing of one view on top of another. The content in the destination view is often derived from the content that was selected in the previous screen. In this Lab, we'll explore using navigation controllers to push content from one view to another.  


### Instructions 

In the project for this lab, add 3 classes:

1. `TeamMember`, an `NSObject`;
2. `TeamViewController`, a `UIViewController`; and
3. `TeamDetailViewController`, another `UIViewController`.

The three classes serve the following functions: 

- `TeamMember` is a model class that represents each member of your team. It should have a name, phone number, city of birth, favorite band, and photo. (*Hint*: use `UIImage` for the photo property. You can use the class method `+imageNamed:` to retrieve assets in your assets catalog.)
- `TeamViewController` manages a view with `UIButton`s for each of your team members.
- `TeamDetailViewController` is pushed onto the navigation stack when a button is pressed in `TeamViewController`. It displays the details for the particular team member that was tapped in the `TeamViewController`.

1. In the storyboard, set the custom class of the view controllers to the new subclasses you just created.
2. `Control`-drag from each button on the `TeamViewController` to the `TeamDetailViewController` and select a "Show" segue. This makes it so that tapping any button performs a segue to the `TeamDetailViewController`.  

    Run the app and see that the buttons do transition to the detail view controller. However, there are two problems. First, the detail is presented modally, and there's no way to get back to the previous screen. Second, the detail view controller has no idea which button was tapped! Let's remedy those issues.


3. In order for the segue to work as expected, you'll need to embed `TeamViewController` in a navigation controller in your storyboard. Do that!
4. Use the `-prepareForSegue:sender:` method of `TeamViewController` to pass the tapped user forward to the detail view controller. Think about the best way to do this. The detail view controller should set all of its labels and image based on the team member that was tapped. Should you expose the `IBOutlets` of the detail view controller publicly, or is there a cleaner way? 


### Hints

- The `-prepareForSegue:sender:` method in your `TeamViewController` is passed a `UIStoryboardSegue` argument which can be used to access the destination view controller of the segue. Since we know the destination is a `TeamDetailViewController`, we can cast it to the appropriate type and set its `teamMember` property to the member that corresponds with the tapped button. How can you figure out what button triggered the segue? (There are multiple options -- segue identifiers or the `sender` argument. Play around with each!)

    
