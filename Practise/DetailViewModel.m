//
//  DetailViewModel.m
//  Practise
//
//  Created by Chausson on 2016/12/22.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "DetailViewModel.h"

@implementation DetailViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
            @weakify(self);
        _pushCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
            @strongify(self);

            [self push];
            return [RACSignal empty];
        }];
        _popCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
            @strongify(self);
            
            [self pop];
            return [RACSignal empty];
        }];
    }
    return self;
}
- (void)dealloc{
    
}
@end
