//
//  CashRebate.h
//  StrategyPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "CashSuper.h"

@interface CashRebate : CashSuper

@property double moneyRebate;

-(CashRebate*)init:(double)moneyRebates;

@end
