//
//  CashContext.h
//  StrategyPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

@interface CashContext : NSObject

@property CashSuper *cs;

-(CashContext*)init:(int)Types;
-(void)SetCashSuper:(CashSuper*)cashSuper;
-(double)GetResult:(double)money;

@end
