//
//  Phrase.m
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import "Phrase.h"


@implementation Phrase

@dynamic text;
@dynamic voice;
@dynamic pitch;
@dynamic rate;

- (void)awakefrom {
    
    [super awakeFromFetch];
    // add custom behaviour here
}

@end
