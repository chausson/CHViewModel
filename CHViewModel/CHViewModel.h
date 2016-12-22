//
//  CHViewModel.h
//  Practise
//
//  Created by Chausson on 2016/12/22.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface CHViewModel : NSObject

@property (readonly ,nonatomic) RACSignal *pushSignal;
@property (readonly ,nonatomic) RACSignal *popSignal;

/**
 @brief 触发跳转信号
 */
- (void)push:(CHViewModel *)viewModel;
- (void)push;
/**
 @brief 触发返回信号
 */
- (void)pop:(CHViewModel *)viewModel;
- (void)pop;

@end
