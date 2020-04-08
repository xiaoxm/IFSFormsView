//
//  IFSFormsViewContentItemContainer.m
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import "IFSFormsViewGroupData.h"

@implementation IFSFormsViewGroupData

- (NSMutableArray<IFSFormsViewItemData *> *)itemData
{
    if(!_itemData){
        _itemData = [NSMutableArray array];
    }
    return _itemData;
}

@end
