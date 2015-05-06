//
//  CalendarController.m
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import "CalendarController.h"
#import "Event.h"

@interface CalendarController()
@property (nonatomic) NSArray *events;
@end

@implementation CalendarController
- (instancetype)init
{
    if (self = [super init]) {
        // Mock a few events for the day
        self.events = @[
                        [Event eventWithTitle:@"Late snack" timespan:NSMakeRange(3600, 1800) color:[UIColor redColor]],
                        [Event eventWithTitle:@"Breakfast with Nancy" timespan:NSMakeRange(23400, 3600) color:[UIColor blueColor]],
                        [Event eventWithTitle:@"Shopping for a much needed new pair of shoes" timespan:NSMakeRange(32400, 10800) color:[UIColor redColor]],
                        [Event eventWithTitle:@"Meeting!" timespan:NSMakeRange(52200, 7200) color:[UIColor orangeColor]],
                        [Event eventWithTitle:@"Beer with Matt" timespan:NSMakeRange(75600, 9000) color:[UIColor blueColor]]
                        ];
        
    }
    return self;
}

- (NSInteger)numberOfEvents
{
    return self.events.count;
}

- (Event *)eventAtIndex:(NSInteger)index
{
    return self.events[index];
}

@end
