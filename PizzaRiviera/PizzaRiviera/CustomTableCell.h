//
//  CustomTableCell.h
//  PizzaRiviera
//
//  Created by akshay kondapalli on 6/08/2014.
//  Copyright (c) 2014 akshay kondapalli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
@property (nonatomic,weak) IBOutlet UILabel *nameLabel;
@property (nonatomic,weak) IBOutlet UILabel *PrepTimeLabel;
@property (nonatomic,weak) IBOutlet UILabel *thumbnailImageView;
@end