//
//  CHTableViewCell.m
//  CHViewModelExample
//
//  Created by Chausson on 2016/12/23.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "CHTableViewCell.h"

@implementation CHTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self bind];
    }
    return self;
    
}
- (void)bind{
    
}

@end
