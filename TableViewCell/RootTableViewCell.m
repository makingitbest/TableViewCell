//
//  BaseTableViewCell.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "RootTableViewCell.h"


@implementation RootTableViewCell

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
