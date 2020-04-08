//
//  IFSFormsViewContentItemContainer.h
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IFSFormsViewItemData.h"

NS_ASSUME_NONNULL_BEGIN

@interface IFSFormsViewGroupData : NSObject

@property (nonatomic, strong) NSMutableArray<IFSFormsViewItemData *> *itemData;

@end

NS_ASSUME_NONNULL_END
