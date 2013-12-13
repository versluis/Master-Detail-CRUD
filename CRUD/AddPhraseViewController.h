//
//  AddPhraseViewController.h
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Phrase.h"

@protocol AddPhraseViewControllerDelegate;
@interface AddPhraseViewController : UIViewController

@property (nonatomic, weak) id delegate;
@property (nonatomic, strong) Phrase *detailPhrase;

@end


@protocol AddPhraseViewControllerDelegate

// delegate methods go here
- (void)addPhraseViewControllerCancel:(Phrase *)thisPhrase;
- (void)addPhraseViewControllerSave;

@end
