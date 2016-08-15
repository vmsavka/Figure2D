//
//  Rectangle.h
//  Figure2D
//
//  Created by Vasyl.Savka on 8/15/16.
//  Copyright © 2016 Vasyl.Savka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseFigure2D.h"

@interface Rectangle : BaseFigure2D

@property (assign, nonatomic) double width;
@property (assign, nonatomic) double height;

- (instancetype)initWithWidth:(double)width andHeight:(double)height;
- (BOOL)isValidFigure:(void (^)(NSError *error))completion;

@end
