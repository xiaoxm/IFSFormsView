//
//  IFSFormsView.h
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IFSFormsViewGroup.h"
#import "IFSFormsViewItem.h"
#import "IFSFormsViewData.h"
#import "IFSFormsViewGroupData.h"
#import "IFSFormsViewItemData.h"
#import "IFSFormsViewData+IFSChaining.h"


NS_ASSUME_NONNULL_BEGIN

@interface IFSFormsView : UIView

@property (nonatomic, strong) IFSFormsViewData *data;

@property (nonatomic, strong) NSMutableArray<IFSFormsViewGroup *> *groups;

@end

NS_ASSUME_NONNULL_END
