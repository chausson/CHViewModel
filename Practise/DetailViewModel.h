//
//  DetailViewModel.h
//  Practise
//
//  Created by Chausson on 2016/12/22.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "CHViewModel.h"

@interface DetailViewModel : CHViewModel
@property (strong ,nonatomic) RACCommand *pushCommand;
@property (strong ,nonatomic) RACCommand *popCommand;

@end
