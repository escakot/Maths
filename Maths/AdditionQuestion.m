//
//  AdditionQuestion.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //Begin start timer
        _startTime = [NSDate date];
        
        //Randomize math question
        int randomNumber = arc4random_uniform(90) + 10;
        int secondRandomNumber = arc4random_uniform(90) + 10;
        _answer = randomNumber + secondRandomNumber;
        _question = [NSString stringWithFormat:@"%i + %i? Type 'quit' to exit\n",randomNumber, secondRandomNumber];
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

@end
