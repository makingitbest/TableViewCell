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

- (void)setUp {
    
    self.backgroundColor = [UIColor yellowColor];
}

- (void)interfaceLayout {
    
    self.iconImage                  = [[UIImageView alloc] init];
    self.iconImage.backgroundColor  = [UIColor grayColor];
    self.iconImage.contentMode      = UIViewContentModeScaleAspectFill;
    [self addSubview:self.iconImage];
    
    self.titleLabel                 = [[UILabel alloc] init];
    self.titleLabel.backgroundColor = [UIColor grayColor];
    self.titleLabel.font            = [UIFont systemFontOfSize:18];
    self.titleLabel.numberOfLines   = 0;
    [self addSubview:self.titleLabel];
}

- (void)loadData:(id)data{
    
    if (self.dataAdapter.cellType == kImageType) {
        self.iconImage.image  = [UIImage imageNamed:@"图片"];
        self.iconImage.x      = 10;
        self.iconImage.y      = 50;
        self.iconImage.width  = 100;
        self.iconImage.height = 100;

    }else if (self.dataAdapter.cellType == kLabelType){
    
        self.titleLabel.text = @"我是一只小小鸟";
        self.titleLabel.x  = self.iconImage.right + 20;
        self.titleLabel.y  = 50;
        self.titleLabel.width = 150;
        [self.titleLabel sizeToFit];
    }
}

@end
