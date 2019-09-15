//
//  ViewController.h
//  cocoapodsText
//
//  Created by 王天亮 on 2019/9/13.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"
@interface ViewController : UIViewController <passValueDelegate>
@property (nonatomic, strong) UITextField *userField;
@property (nonatomic, strong) UITextField *passField;
@property (nonatomic, strong) UIButton *registerBtn;
@end

