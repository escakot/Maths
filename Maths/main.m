//
//  main.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        BOOL runProg = YES;
        NSLog(@"MATHS!\n");
        
        ScoreKeeper *myScore = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        do{
           
            Question *randomMath = [questionFactory generateRandomQuestion];
           
            [questionManager.questions addObject:randomMath];
            NSLog(@"%@", randomMath.question);
           
            NSString *answerString = [InputHandler obtainInput];
            
            if ([answerString isEqualToString:@"quit"]) {
                [myScore readScore];
                runProg = NO;
            } else {
                if (answerString.integerValue == randomMath.answer) {
                    myScore.right++;
                    NSLog(@"Right!");
                } else {
                    myScore.wrong++;
                    NSLog(@"Wrong!");
                }
                NSLog(@"%@" ,questionManager.timeOutput);
            }
        }while(runProg);
    }
    return 0;
}
