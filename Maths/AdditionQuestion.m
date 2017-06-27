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
        int randomNumber = arc4random_uniform(50);
        int secondRandomNumber = arc4random_uniform(50);
        _answer = randomNumber + secondRandomNumber;
        _question = [NSString stringWithFormat:@"What is %i + %i",randomNumber, secondRandomNumber];
    }
    return self;
}

@end
