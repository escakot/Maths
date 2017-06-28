//
//  Question.h
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString * question;
@property (nonatomic) NSInteger answer;

@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (NSTimeInterval) answerTime;

- (void) generateQuestion;

@end