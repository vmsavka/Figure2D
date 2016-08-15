//
//  StaticFactoryOfFigures.m
//  Figure2D
//
//  Created by Vasyl.Savka on 8/15/16.
//  Copyright © 2016 Vasyl.Savka. All rights reserved.
//

#import "StaticFactoryOfFigures.h"
#import "Rectangle.h"

@implementation StaticFactoryOfFigures

+ (BaseFigure2D *) create: (FigureTypes) type {
    
    switch (type) {
        case fPoint:
            return [[BaseFigure2D alloc] init];
            break;
        case fLine:
            return [[BaseFigure2D alloc] init];
            break;
        case fTriangle:
            return [[BaseFigure2D alloc] init];
            break;
        case fRectangle:
            return [[Rectangle alloc] init];
    }
}

@end
