//
//  CRMEntryController.m
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "CRMEntryController.h"


@implementation CRMEntryController

+ (CRMEntryController *)shared
{

static CRMEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [CRMEntryController new];
    });
    return shared;
}
//CRUD Functions

//ADD
- (void)addEntry:(CRMEntry *)entry
{
    [self.entries addObject:entry];
}

//Delete
- (void)removeEntry:(CRMEntry *)entry
{
    [self.entries removeObject:entry];
}

//Update
- (void)modifyEntry:(CRMEntry *)entry withTitle:(NSString *)title body:(NSString *)body
{
    title = [entry title];
    body = [entry bodyText];
}



@end
