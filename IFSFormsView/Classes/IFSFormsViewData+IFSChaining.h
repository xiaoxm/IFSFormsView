//
//  IFSGormsViewChaining.h
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IFSFormsViewData.h"

NS_ASSUME_NONNULL_BEGIN


#define IFSFormsView_ItemData IFSFormsViewItemData.New
#define IFSFormsView_GroupData(...) IFSFormsViewGroupData.New.ItemData(@[__VA_ARGS__])
#define IFSFormsView_Data(...) IFSFormsViewData.New.GroupData(@[__VA_ARGS__])


@interface IFSFormsViewData(IFSChaining)

@property (nonatomic, strong) IFSFormsViewData *(^GroupData)(NSArray<IFSFormsViewGroupData *> *);

+ (IFSFormsViewData *)New;
- (IFSFormsViewData *(^)(NSArray<IFSFormsViewGroupData *> *))GroupData;
@end


@interface IFSFormsViewGroupData(IFSChaining)

@property (nonatomic, strong) IFSFormsViewGroupData *(^ItemData)(NSArray<IFSFormsViewItemData *> *);

+ (IFSFormsViewGroupData *)New;
- (IFSFormsViewGroupData *(^)(NSArray<IFSFormsViewItemData *> *))ItemData;

@end


@interface IFSFormsViewItemData(IFSChaining)

@property (nonatomic, copy) IFSFormsViewItemData *(^LeftTitle)(NSString *);
@property (nonatomic, copy) IFSFormsViewItemData *(^RightTitle)(NSString *);
@property (nonatomic, copy) IFSFormsViewItemData *(^LeftView)(UIView *);
@property (nonatomic, copy) IFSFormsViewItemData *(^RightView)(UIView *);
@property (nonatomic, copy) IFSFormsViewItemData *(^SecondView)(UIView *);
@property (nonatomic, copy) IFSFormsViewItemData *(^LineHeight)(CGFloat);
@property (nonatomic, copy) IFSFormsViewItemData *(^NextImageView)(UIImageView *);
@property (nonatomic, weak) IFSFormsViewItemData *(^Target)(id);
@property (nonatomic, assign) IFSFormsViewItemData *(^Selector)(SEL);


+ (IFSFormsViewItemData *)New;
- (IFSFormsViewItemData *(^)(NSString *))LeftTitle;
- (IFSFormsViewItemData *(^)(NSString *))RightTitle;
- (IFSFormsViewItemData *(^)(UIView *))LeftView;
- (IFSFormsViewItemData *(^)(UIView *))RightView;
- (IFSFormsViewItemData *(^)(UIView *))SecondView;
- (IFSFormsViewItemData *(^)(CGFloat))LineHeight;
- (IFSFormsViewItemData *(^)(UIImageView *))NextImageView;
- (IFSFormsViewItemData *(^)(id))Target;
- (IFSFormsViewItemData *(^)(SEL))Selector;
- (IFSFormsViewItemData *)Next;

@end

NS_ASSUME_NONNULL_END


#pragma clang diagnostic pop
