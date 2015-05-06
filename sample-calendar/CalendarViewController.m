//
//  CalendarViewController.m
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import "CalendarViewController.h"
#import "CalendarController.h"
#import "Event.h"
#import "CalendarViewLayout.h"
#import "HourReusableView.h"
#import "EventViewCell.h"


@interface CalendarViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CalendarViewLayoutDelegate>
@property (nonatomic) CalendarController *calendarController;
@property (nonatomic) UICollectionView *collectionView;
@end

@implementation CalendarViewController

- (instancetype)init
{
    if (self = [super init]) {
        self.calendarController = [CalendarController new];
    }
    return self;
}

- (void)loadView
{
    CalendarViewLayout *layout = [CalendarViewLayout new];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.view = self.collectionView;
    
    [self.collectionView registerClass:[EventViewCell class] forCellWithReuseIdentifier:@"event"];
    [self.collectionView registerClass:[HourReusableView class] forSupplementaryViewOfKind:@"hour" withReuseIdentifier:@"hour"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.calendarController.numberOfEvents;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    EventViewCell *view = [collectionView dequeueReusableCellWithReuseIdentifier:@"event" forIndexPath:indexPath];
    view.event = [self.calendarController eventAtIndex:indexPath.item];
    return view;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    HourReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"hour" forIndexPath:indexPath];
    [view setTime:[NSString stringWithFormat:@"%ldH", (long)indexPath.item]];
    return view;
}

- (NSRange)calendarViewLayout:(CalendarViewLayout *)layout timespanForCellAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.calendarController eventAtIndex:indexPath.item].timespan;
}

@end
