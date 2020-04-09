//
//  IFSViewController.m
//  IFSFormsView
//
//  Created by 786696937@qq.com on 04/08/2020.
//  Copyright (c) 2020 786696937@qq.com. All rights reserved.
//

#import "IFSViewController.h"
#import <IFSFormsView/IFSFormsView.h>
#import <Masonry/Masonry.h>



@interface IFSViewController ()

@property (nonatomic, weak) UIImageView *avatar;
@property (nonatomic, weak) UITextField *inputTextField;

@end

@implementation IFSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIImageView *imageView = [UIImageView new];
    imageView.backgroundColor = [UIColor blueColor];
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = 25;
    self.avatar = imageView;
    
    UITextField *textField = [UITextField new];
    textField.placeholder = @"请输入姓名";
    self.inputTextField = textField;
    
    
    IFSFormsView *forms = [IFSFormsView new];
        
    
    forms.data = IFSFormsView_Data(
    IFSFormsView_GroupData(IFSFormsView_ItemData.LeftTitle(@"头像").SecondView(imageView).LineHeight(80).Next,
                           IFSFormsView_ItemData.LeftTitle(@"姓名").SecondView(textField),
                           IFSFormsView_ItemData.LeftTitle(@"帐户手机号").RightTitle(@"+86 18888888888")),
                                   
    IFSFormsView_GroupData(IFSFormsView_ItemData.LeftTitle(@"登录密码").RightTitle(@"已设置").Next.Target(self).Selector(@selector(onPassword)),
                           IFSFormsView_ItemData.LeftTitle(@"帐户手机号").RightTitle(@"+86 18888888888")),
 
    IFSFormsView_GroupData(IFSFormsView_ItemData.LeftTitle(@"登录密码").RightTitle(@"已设置").Next,
                           IFSFormsView_ItemData.LeftTitle(@"帐户手机号").RightTitle(@"+86 18888888888")),
    );

    [self.view addSubview:forms];
    [forms mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(forms.superview);
    }];

    IFSFormsViewItem *item = (IFSFormsViewItem *)self.avatar.superview;
    [self.avatar mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.height.offset(50);
        make.centerY.equalTo(item);
        make.left.equalTo(item.leftView.mas_right).offset(10);
    }];
    

}


- (void)onPassword
{
    NSLog(@"onPassword");
}

@end
