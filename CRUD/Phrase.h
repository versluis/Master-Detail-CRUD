//
//  Phrase.h
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Phrase : NSManagedObject

@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSString * voice;
@property (nonatomic, retain) NSNumber * pitch;
@property (nonatomic, retain) NSNumber * rate;
@property (nonatomic, retain) NSNumber * position;

@end
