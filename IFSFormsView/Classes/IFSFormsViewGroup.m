//
//  IFSFormsViewItemContainer.m
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import "IFSFormsViewGroup.h"
#import <Masonry/Masonry.h>

@implementation IFSFormsViewGroup


+ (IFSFormsViewGroup *)groupWithSuperView:(UIView *)superView PreView:(UIView *)preView
{
    IFSFormsViewGroup *itemContainer = [IFSFormsViewGroup new];
    itemContainer.clipsToBounds = YES;
    itemContainer.layer.cornerRadius = 5;
    itemContainer.backgroundColor = [UIColor whiteColor];
    [superView addSubview:itemContainer];
    [itemContainer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(10);
        make.right.offset(-10);
        if(preView){
            make.top.equalTo(preView.mas_bottom).offset(10);
        }else{
            make.top.offset(10);
        }
    }];
    return itemContainer;
}

- (NSMutableArray<IFSFormsViewItem *> *)items
{
    if(!_items){
        _items = [NSMutableArray array];
    }
    return _items;
}


@end
