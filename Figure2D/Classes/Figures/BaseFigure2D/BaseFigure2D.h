//
//  BaseFigure2D.h
//  Figure2D
//
//  Created by Vasyl.Savka on 8/15/16.
//  Copyright © 2016 Vasyl.Savka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreFoundation/CoreFoundation.h"
#import "AppKit/AppKit.h"

typedef enum figureTypes {
    fPoint = 0,
    fLine,
    fRectangle,
    fTriangle
} FigureTypes;

typedef void (^fWrongFigureBlock)		(NSError *error);


@interface BaseFigure2D : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger edgesCount;
@property (nonatomic, strong) NSColor *color;

//we will declarate this property later
@property (nonatomic, assign) double square;
- (double) perimetr;
- (BOOL)isValidFigure:(void (^)(NSError *error))completion;
- (void)printDescription;
//Identical declarating
//- (BOOL)isValidFigure:fWrongFigureBlock;

@end
