//
//  CHViewModel.m
//  Practise
//
//  Created by Chausson on 2016/12/22.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "CHViewModel.h"
@interface CHViewModel()

@property (strong ,nonatomic) NSObject <RACSubscriber>*popSubscriber;
@property (strong ,nonatomic) NSObject <RACSubscriber>*pushSubscriber;
@property (strong ,nonatomic) RACSignal *pushSignal;
@property (strong ,nonatomic) RACSignal *popSignal;

@end
@implementation CHViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        @weakify(self);
        self.pushSignal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
            @strongify(self);

            self.pushSubscriber = subscriber;
            
            return [RACDisposable disposableWithBlock:^{
                self.pushSubscriber = nil;
            }];
        }];
        self.popSignal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
            @strongify(self);
            
            self.popSubscriber = subscriber;
            
            return [RACDisposable disposableWithBlock:^{
                self.popSubscriber = nil;
            }];
        }];
    }
    return self;
}
- (void)push:(CHViewModel *)viewModel{
    NSString *error = [NSString stringWithFormat:@"%s %d 不能push时候传递自身(会造成内存泄漏)，请复制一份或者重新拼装使用",__PRETTY_FUNCTION__,__LINE__];
    NSAssert(![viewModel isEqual:self], error);
    [self.pushSubscriber sendNext:viewModel];
}
- (void)push{
    [self.pushSubscriber sendNext:nil];
}
- (void)pop:(CHViewModel *)viewModel{
    NSString *error = [NSString stringWithFormat:@"%s %d 不能push时候传递自身(会造成内存泄漏)，请复制一份或者重新拼装使用",__PRETTY_FUNCTION__,__LINE__];
    NSAssert(![viewModel isEqual:self], error);
    [self.popSubscriber sendNext:viewModel];
    [self.popSubscriber sendCompleted];
}
- (void)pop{
    [self.popSubscriber sendNext:nil];
    [self.popSubscriber sendCompleted];
}
- (void)dealloc{
    
}
@end
