//
//  CRMEntryController.h
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CRMEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface CRMEntryController : NSObject
    //Source of truth
@property (nonatomic, readonly) NSMutableArray *entries;
- (void)addEntry: (CRMEntry *)entry;
- (void)removeEntry: (CRMEntry *)entry;
- (void)modifyEntry: (CRMEntry *)entry
          withTitle:(NSString *)title
               body:(NSString *)body;



@end

NS_ASSUME_NONNULL_END
