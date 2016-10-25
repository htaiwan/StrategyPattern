//
//  CashRebate.m
//  StrategyPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "CashRebate.h"

@implementation CashRebate

-(CashRebate*)init:(double)moneyRebates{
    [self setMoneyRebate:moneyRebates];
    return self;
}

-(double)AcceptCash:(double)money{
    return self.moneyRebate * money;
}

@end
