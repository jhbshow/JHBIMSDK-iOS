//
//  ViewController.m
//  JHBIMSDKDemo
//
//  Created by davis on 2022/3/25.
//

#import "ViewController.h"

#import "TUILogin.h"
#import "Config.h"
#import "ChatViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [TUILogin login:UserID userSig:UserSig succ:^{
        ChatViewController *chat = [[ChatViewController alloc]init];
        [self addChildViewController:chat];
        [self.view addSubview:chat.view];
    } fail:^(int code, NSString *msg) {
        UIAlertController *alert = [[UIAlertController alloc]init];
        alert.title = @"登录失败";
        [self presentViewController:alert animated:true completion:nil];
        NSLog(@"登录失败");
    }];  
}


 


@end
