//
//  Score.m
//  spritybird
//
//  Created by Alexis Creuzot on 16/02/2014.
//  Copyright (c) 2014 Alexis Creuzot. All rights reserved.
//

#import "Score.h"

@implementation Score

+ (void)registerScore:(NSUInteger)score
{
    if(score > [Score bestScore]){
        [Score setBestScore:score];
    }
}

+ (void) setBestScore:(NSUInteger) bestScore
{
    [[NSUserDefaults standardUserDefaults] setInteger:bestScore forKey:kBestScoreKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSUInteger) bestScore
{
    return [[NSUserDefaults standardUserDefaults] integerForKey:kBestScoreKey];
}

@end
