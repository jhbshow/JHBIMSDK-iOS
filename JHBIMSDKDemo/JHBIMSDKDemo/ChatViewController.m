//
//  ChatViewController.m
//  JHBIMSDKDemo
//
//  Created by davis on 2022/3/25.
//

#import "ChatViewController.h"
#import "Config.h"
#import "JHBIMSDK/TUIGroupChatViewController.h"
//#import <TUIChat/TUIGroupChatViewController.h>
@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TUIChatConversationModel *model = [[TUIChatConversationModel alloc]init];
//    model.userID = UserID;
    model.groupID = GroupID;
    model.groupType = GroupType;
    
   
    TUIGroupChatViewController *controller = [[TUIGroupChatViewController alloc]init];
    [controller setConversationData:model];
 
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
