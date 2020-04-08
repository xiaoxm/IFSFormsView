//
//  IFSFormsView.m
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import "IFSFormsView.h"
#import <Masonry/Masonry.h>
#import "IFSFormsViewGroup.h"
#import "IFSFormsViewItem.h"

@implementation IFSFormsView

- (void)setData:(IFSFormsViewData *)data
{
    _data = data;

    UIView *contentView = [self contentViewWithSuperView:self];
    
    IFSFormsViewGroup *group;
    for (IFSFormsViewGroupData *groupData in data.groupData) {
        
        //创建group view
        group = [IFSFormsViewGroup groupWithSuperView:contentView PreView:group];
        [self.groups addObject:group];

        IFSFormsViewItem *item;
        for (IFSFormsViewItemData *itemData in groupData.itemData) {
            
            //创建item view
            item = [IFSFormsViewItem itemWithSuperView:group PreView:item ItemData:itemData];
            [group.items addObject:item];
        }
        
        //约束添加完整
        [item mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(item.superview);
        }];
    }
    
    //约束添加完整
    [group mas_makeConstraints:^(MASConstraintMaker *make) {
         make.bottom.equalTo(group.superview);
    }];
    
}

- (UIView *)contentViewWithSuperView:(UIView *)superView
{
    UIScrollView *scrollView = [UIScrollView new];
    [superView addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView.superview);
    }];
    UIView *contentView = [UIView new];
    [scrollView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.width.equalTo(contentView.superview);
    }];
    
    return contentView;
}

- (NSMutableArray<IFSFormsViewGroup *> *)groups
{
    if(!_groups){
        _groups = [NSMutableArray array];
    }
    return _groups;
}

@end
