//
//  Event.m
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import "Event.h"

@implementation Event
+ (Event *)eventWithTitle:(NSString *)title timespan:(NSRange)timespan color:(UIColor *)color
{
    Event *event = [Event new];
    event.title = title;
    event.timespan = timespan;
    event.color = color;
    return event;
}
@end
