//
//  CRMEntry.h
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CRMEntry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *bodyText;
@property (nonatomic, strong) NSDate *timestamp;

-(instancetype)initWithTitle:(NSString *)title
                    bodyText:(NSString *)bodyText
                   timestamp:(NSDate *)timestamp;


@end

NS_ASSUME_NONNULL_END
