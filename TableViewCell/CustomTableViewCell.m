//
//  CustomTableViewCell.m
//  TableViewCell
//
//  Created by WangQiao on 16/8/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setUp];
        
        [self interfaceLayout];
        
    }
    
    return self;
}

- (void)setUp {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)interfaceLayout {
    
}

- (void)loadData:(id)data {
    
}

@end
