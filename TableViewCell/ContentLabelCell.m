//
//  ContentLabelCell.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/27.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ContentLabelCell.h"
#import "UIView+SetRect.h"

@interface ContentLabelCell ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation ContentLabelCell

- (void)interfaceLayout {

    self.contentLabel               = [[UILabel alloc] init];
    self.contentLabel.font          = [UIFont systemFontOfSize:12]; // 这个字体大小需要跟获得高度设置的字体大小保持一致
    self.contentLabel.textColor     = [UIColor grayColor];
    self.contentLabel.numberOfLines = 0;
    [self addSubview:self.contentLabel];
}

- (void)loadData:(id)data {

    NSString * string       = data;
    self.contentLabel.text  = string;
    self.contentLabel.width = Width - 20;
    [self.contentLabel sizeToFit];
    self.contentLabel.top   = 10;
    self.contentLabel.left  = 10;
}

@end
