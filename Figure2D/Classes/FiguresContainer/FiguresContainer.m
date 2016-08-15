//
//  FiguresContainer.m
//  Figure2D
//
//  Created by Vasyl.Savka on 8/15/16.
//  Copyright © 2016 Vasyl.Savka. All rights reserved.
//

#import "FiguresContainer.h"
#import "StaticFactoryOfFigures.h"
#import "Rectangle.h"

@implementation FiguresContainer

+ (void)createSomeFigures {
    NSMutableArray<BaseFigure2D *> *containerFigures;
    
    containerFigures = [[NSMutableArray alloc] init];
    
    //Creating objects by factory
    [containerFigures addObject:[StaticFactoryOfFigures create:fLine]];
    [containerFigures addObject:[StaticFactoryOfFigures create:fRectangle]];
    
    //Creating objects by direct calling for constructors
    [containerFigures addObject:[[Rectangle alloc] initWithWidth:10 andHeight:25]];
    [containerFigures addObject:[[Rectangle alloc] initWithWidth:7 andHeight:11]];
    
    [self outputFigures:containerFigures];
}

+ (void)outputFigures:(NSMutableArray<BaseFigure2D *> *)container {
    for (BaseFigure2D *figure in container) {
        BOOL validFigure;
        [figure printDescription];
        
        validFigure = [figure isValidFigure:^(NSError *error) {
            if (error) {
                printf("Can not calculate square for %s \n\n", figure.name.UTF8String);
            }
        }];
        if (validFigure) {
            printf("Perimetr of '%s' = <%f> \n\n", figure.name.UTF8String, [figure perimetr]);
        }
    }
    getchar();
    //Я написав приведення NSstring до UTF8String, бо метод printf - сішний, і будем виводиди в консоль бібліотекою з C
    //Якщо хочеш, то виводь все в NSLog();
}
@end
