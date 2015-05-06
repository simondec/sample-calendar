//
//  CalendarController.h
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Event;

@interface CalendarController : NSObject
@property (nonatomic, readonly) NSInteger numberOfEvents;
- (Event *)eventAtIndex:(NSInteger)index;
@end
