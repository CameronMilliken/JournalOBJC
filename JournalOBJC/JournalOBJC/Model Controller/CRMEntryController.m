//
//  CRMEntryController.m
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "CRMEntryController.h"
#import "CRMEntryController.h"

@implementation CRMEntryController

+ (CRMEntryController *) shared
{
    static CRMEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[CRMEntryController alloc]init];
    });
    return shared;
}



@end
