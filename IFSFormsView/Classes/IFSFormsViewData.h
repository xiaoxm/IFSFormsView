//
//  IFSFormsViewContent.h
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "IFSFormsViewGroup.h"
#import "IFSFormsViewGroupData.h"

NS_ASSUME_NONNULL_BEGIN

@interface IFSFormsViewData : NSObject

@property (nonatomic, strong) NSMutableArray<IFSFormsViewGroupData *> *groupData;

@end



NS_ASSUME_NONNULL_END
