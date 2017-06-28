//
//  DivisionQuestion.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-28.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "RemainderQuestion.h"

@implementation RemainderQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion{
    if (self.rightValue > self.leftValue) {
        self.answer = self.rightValue % self.leftValue;
        self.question = [NSString stringWithFormat:@"Remainder of %li / %li? Type 'quit' to exit\n",self.rightValue, self.leftValue];
    } else {
        self.answer = self.leftValue % self.rightValue;
        self.question = [NSString stringWithFormat:@"Remainder of %li / %li? Type 'quit' to exit\n",self.leftValue, self.rightValue];
        
    }
}

@end
