//
//  ViewController.m
//  JHBIMSDKDemo
//
//  Created by davis on 2022/3/25.
//

#import "ViewController.h"
#import "JHBIMSDK/TUIGroupChatViewController.h"
 
#import "Config.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    TUIChatConversationModel *model = [[TUIChatConversationModel alloc]init];
    model.userID = UserID;
    model.groupID = GroupID;
    model.groupType = GroupType;
    TUIGroupChatViewController *controller = [[TUIGroupChatViewController alloc]init];
    [controller setConversationData:model];
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
}


@end
