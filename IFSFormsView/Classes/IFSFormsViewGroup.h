//
//  IFSFormsViewItemContainer.h
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IFSFormsViewItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface IFSFormsViewGroup : UIView

@property (nonatomic, strong) NSMutableArray<IFSFormsViewItem *> *items;

+ (IFSFormsViewGroup *)groupWithSuperView:(UIView *)superView PreView:(UIView *)preView;

@end

NS_ASSUME_NONNULL_END
