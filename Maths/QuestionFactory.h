//
//  QuestionFactory.h
//  Maths
//
//  Created by Errol Cheong on 2017-06-28.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "RemainderQuestion.h"

typedef NS_ENUM(NSInteger, randomQuestion) {
    addition,
    subtraction,
    multiplication,
    divisionRemainder,
    numberOfQuestionTypes
};

@interface QuestionFactory : NSObject

- (Question*) generateRandomQuestion;

@end
