//
//  PictureAndContentCell.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/27.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "PictureAndContentCell.h"
#import "UIView+SetRect.h"
#import "PictureAndContentModel.h"

@interface PictureAndContentCell ()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel     *titleLabel;

@end

@implementation PictureAndContentCell

- (void)setUp {
    
    self.selectionStyle  = UITableViewCellSelectionStyleNone;
}

- (void)interfaceLayout {
    
    self.iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    self.iconImageView.contentMode         = UIViewContentModeScaleAspectFill;
    self.iconImageView.layer.masksToBounds = YES;
    [self addSubview:self.iconImageView];
    
    self.titleLabel               = [[UILabel alloc] init];
    self.titleLabel.font          = [UIFont boldSystemFontOfSize:13];
    self.titleLabel.numberOfLines = 0;
    [self addSubview:self.titleLabel];
}

- (void)loadData:(id)data {
    
    PictureAndContentModel * model = data;
    
    self.iconImageView.image = [UIImage imageNamed:model.picName];
    
    self.titleLabel.text = model.titleName;
    [self.titleLabel sizeToFit];
    
    if (self.dataAdapter.cellType == kPictureAndContentLeft) {
        
        self.iconImageView.x = 10;
        self.iconImageView.y = 10;
        
        self.titleLabel.x    = self.iconImageView.right + 10;
        self.titleLabel.y    = self.iconImageView.y;
        
    } else if (self.dataAdapter.cellType == KPictureAndContentRight) {
        
        self.iconImageView.x = Width - 60;
        self.iconImageView.y = 10;
        
        self.titleLabel.right = self.iconImageView.left - 10;
        self.titleLabel.y     = self.iconImageView.y;
    }
}

@end
