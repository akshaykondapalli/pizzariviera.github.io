//
//  CustomTableViewController.m
//  PizzaRiviera
//
//  Created by akshay kondapalli on 5/08/2014.
//  Copyright (c) 2014 akshay kondapalli. All rights reserved.
//
#import "CustomTableCell.h"
#import "CustomTableViewController.h"
#import "RecipeDetailViewController.h"
#import "Recipe.h"
#import "PastaViewController.h"


@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

{
    NSArray *recipes;
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.tableView setContentInset:UIEdgeInsetsMake(18, self.tableView.contentInset.left, self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
    Recipe *recipe1 =[Recipe new];
    recipe1.name = @"1. Napoli";
    recipe1.prepTime = @"Olives & Anchovies";
    recipe1.image = @"Napoli.jpg";
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"2. Capriciosa";
    recipe2.prepTime = @"Ham,Olives&Mushrooms";
    recipe2.image = @"Capriciosa.jpg";
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"3. Quattro";
    recipe3.prepTime = @"Ham, Chicken,Pepperoni&Mushrooms";
    recipe3.image = @"Quattro.jpg";
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"4. American";
    recipe4.prepTime = @"Pepperoni & Capsicum";
    recipe4.image = @"American.jpg";
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"5. Vegetarian";
    recipe5.prepTime = @"Mushrooms, Onion, Capsicum, Olives & Pineapple";
    recipe5.image = @"Vegetarian.jpg";
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"6. Marinara";
    recipe6.prepTime = @"Prawns & Garlic";
    recipe6.image = @"Marinara.jpg";
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"7. Chicken";
    recipe7.prepTime = @"Chicken & Pineapple";
    recipe7.image = @"Chicken.jpg";
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"8. Aussie";
    recipe8.prepTime = @"Ham, Bacon & Egg";
    recipe8.image = @"Aussie.jpg";
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"9. Mexican";
    recipe9.prepTime = @"Ham, Onion, Capsicum & Chilli";
    recipe9.image = @"Mexican.jpg";
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"10. Riviera Special";
    recipe10.prepTime = @"Ham, Pepperoni, Mushrooms, Onion, Capsicum & Olives";
    recipe10.image = @"Riviera Special.jpg";
    
    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"11. Seafood";
    recipe11.prepTime = @"Prawns, Baby Clams, Garlic & Anchovies";
    recipe11.image = @"Seafood.jpg";
    
    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"12. Extra Special";
    recipe12.prepTime = @"Everything (except Chicken, Egg & Seafood)";
    recipe12.image = @"Extra Special.jpg";
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"13. Chicken Supreme";
    recipe13.prepTime = @"Chicken, Mushrooms, Onion & Capsicum";
    recipe13.image = @"Chicen Supreme.jpg";
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"14. Hawaiian";
    recipe14.prepTime = @"Ham & Pineapple";
    recipe14.image = @"Hawaiian.jpg";
    
    Recipe *recipe15 = [Recipe new];
    recipe15.name = @"15. Italian";
    recipe15.prepTime = @"Pepperoni, Mushrooms, Olives & Anchovies";
    recipe15.image = @"Italian.jpg";
    
    Recipe *recipe16 = [Recipe new];
    recipe16.name = @"16. Bolognaise";
    recipe16.prepTime = @"Beef, Onion & Bolognaise Sauce";
    recipe16.image = @"Bolognaise.jpg";
    
    Recipe *recipe17 = [Recipe new];
    recipe17.name = @"17. Meat Lovers";
    recipe17.prepTime = @"Ham, Pepperoni, Beef & Bacon";
    recipe17.image = @"Meat Lovers.jpg";
    
    Recipe *recipe18 = [Recipe new];
    recipe18.name = @"18.Tropical Tango";
    recipe18.prepTime = @"Ham, Pepperoni,Pineapple & Prawns";
    recipe18.image = @"Tropical Tango.jpg";
    
    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16, nil];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [recipes count];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    
    static NSString *CellIdentifier = @"CustomTableCell";
    CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    if (cell == nil) {
        
        cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Display recipe in the table cell
    
    /* DELETE this section
     
     cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
     
     cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
     
     cell.prepTimeLabel.text = [recipePrepTimes objectAtIndex:indexPath.row];
     
     */
    
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    cell.nameLabel.text = recipe.name;
    cell.thumbnailImageView = [UIImage imageNamed:recipe.image];
    cell.PrepTimeLabel.text = recipe.prepTime;
    
    return cell;
}



-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        RecipeDetailViewController *destViewController = segue.destinationViewController;
        Recipe *recipe = [recipes objectAtIndex:indexPath.row];
        destViewController.recipeName = recipe.name;
        
    }
    
}
@end