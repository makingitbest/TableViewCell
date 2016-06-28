//
//  ViewController.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ViewController.h"
#import "CellDataAdapter.h"
#import "ContentLabelCell.h"
#import "PictureAndContentCell.h"
#import "NSString+LabelWidthAndHeight.h"
#import "UIView+SetRect.h"
#import "PictureAndContentModel.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) UITableView                        *tableView;
@property(nonatomic, strong) NSMutableArray <CellDataAdapter *> *adapters;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.tableView            =[[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    // 相同的tableview,只是根据不同的 类型判断cell该显示的界面,排列的顺序也是按照你注册的顺序
    [self.tableView registerClass:[PictureAndContentCell class] forCellReuseIdentifier:@"PictureAndContentCell"];
    [self.tableView registerClass:[ContentLabelCell class] forCellReuseIdentifier:@"ContentLabelCell"];
    
    self.adapters = [NSMutableArray array];
    
    {
        NSString *string = @"《诗经》是中国古代诗歌开端，最早的一部诗歌总集。搜集了西周初期到春秋中叶（前11世纪至前6世纪）的古代诗歌305首，除此之外还有6篇有题目无内容，即有目无辞，称为笙诗六篇（南陔、白华、华黍、由康、崇伍、由仪），反映了周初至周晚期约五百年间的社会面貌。\
        《诗经》作者佚名，传为尹吉甫采集、孔子编订。最初只称为“诗”或“诗三百”，到西汉时，被尊为儒家经典，才称为《诗经》。《诗经》按《风》、《雅》、《颂》三类编辑。《风》是周代各地的歌谣；《雅》是周人的正声雅乐，又分《小雅》和《大雅》；《颂》是周王庭和贵族宗庙祭祀的乐歌，又分为《周颂》、《鲁颂》和《商颂》。\
        孔子曾概括《诗经》宗旨为“无邪”，并教育弟子读《诗经》以作为立言、立行的标准。先秦诸子中，引用《诗经》者颇多，如孟子、荀子、墨子、庄子、韩非子等人在说理论证时，多引述《诗经》中的句子以增强说服力。后来，《诗经》被儒家奉为经典，成为《六经》及《五经》之一。\
        《诗经》内容丰富，反映了劳动与爱情、战争与徭役、压迫与反抗、风俗与婚姻、祭祖与宴会，甚至天象、地貌、动物、植物等方方面面，是周代社会生活的一面镜子。";
        CGFloat   height = [string heightWithStringAttribute:@{NSFontAttributeName: [UIFont systemFontOfSize:12.f]}
                                                  fixedWidth:Width - 20];
        
        CellDataAdapter *adapter = [[CellDataAdapter alloc] init];
        adapter.reusedIdentifier = @"ContentLabelCell";
        adapter.data             = string;
        adapter.cellHeight       = 10 + height + 10;
        adapter.cellType         = 0;
        [self.adapters addObject:adapter];
    }
    
    {
        NSString *string = @"我是文字较少的那条数据";
        CGFloat   height = [string heightWithStringAttribute:@{NSFontAttributeName: [UIFont systemFontOfSize:12.f]}
                                                  fixedWidth:Width - 20];
        
        CellDataAdapter *adapter = [[CellDataAdapter alloc] init];
        adapter.reusedIdentifier = @"ContentLabelCell";
        adapter.data             = string;
        adapter.cellHeight       = 10 + height + 10;
        adapter.cellType         = 0;
        [self.adapters addObject:adapter];
    }
    
    {
        NSString *string = @"我是文字较少的那条数据";
        CGFloat   height = [string heightWithStringAttribute:@{NSFontAttributeName: [UIFont systemFontOfSize:12.f]}
                                                  fixedWidth:Width - 20];
        CellDataAdapter * adapter = [CellDataAdapter cellDataAdapter:@"ContentLabelCell" data:string cellHeight:height + 20 cellType:0];
        [self.adapters addObject:adapter];
    }
    
    {
        PictureAndContentModel *model = [[PictureAndContentModel alloc] init];
        model.picName = @"1";
        model.titleName = @"丞相祠堂何处寻，锦官城外柏森森.";
        CellDataAdapter * adapter = [CellDataAdapter cellDataAdapter:@"PictureAndContentCell" data:model cellHeight:60 cellType:kPictureAndContentLeft];
        [self.adapters addObject:adapter];
    }
    
    {
        PictureAndContentModel *model = [[PictureAndContentModel alloc] init];
        model.picName = @"2";
        model.titleName = @"丞相祠堂何处寻，锦官城外柏森森.";
        CellDataAdapter * adapter = [CellDataAdapter cellDataAdapter:@"PictureAndContentCell" data:model cellHeight:60 cellType:KPictureAndContentRight];
        [self.adapters addObject:adapter];
    }
}


#pragma mark - UITableViewDelegate, UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _adapters.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CellDataAdapter *adapter    = _adapters[indexPath.row];
    RootTableViewCell *rootCell = [tableView dequeueReusableCellWithIdentifier:adapter.reusedIdentifier];
    rootCell.indexPath          = indexPath;
    rootCell.dataAdapter        = adapter;
    
    [rootCell loadData:adapter.data];
    
    return rootCell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return _adapters[indexPath.row].cellHeight;
}

@end
