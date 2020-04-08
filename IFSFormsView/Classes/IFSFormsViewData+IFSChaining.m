//
//  IFSGormsViewChaining.m
//  IFSFormsView
//
//  Created by herui on 2020/4/8.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import "IFSFormsViewData+IFSChaining.h"




@implementation IFSFormsViewData(IFSChaining)

+ (instancetype)New
{
    return [self new];
}


- (IFSFormsViewData *(^)(NSArray<IFSFormsViewGroupData *> *))GroupData
{
    return ^(NSArray<IFSFormsViewGroupData *> *groupData){
        self.groupData = [NSMutableArray arrayWithArray:groupData];
        return self;
    };
}

@end

@implementation IFSFormsViewGroupData(IFSChaining)

+ (instancetype)New
{
    return [self new];
}


- (IFSFormsViewGroupData *(^)(NSArray<IFSFormsViewItemData *> *))ItemData
{
    return ^(NSArray<IFSFormsViewItemData *> *itemData){
        self.itemData = [NSMutableArray arrayWithArray:itemData];
        return self;
    };
}

@end


@implementation IFSFormsViewItemData(IFSChaining)

+ (instancetype)New
{
    return [self new];
}

- (IFSFormsViewItemData *(^)(NSString *))LeftTitle
{
    return ^(NSString *leftTitle){
        self.leftTitle = leftTitle;
        return self;
    };
}
- (IFSFormsViewItemData *(^)(NSString *))RightTitle
{
    return ^(NSString *rightTitle){
        self.rightTitle = rightTitle;
        return self;
    };
}

- (IFSFormsViewItemData *(^)(UIView *))LeftView
{
    return ^(UIView *leftView){
        self.leftView = leftView;
        return self;
    };
}

- (IFSFormsViewItemData *(^)(UIView *))RightView
{
    return ^(UIView *rightView){
        self.rightView = rightView;
        return self;
    };
}


- (IFSFormsViewItemData *(^)(UIView *))SecondView
{
    return ^(UIView *secondView){
        self.secondView = secondView;
        return self;
    };
}


- (IFSFormsViewItemData *(^)(CGFloat))LineHeight
{
    return ^(CGFloat lineHeight){
        self.lineHeight = lineHeight;
        return self;
    };
}


- (IFSFormsViewItemData *(^)(id))Target
{
    return ^(id target){
        self.target = target;
        return self;
    };
}

- (IFSFormsViewItemData *(^)(SEL))Selector
{
    return ^(SEL selector){
        self.selector = selector;
        return self;
    };
}



- (IFSFormsViewItemData *)Next
{
    self.isNext = YES;
    return self;
}


- (IFSFormsViewItemData *(^)(UIImageView *))NextImageView
{
    return ^(UIImageView *nextImageView){
        self.nextImageView = nextImageView;
        return self;
    };
}


@end
