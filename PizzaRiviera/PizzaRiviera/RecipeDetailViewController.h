//
//  RecipeDetailViewController.h
//  PizzaRiviera
//
//  Created by akshay kondapalli on 27/08/2014.
//  Copyright (c) 2014 akshay kondapalli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;

@end