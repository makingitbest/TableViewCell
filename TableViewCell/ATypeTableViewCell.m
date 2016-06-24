//
//  ATypeTableViewCell.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ATypeTableViewCell.h"
#import "UIView+SetRect.h"

@interface ATypeTableViewCell ()

@property (nonatomic, strong) UIImageView *iconImage;
@property (nonatomic, strong) UILabel     *titleLabel;


@end

@implementation ATypeTableViewCell

//设置cell的相关属性
- (void)setUp {
    
    self.backgroundColor = [UIColor yellowColor];
}

//cell的界面布局
- (void)interfaceLayout {
    
    self.iconImage                  = [[UIImageView alloc] initWithFrame:CGRectMake(10, 20, 150, 150)];
    self.iconImage.backgroundColor  = [UIColor grayColor];
    [self addSubview:self.iconImage];
    
    self.titleLabel                 = [[UILabel alloc] init];
    self.titleLabel.backgroundColor = [UIColor grayColor];
    self.titleLabel.font            = [UIFont systemFontOfSize:13];
    self.titleLabel.numberOfLines   = 0;
    [self addSubview:self.titleLabel];
    

}

//cell上数据的加载
- (void)loadData: (id)data{
    
    self.titleLabel.text = @"我是一只小小鸟";

    self.titleLabel.width = 100;
    [self.titleLabel sizeToFit];

}

@end
