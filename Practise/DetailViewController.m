//
//  DetailViewController.m
//  Practise
//
//  Created by Chausson on 2016/12/22.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *pop = [UIButton buttonWithType:UIButtonTypeCustom];
    [pop setBackgroundColor:[UIColor orangeColor]];
    pop.rac_command = self.viewModel.popCommand;
    [pop setTitle:@"Back" forState:UIControlStateNormal];
    [self.view addSubview:pop];

    UIButton *push = [UIButton buttonWithType:UIButtonTypeCustom];
    [push setBackgroundColor:[UIColor purpleColor]];
    push.rac_command = self.viewModel.pushCommand;
    [push setTitle:@"Push" forState:UIControlStateNormal];
    [self.view addSubview:push];
    
    [self layout:pop view:push];
    
    
    @weakify(self);
    [self.viewModel.pushSignal subscribeNext:^(id x) {
        @strongify(self);
        DetailViewController *d = [[DetailViewController alloc]init];
        d.viewModel = [DetailViewModel new];
        [self.navigationController pushViewController:d animated:YES];
//
    }];
    [self.viewModel.popSignal subscribeNext:^(id x) {
        @strongify(self);

        [self.navigationController popViewControllerAnimated:YES];
    }];
}
- (void)layout:(UIView *)a view:(UIView *)b{
    [a setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSLayoutConstraint *sContraint1 = [NSLayoutConstraint constraintWithItem:a attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:-75];
    NSLayoutConstraint *sContraint2 = [NSLayoutConstraint constraintWithItem:a attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
    NSLayoutConstraint *sConstraint3 = [NSLayoutConstraint constraintWithItem:a attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:150];
    NSLayoutConstraint *sConstraint4 = [NSLayoutConstraint constraintWithItem:a attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:300];
    
    NSArray *array = [NSArray arrayWithObjects:sContraint1, sContraint2,sConstraint3,sConstraint4, nil];
    [self.view addConstraints:array];
    
    
    [b setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSLayoutConstraint *bContraint1 = [NSLayoutConstraint constraintWithItem:b attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:75];
    NSLayoutConstraint *bContraint2 = [NSLayoutConstraint constraintWithItem:b attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
    NSLayoutConstraint *bConstraint3 = [NSLayoutConstraint constraintWithItem:b attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:150];
    NSLayoutConstraint *bConstraint4 = [NSLayoutConstraint constraintWithItem:b attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:300];
    
    NSArray *arrayB = [NSArray arrayWithObjects:bContraint1, bContraint2,bConstraint3,bConstraint4, nil];
    [self.view addConstraints:arrayB];
}
- (void)dealloc{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
