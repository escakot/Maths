//
//  ScoreKeeper.h
//  Maths
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

- (void) readScore;

@end
