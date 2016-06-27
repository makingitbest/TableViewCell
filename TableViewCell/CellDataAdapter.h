//
//  CellDataAdapter.h
//  TableViewCell
//
//  Created by 王巧 on 16/6/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CellDataAdapter : NSObject

/**
 *  注册用的字符串
 */
@property (nonatomic, strong) NSString *reusedIdentifier;

/**
 *  数据
 */
@property (nonatomic, strong) id        data;

/**
 *  cell的高度
 */
@property (nonatomic)         CGFloat   cellHeight;

/**
 *  cell的类型
 */
@property (nonatomic)         NSInteger cellType;

/**
 *  遍历器
 *
 *  @param reusedIdentifier 注册的reusedIdentifier
 *  @param data             数据
 *  @param cellHeight       cell的高度
 *  @param cellType         cell的类型
 *
 *  @return                 遍历器的对象
 */
+ (instancetype)cellDataAdapter:(NSString *)reusedIdentifier data:(id)data cellHeight:(CGFloat)cellHeight cellType:(NSInteger)cellType;


@end
