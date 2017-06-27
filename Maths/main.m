//
//  main.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        char inputChar[255];
        do{
            
            AdditionQuestion *randomMath = [[AdditionQuestion alloc] init];
            NSLog(@"%@", randomMath.question);
            
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
            NSCharacterSet *newLineChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *cleanString = [inputString stringByTrimmingCharactersInSet:newLineChar];
            
            NSLog(@"%@", cleanString);
        }while(YES);
    }
    return 0;
}
