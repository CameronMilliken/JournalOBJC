//
//  CRMEntry.m
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "CRMEntry.h"

@implementation CRMEntry

-(instancetype)initWithTitle:(NSString *)title
                    bodyText:(NSString *)bodyText
                   timestamp:(NSDate *)timestamp;
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = timestamp;
    }
    return self;
}

@end
