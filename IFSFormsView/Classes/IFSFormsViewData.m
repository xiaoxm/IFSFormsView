//
//  IFSFormsViewContent.m
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import "IFSFormsViewData.h"

@implementation IFSFormsViewData

- (NSMutableArray<IFSFormsViewGroupData *> *)groupData
{
    if(!_groupData){
        _groupData = [NSMutableArray array];
    }
    return _groupData;
}

@end
