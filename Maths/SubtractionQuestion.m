//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-28.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion{
    self.answer = self.rightValue - self.leftValue;
    self.question = [NSString stringWithFormat:@"%li - %li? Type 'quit' to exit\n",self.rightValue, self.leftValue];
}

@end
