//
//  EventViewCell.h
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Event;

@interface EventViewCell : UICollectionViewCell
@property (nonatomic) Event *event;
@end
