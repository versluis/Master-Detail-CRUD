//
//  MasterViewController.h
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AddPhraseViewController.h"
#import "DetailViewController.h"

@class DetailViewController;


@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate, AddPhraseViewControllerDelegate, DetailViewDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
