//
//  Event.h
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Event : NSObject
@property (nonatomic) NSRange timespan;
@property (nonatomic) NSString *title;
@property (nonatomic) UIColor *color;
+ (Event *)eventWithTitle:(NSString *)title timespan:(NSRange)timespan color:(UIColor *)color;
@end
