//
//  CustomTableViewCell.h
//  TableViewCell
//
//  Created by WangQiao on 16/8/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellDataAdapter.h"

@interface CustomTableViewCell : UITableViewCell

/**
 *  数据适配器
 */
@property (nonatomic, weak) CellDataAdapter *dataAdapter;

/**
 *  indexPath
 */
@property (nonatomic, weak) NSIndexPath     *indexPath;

/**
 *  设置cell的相关属性
 */
- (void)setUp;

/**
 *  cell的界面布局
 */
- (void)interfaceLayout;

/**
 *  cell上数据的加载
 *
 *  @param data 外部加载的数据
 */
- (void)loadData:(id)data;

@end
