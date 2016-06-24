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

@property (nonatomic, strong) NSString *reusedIdentifier;//注册用的字符串
@property (nonatomic, strong) id        data; //数据
@property (nonatomic)         CGFloat   cellHeight; //cell的高度
@property (nonatomic)         NSInteger cellType; //cell的类型

+(instancetype)cellDataAdapter:(NSString *)reusedIdentifier andData:(id)data andCellHeight:(CGFloat)cellHeight andCellType:(NSInteger)cellType;


@end
