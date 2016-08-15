//
//  StaticFactoryOfFigures.h
//  Figure2D
//
//  Created by Vasyl.Savka on 8/15/16.
//  Copyright © 2016 Vasyl.Savka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseFigure2D.h"

//Pattern Factory for creating groups of objects

@interface StaticFactoryOfFigures : NSObject

+ (BaseFigure2D *) create: (FigureTypes) type;

@end
