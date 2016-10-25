//
//  CashReturn.h
//  StrategyPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "CashSuper.h"

@interface CashReturn : CashSuper

@property double moneyCondition;
@property double moneyReturn;

-(CashReturn*)init:(double)moneyConditions And:(double)moneyReturns;

@end
