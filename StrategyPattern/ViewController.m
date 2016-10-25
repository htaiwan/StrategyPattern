//
//  ViewController.m
//  StrategyPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "ViewController.h"
#import "CashContext.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // 對使用端來說，不需要瞭解CashSuper,Normal,Rebate,Return，只需要瞭解CashContext，跟指定所需的strategy
    CashContext *cc = [[CashContext alloc]init:3];
    double total;
    total = [cc GetResult:400];
    NSLog(@"Total Money 400,the resual is %f", total);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
