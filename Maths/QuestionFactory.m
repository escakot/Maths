//
//  QuestionFactory.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-28.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory


- (Question*) generateRandomQuestion{
    randomQuestion question = (randomQuestion) (arc4random() % (NSInteger) numberOfQuestionTypes);
    
    switch (question) {
        case addition: {
            Question *additionQuestion = [[AdditionQuestion alloc] init];
            return additionQuestion;
        }
        case subtraction: {
            Question *subtractionQuestion = [[SubtractionQuestion alloc] init];
            return subtractionQuestion;
        }
        case multiplication: {
            Question *multiplicationQuestion = [[MultiplicationQuestion alloc] init];
            return multiplicationQuestion;
        }
        case divisionRemainder: {
            Question *remainderQuestion = [[RemainderQuestion alloc] init];
            return remainderQuestion;
        }
        default:
            return nil;
    }
}

@end
