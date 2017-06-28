//
//  QuestionManager.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-28.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString*) timeOutput{
    NSTimeInterval averageTime = 0;
    AdditionQuestion *lastAnswered = [self.questions lastObject];
    for (AdditionQuestion *question in self.questions) {
        averageTime = averageTime + question.answerTime;
    }
    averageTime = averageTime/self.questions.count;
    NSString *output = [NSString stringWithFormat:@"total time: %.0fs, average time: %.0fs", lastAnswered.answerTime, averageTime];
    return output;
}
@end
