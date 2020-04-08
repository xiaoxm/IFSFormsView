//
//  IFSFormsViewItem.h
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class IFSFormsViewItemData;

NS_ASSUME_NONNULL_BEGIN

@interface IFSFormsViewItem : UIView

@property (nonatomic, strong) UIView *leftView;
@property (nonatomic, strong) UIView *rightView;
@property (nonatomic, strong) UIView *secondView;
@property (nonatomic, strong) UIImageView *nextImageView;

+ (IFSFormsViewItem *)itemWithSuperView:(UIView *)superView PreView:(UIView *)preView ItemData:(IFSFormsViewItemData *)itemData;


@end

NS_ASSUME_NONNULL_END
