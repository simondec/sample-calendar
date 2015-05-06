//
//  HourReusableView.m
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import "HourReusableView.h"

static const CGFloat HourReusableViewTimeLineTopPadding = 6.0f;

@interface HourReusableView()
@property (nonatomic) UILabel *timeLabel;
@property (nonatomic) UIView *timeLineView;
@end

@implementation HourReusableView
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.timeLabel = [UILabel new];
        self.timeLabel.font = [UIFont systemFontOfSize:10];
        self.timeLabel.textColor = [UIColor blackColor];
        self.timeLabel.textAlignment = NSTextAlignmentRight;
        [self addSubview:self.timeLabel];
        
        self.timeLineView = [UIView new];
        self.timeLineView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2f];
        [self addSubview:self.timeLineView];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGRect timeLabelFrame = self.timeLabel.frame;
    timeLabelFrame.origin.x = 2;
    timeLabelFrame.origin.y = 0;
    timeLabelFrame.size.width = 24;
    self.timeLabel.frame = timeLabelFrame;
    
    CGRect timeLineFrame = CGRectMake(CGRectGetMaxX(timeLabelFrame) + 5, HourReusableViewTimeLineTopPadding, self.bounds.size.width - CGRectGetMaxX(timeLabelFrame) - 10, 0.5f);
    self.timeLineView.frame = timeLineFrame;
}

- (void)setTime:(NSString *)time
{
    self.timeLabel.text = time;
    [self.timeLabel sizeToFit];
    [self setNeedsLayout];
}
@end
