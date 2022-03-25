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
        
    } fail:^(int code, NSString *msg) {
        UIAlertController *alert = [[UIAlertController alloc]init];
        alert.title = @"登录失败";
        [self presentViewController:alert animated:true completion:nil];
        NSLog(@"登录失败");
    }];
    
    
    UIButton *btn = [UIButton new];
    [btn setTitle:@"进入群聊" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor greenColor]];
    [btn addTarget:self action:@selector(clickEnter) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 300, 200, 60);
    [self.view addSubview:btn];
    
    
 
   
}


- (void)clickEnter{
    ChatViewController *chat = [[ChatViewController alloc]init];
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:chat];
    [self presentViewController:navi animated:true completion:nil];

}


@end
