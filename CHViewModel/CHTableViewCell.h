//
//  CHTableViewCell.h
//  CHViewModelExample
//
//  Created by Chausson on 2016/12/23.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHCellViewModel.h"
@interface CHTableViewCell : UITableViewCell
@property (strong ,nonatomic) CHCellViewModel *viewModel;
@end
