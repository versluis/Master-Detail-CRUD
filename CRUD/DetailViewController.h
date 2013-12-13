//
//  DetailViewController.h
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
