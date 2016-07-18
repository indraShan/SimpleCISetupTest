//
//  SimpleCIDummyProjectTests.m
//  SimpleCIDummyProjectTests
//
//  Created by Indrajit on 18/07/16.
//  Copyright © 2016 Indrajit. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "StupidCalculationHelper.h"

@interface SimpleCIDummyProjectTests : XCTestCase

@property (strong, nonatomic) StupidCalculationHelper *calculationHelper;

@end

@implementation SimpleCIDummyProjectTests

- (void)setUp {
    [super setUp];
    self.calculationHelper = [[StupidCalculationHelper alloc] init];
    self.calculationHelper.number1 = 10;
    self.calculationHelper.number2 = 12;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
  XCTAssertEqual(self.calculationHelper.result, 22, @"StupidCalculationHelper add:into: is broken");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
