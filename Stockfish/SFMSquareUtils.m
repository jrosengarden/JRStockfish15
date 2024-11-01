//
//  SFMSquareUtils.m
//  Stockfish
//
//  Created by Daylen Yang on 12/25/14.
//  Copyright (c) 2014 Daylen Yang. All rights reserved.
//

#import "SFMSquareUtils.h"

@implementation SFMSquareUtils

// Mods by **JR** on 12/16/23: Added cast to uint32_t below (x3)

+ (NSString *)description:(SFMSquare)sq {
    int letter = sq % 8;
    int number = (uint32_t)sq / 8;                                              // **JR**
    return [NSString stringWithFormat:@"%c%d", 65 + letter, number + 1];
}

+ (double)distanceFrom:(SFMSquare)from to:(SFMSquare)to {
    int x1 = from % 8;
    int x2 = to % 8;
    int y1 = (uint32_t)from / 8;                                                // **JR**
    int y2 = (uint32_t)to / 8;                                                  // **JR**
    
    int dx = x1 - x2;
    int dy = y1 - y2;
    
    return sqrt(pow(dx, 2) + pow(dy, 2));
}

@end
