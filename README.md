# Strategy Pattern 策略模式

****

## What is the pattern 

策略模式是一種定義一系列演算法的方法，從概念來說，所有這些演算法完成的都是相同工作，只是實現不同。它可以以相同方式調用所有的演算法，減少了各種演算法類別與使用演算法類別之間的耦合。

## Why use the pattern 
1. 只要在分析過程中聽到需要在不同時間應用不同的業務規則，就可以考慮使用策略模式。
2. 簡化了單元測試，因為每個演算法都有自己的類別。
3. 選擇具體實現的職責是用戶端決定。


## How to use the pattern

Context - 為stratgy類別定義一系列可供複用的演算法或行為 - CashContext

```objective-c
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
```

Strategy - 策略的父類別 - CashSuper

```objective-c
#import <Foundation/Foundation.h>

@interface CashSuper : NSObject

-(double)acceptCash:(double)money;

@end
```

ConcreteStrategy - 實際使用的策略模式 - CashNormal, CashRebate, CashReturn

```objective-c
#import "CashNormal.h"

@implementation CashNormal

-(double)acceptCash:(double)money{
    return money;
}
@end
```

```objective-c
#import "CashRebate.h"

@implementation CashRebate

-(CashRebate*)init:(double)moneyRebates{
    [self setMoneyRebate:moneyRebates];
    return self;
}
```

```objective-c
#import "CashReturn.h"

@implementation CashReturn

-(CashReturn*)init:(double)moneyConditions  And:(double)moneyReturns{
    [self setMoneyReturn:moneyReturns];
    [self setMoneyCondition:moneyConditions];
    return self;
}
```

用戶端使用

```objective-c
    // 對使用端來說，不需要瞭解CashSuper,Normal,Rebate,Return，只需要瞭解CashContext，跟指定所需的strategy
    CashContext *cc = [[CashContext alloc]init:3];
    double total;
    total = [cc GetResult:400];
    NSLog(@"Total Money 400,the resual is %f", total);
 
```

