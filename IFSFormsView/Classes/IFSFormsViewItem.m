//
//  IFSFormsViewItem.m
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import "IFSFormsViewItem.h"
#import "IFSFormsViewItemData.h"
#import <Masonry/Masonry.h>

@implementation IFSFormsViewItem

+ (IFSFormsViewItem *)itemWithSuperView:(UIView *)superView PreView:(UIView *)preView ItemData:(IFSFormsViewItemData *)itemData
{
    IFSFormsViewItem *item = [IFSFormsViewItem new];
    [superView addSubview:item];
    [item mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.offset(0);
        if(preView){
            make.top.equalTo(preView.mas_bottom);
        }else{
            make.top.offset(0);
        }
        make.height.offset(itemData.lineHeight ?: 50);
    }];
    
    
    if(itemData.leftView || itemData.leftTitle){
        
        if(itemData.leftTitle){
            UILabel *label = [UILabel new];
            label.text = itemData.leftTitle;
            label.font = [UIFont systemFontOfSize:15];
            label.textColor = [UIColor blackColor];
            itemData.leftView = label;
        }

        [item addSubview:itemData.leftView];
        [itemData.leftView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(item).offset(10);
            make.centerY.equalTo(item);
        }];
        
    }

    if(itemData.isNext || itemData.nextImageView){
        
        if(itemData.isNext){
            UIImageView *nextIV = [UIImageView new];
            nextIV.image = [UIImage imageNamed:@"pic_next"];
            itemData.nextImageView = nextIV;
        }
 
        [item addSubview:itemData.nextImageView];
        [itemData.nextImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.offset(-10);
            make.centerY.equalTo(item);
        }];
    }
    
    if(itemData.rightView || itemData.rightTitle){
        
        if(itemData.rightTitle){
            UILabel *label = [UILabel new];
            label.text = itemData.rightTitle;
            label.font = [UIFont systemFontOfSize:15];
            label.textColor = [UIColor blackColor];
            itemData.rightView = label;
        }

        [item addSubview:itemData.rightView];
        [itemData.rightView mas_makeConstraints:^(MASConstraintMaker *make) {
            if(itemData.nextImageView){
                make.right.equalTo(itemData.nextImageView.mas_left).offset(-10);
            }else{
                make.right.offset(-10);
            }
            make.centerY.equalTo(item);
        }];
    }

    if(itemData.secondView){
        
        [itemData.secondView setContentHuggingPriority:UILayoutPriorityDefaultLow-1 forAxis:UILayoutConstraintAxisHorizontal];
        
        [item addSubview:itemData.secondView];
        [itemData.secondView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(item);

            if(itemData.leftView){
                make.left.equalTo(itemData.leftView.mas_right).offset(10);
            }else{
                make.left.offset(10);
            }
            
            if(itemData.rightView){
                make.right.equalTo(itemData.rightView.mas_left).offset(-10);
            }else{
                if(itemData.nextImageView){
                    make.right.equalTo(itemData.nextImageView.mas_left).offset(-10);
                }else{
                    make.right.offset(-10);
                }
            }
        }];
    }
    
    if(itemData.target && itemData.selector){
        [item addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:itemData.target action: itemData.selector]];
    }
    
    item.leftView = itemData.leftView;
    item.rightView = itemData.rightView;
    item.secondView  = itemData.secondView;
    item.nextImageView = itemData.nextImageView;
    
    return item;
}



@end
