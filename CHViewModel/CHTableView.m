//
//  CHTableView.m
//  CHViewModelExample
//
//  Created by Chausson on 2016/12/23.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "CHTableView.h"
#import "CHTableViewCell.h"

@interface CHTableView()<UITableViewDelegate,UITableViewDataSource>
@end
@implementation CHTableView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}
- (void)registerClassName:(NSString *)aClass{
    
}
- (void)registerNibName:(NSString *)name{
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cellViewModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CHCellViewModel *viewModel;
    if (self.cellViewModels.count > indexPath.row) {
        viewModel = self.cellViewModels[indexPath.row];
    }
    
    CHTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:viewModel.reuseIdentifier];
    cell.viewModel = viewModel;
    
    return cell;
}
@end
