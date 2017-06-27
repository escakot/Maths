//
//  ScoreKeeper.m
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (void) readScore {
    float percentage = (100 * (float)self.right)/((float)self.right + (float)self.wrong);
    NSLog(@"score: %i right, %i wrong ---- %.1f%%", self.right, self.wrong, percentage);
}

@end
