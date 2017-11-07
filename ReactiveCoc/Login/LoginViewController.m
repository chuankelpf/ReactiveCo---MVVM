//
//  LoginViewController.m
//  ReactiveCoc
//
//  Created by 南京单聊李 on 2017/10/26.
//  Copyright © 2017年 南京单聊李. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneTf;
@property (weak, nonatomic) IBOutlet UITextField *passWordTf;
@property (weak, nonatomic) IBOutlet UIButton *loginBt;
@property (weak, nonatomic) IBOutlet UIImageView *imv;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登陆";
    RACSignal *sinal =[self.phoneTf.rac_textSignal map:^id(id value) {
        if (self.phoneTf.text.length == 11) {
            return @(YES);
            
        }
        return @(NO);
    }];
    RAC(self.loginBt,backgroundColor) = [sinal map:^id(NSNumber * value) {
        if ([value integerValue] == 1) {
            return [UIColor redColor];
        }else{
            return [UIColor   lightGrayColor];
        }
    }];
    
   
}
- (IBAction)loginAction:(UIButton *)sender {
    self.imv.image = [UIImage imageNamed:@"family_tanchuan"];
//    AppDelegate *dele =(AppDelegate *) [UIApplication sharedApplication].delegate;
//    [dele login];
}

@end
