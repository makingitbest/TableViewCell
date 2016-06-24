//
//  CellDataAdapter.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "CellDataAdapter.h"

@implementation CellDataAdapter

+(instancetype)cellDataAdapter:(NSString *)reusedIdentifier andData:(id)data andCellHeight:(CGFloat)cellHeight andCellType:(NSInteger)cellType {
    
    CellDataAdapter * adapter = [[[self class] alloc] init];
    adapter.reusedIdentifier  = reusedIdentifier;
    adapter.data              = data;
    adapter.cellHeight        = cellHeight;
    adapter.cellType          = cellType;
    
    return adapter;
}

@end
