//
//  Question.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //Begin start timer
        _startTime = [NSDate date];
        
        //Randomize math question
        _rightValue = arc4random_uniform(90) + 10;
        _leftValue = arc4random_uniform(90) + 10;
        _answer = _rightValue + _leftValue;
        _question = [NSString stringWithFormat:@"%li + %li? Type 'quit' to exit\n",_rightValue, _leftValue];
    }
    return self;
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void) generateQuestion {
    
}

@end
