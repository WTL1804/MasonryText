//
//  PassValueDelegate.h
//  cocoapodsText
//
//  Created by 王天亮 on 2019/9/14.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class PassValueDelegate;
@protocol passValueDelegate <NSObject>

- (void)passValue: (PassValueDelegate *)value;

@end
@interface PassValueDelegate : NSObject
@property NSString *userString;
@property NSString *passString;

@end

NS_ASSUME_NONNULL_END
