//
//  Rectangle.m
//  Figure2D
//
//  Created by Vasyl.Savka on 8/15/16.
//  Copyright © 2016 Vasyl.Savka. All rights reserved.
//

#import "Rectangle.h"
#include <stdio.h>

@implementation Rectangle

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.width = 0;
        self.height = 0;
        self.name = @"Rectangle";
    }
    
    return self;
}

- (instancetype)initWithWidth:(double)width andHeight:(double)height {
    self = [super init];
    
    if (self) {
        self.width = width;
        self.height = height;
        self.name = @"Rectangle";
    }
    
    return self;
}

- (double) perimetr {
    return (self.width + self.height) * 2;
}

- (BOOL)isValidFigure:(void (^)(NSError *error))completion {
    if (self.width <= 0 || self.height <= 0) {
        NSError *error = [NSError errorWithDomain:@"Wrong values range."
                                             code:-350
                                         userInfo:@{NSLocalizedDescriptionKey : @"Width or height cann't be negative!"}];
        
        completion(error);
        return NO;
    }
    else {
        return YES;
    }
}

- (void)printDescription {
    printf("Figure %s \n Width = %f Height = %f \n", self.name.UTF8String, self.width, self.height);
}

@end
