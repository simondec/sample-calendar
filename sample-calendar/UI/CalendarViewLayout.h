//
//  CalendarViewLayout.h
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalendarViewLayout : UICollectionViewLayout

@end

@protocol CalendarViewLayoutDelegate <NSObject>
- (NSRange)calendarViewLayout:(CalendarViewLayout *)layout timespanForCellAtIndexPath:(NSIndexPath *)indexPath;

@end
