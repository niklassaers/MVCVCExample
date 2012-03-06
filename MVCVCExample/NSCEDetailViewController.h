//
//  NSCEDetailViewController.h
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 Thorvalddata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSCEDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
