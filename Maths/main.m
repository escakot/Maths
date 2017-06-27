//
//  main.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        BOOL runProg = YES;
        NSLog(@"MATHS!");
        do{
            
            AdditionQuestion *randomMath = [[AdditionQuestion alloc] init];
            NSLog(@"%@", randomMath.question);
           
            NSString *answerString = [InputHandler obtainInput];
            
            if (answerString.integerValue == randomMath.answer) {
                NSLog(@"Right!");
            } else if ([answerString isEqualToString:@"quit"]) {
                runProg = NO;
            } else {
                NSLog(@"Wrong!");
            }
        }while(runProg);
    }
    return 0;
}
