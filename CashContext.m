//
//  CashContext.m
//  StrategyPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "CashContext.h"
#import "CashNormal.h"
#import "CashRebate.h"
#import "CashReturn.h"


@implementation CashContext

// 根據使用者選擇不同的stategy
-(CashContext*)init:(int)Types{
    switch(Types) {
        case 1:
            [self SetCashSuper:[[CashNormal alloc]init]];
            break;
        case 2:
            [self SetCashSuper:[[CashReturn alloc]init:300 And:100]];
            break;
        case 3:
            [self SetCashSuper:[[CashRebate alloc]init:0.8]];
            break;
        default:
            break;
    }
    return self;
}

-(void)SetCashSuper:(CashSuper*)cashSuper{
    self.cs = cashSuper;
}

-(double)GetResult:(double)money{
    return [self.cs acceptCash:money];
}


@end
