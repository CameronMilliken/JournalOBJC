//
//  CRMEntryDetailViewController.h
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CRMEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface CRMEntryDetailViewController : UIViewController

@property (nonatomic) CRMEntry *entry;

- (void) updateViews;
@end

NS_ASSUME_NONNULL_END
