//
//  IFSFormsViewContentItem.h
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IFSFormsViewItemData : NSObject

@property (nonatomic, strong) NSString *leftTitle;
@property (nonatomic, strong) UIView *leftView;

@property (nonatomic, strong) NSString *rightTitle;
@property (nonatomic, strong) UIView *rightView;

@property (nonatomic, strong) UIView *secondView;

@property (nonatomic, assign) BOOL isNext;
@property (nonatomic, strong) UIImageView *nextImageView;

@property (nonatomic, assign) CGFloat lineHeight; 

@property (nonatomic, weak  ) id target;
@property (nonatomic, assign) SEL selector;

@end

NS_ASSUME_NONNULL_END
