//
//  BaseTableViewCell.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "RootTableViewCell.h"


@implementation RootTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {


    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setUp];
        
        [self interfaceLayout];
        
    }
    
    return self;
}

//设置cell的相关属性
- (void)setUp {

}

//cell的界面布局
- (void)interfaceLayout {

}

//cell上数据的加载
- (void)loadData: (id)data {

}

@end
