//
//  CHCellViewModel.m
//  CHViewModelExample
//
//  Created by Chausson on 2016/12/23.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "CHCellViewModel.h"
@interface CHCellViewModel()
@property (strong ,nonatomic) NSString *reuseIdentifier;
@end
@implementation CHCellViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.reuseIdentifier = NSStringFromClass([self class]);
    }
    return self;
}

@end
