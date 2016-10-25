//
//  CashReturn.m
//  StrategyPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "CashReturn.h"

@implementation CashReturn

-(CashReturn*)init:(double)moneyConditions  And:(double)moneyReturns{
    [self setMoneyReturn:moneyReturns];
    [self setMoneyCondition:moneyConditions];
    return self;
}
-(double)AcceptCash:(double)money{
    double result;
    result = money;
    @try{
        if(money >= self.moneyCondition){
            result = money - (money /self.moneyCondition)* self.moneyReturn;
        }
    }
    @catch(NSException *exception) {
        NSLog(@"Oh!Man!!CashReturn has something wrong!");
    }
    @finally{
        return result;
    }
}

@end
