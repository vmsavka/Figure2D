//
//  BaseFigure2D.m
//  Figure2D
//
//  Created by Vasyl.Savka on 8/15/16.
//  Copyright © 2016 Vasyl.Savka. All rights reserved.
//

#import "BaseFigure2D.h"

@implementation BaseFigure2D

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.name = @"BaseFigure2D";
    }
    
    return self;
}

- (double) perimetr {
    return -1;
}

- (BOOL)isValidFigure:(void (^)(NSError *error))completion {
    return YES;
}

- (void)printDescription {
    printf("Figure %s \n", self.name.UTF8String);
}
@end
