//
//  ViewController.m
//  cocoapodsText
//
//  Created by 王天亮 on 2019/9/13.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "RegisterViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
    self.userField = [[UITextField alloc] init];
    [self.view addSubview:self.userField];
    [self.userField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(300);
        make.left.equalTo(self.view).offset(100);
        make.right.equalTo(self.view).offset(-100);
        make.height.equalTo(@60);
    }];
    self.userField.layer.cornerRadius = 10;
    self.userField.layer.borderWidth = 1;
    self.userField.layer.borderColor = [UIColor grayColor].CGColor;
    self.userField.placeholder = @"请输入账号";
    
    
    
    self.passField = [[UITextField alloc] init];
    [self.view addSubview:self.passField];
    [self.passField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.userField.mas_bottom).offset(30);
        make.left.equalTo(self.view).offset(100);
        make.right.equalTo(self.view).offset(-100);
        make.height.equalTo(@60);
    }];
    self.passField.layer.cornerRadius = 10;
    self.passField.layer.borderWidth = 1;
    self.passField.layer.borderColor = [UIColor grayColor].CGColor;
    self.passField.placeholder = @"请输入账号";
    
    self.registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.registerBtn];
    [self.registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.passField.mas_bottom).offset(30);
        make.left.equalTo(self.view).offset(100);
        make.right.equalTo(self.view).offset(-200);
        make.height.equalTo(@60);
    }];
    [self.registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [self.registerBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.registerBtn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.userField resignFirstResponder];
    [self.passField resignFirstResponder];
}
- (void)pressBtn {
    RegisterViewController *registerViewController = [[RegisterViewController alloc] init];
    registerViewController.delegate = self;
    [self.navigationController pushViewController:registerViewController animated:YES];
}
- (void)passValue:(PassValueDelegate *)value{
    self.userField.text = value.userString;
    self.passField.text = value.passString;
    [self.view reloadInputViews];
}

@end
