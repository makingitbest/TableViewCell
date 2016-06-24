//
//  ViewController.m
//  TableViewCell
//
//  Created by 王巧 on 16/6/23.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ViewController.h"
#import "ATypeTableViewCell.h"
#import "BTypeTableViewCell.h"
#import "CTypeTableViewCell.h"
#import "CellDataAdapter.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong)UITableView *tableView;
@property(nonatomic, strong)NSMutableArray <CellDataAdapter *> *adapters;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView            =[[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];

   
    [self.tableView registerClass:[ATypeTableViewCell class] forCellReuseIdentifier:@"AAAA"];
    [self.tableView registerClass:[BTypeTableViewCell class] forCellReuseIdentifier:@"BBBB"];
    [self.tableView registerClass:[CTypeTableViewCell class] forCellReuseIdentifier:@"CCCC"];
    
    self.adapters = [NSMutableArray array];
    
    CellDataAdapter *adapterA = [[CellDataAdapter alloc] init];
    adapterA.reusedIdentifier = @"AAAA";
    adapterA.data             = @"我是一个小画家";
    adapterA.cellHeight       = 200;
    adapterA.cellType         = 0;
    [self.adapters addObject:adapterA];
    
    CellDataAdapter *adapterB = [[CellDataAdapter alloc] init];
    adapterB.reusedIdentifier = @"BBBB";
    adapterB.data             = @"你是一只大灰狼";
    adapterB.cellHeight       = 250;
    adapterB.cellType         = 1;
    [self.adapters addObject:adapterB];
    
    
    CellDataAdapter * adapterC = [[CellDataAdapter alloc] init];
    adapterC.reusedIdentifier  = @"CCCC";
    adapterC.data              = @"下雨了";
    adapterC.cellHeight        = 200;
    adapterC.cellType          = 3;
    [self.adapters addObject:adapterC];
    
    
    
    
    
}

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
