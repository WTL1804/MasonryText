//
//  RegisterViewController.h
//  cocoapodsText
//
//  Created by 王天亮 on 2019/9/14.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController
@property (nonatomic, strong) UITextField *userField;
@property (nonatomic, strong) UITextField *passField;
@property (nonatomic, strong) UIButton *registerBtn;
@property NSObject<passValueDelegate>*delegate;
@end

NS_ASSUME_NONNULL_END
