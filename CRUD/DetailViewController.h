//
//  DetailViewController.h
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Phrase.h"

@protocol DetailViewDelegate;
@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) Phrase *detailPhrase;
@property (weak, nonatomic) id <DetailViewDelegate> delegate;

@end


@protocol DetailViewDelegate

- (void)detailViewDidSave:(Phrase *)thisPhrase;

@end
