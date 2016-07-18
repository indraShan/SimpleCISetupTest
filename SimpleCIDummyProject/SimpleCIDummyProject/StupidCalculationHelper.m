//
//  StupidCalculationHelper.m
//  SimpleCIDummyProject
//
//  Created by Indrajit on 18/07/16.
//  Copyright © 2016 Indrajit. All rights reserved.
//

#import "StupidCalculationHelper.h"
#import "ReactiveCocoa/ReactiveCocoa-umbrella.h"

@interface StupidCalculationHelper()

@property (nonatomic, assign, readwrite) NSInteger result;

@end

@implementation StupidCalculationHelper

- (instancetype)init {
  self = [super init];
  if (self) {
    __weak typeof(self) weakSelf = self;
    RACSignal *number1Signal = RACObserve(self, number1);
    RACSignal *number2Signal = RACObserve(self, number2);
    RACSignal *resultSignal = [RACSignal combineLatest:@[number1Signal, number2Signal]
                                                            reduce:^id(NSNumber *number1, NSNumber *number2) {
                                                              return @(number1.integerValue + number2.integerValue);
                                                            }];

    [resultSignal subscribeNext:^(NSNumber *addition) {
      weakSelf.result = addition.integerValue;
    }];
  }
  return self;
}

@end
