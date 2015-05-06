//
//  EventViewCell.m
//  sample-calendar
//
//  Created by Simon de Carufel on 2015-05-05.
//  Copyright (c) 2015 Simon de Carufel. All rights reserved.
//

#import "EventViewCell.h"
#import "Event.h"

@interface EventViewCell()
@property (nonatomic) UIView *leftBorderView;
@property (nonatomic) UILabel *label;
@end

@implementation EventViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.leftBorderView = [UIView new];
        [self.contentView addSubview:self.leftBorderView];
        
        self.label = [UILabel new];
        self.label.font = [UIFont boldSystemFontOfSize:10];
        self.label.numberOfLines = 0;
        self.label.lineBreakMode = NSLineBreakByWordWrapping;
        [self.contentView addSubview:self.label];
    }
    return self;
}
- (void)setEvent:(Event *)event
{
    _event = event;
    self.layer.borderColor = event.color.CGColor;
    self.backgroundColor = [event.color colorWithAlphaComponent:0.2f];
    self.label.text = event.title;
    self.label.textColor = event.color;
    self.leftBorderView.backgroundColor = event.color;
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.leftBorderView.frame = CGRectMake(0, 0, 4, self.bounds.size.height);
    CGSize labelSize = [self.label sizeThatFits:CGSizeMake(self.bounds.size.width - 10.0f, MAXFLOAT)];
    self.label.frame = CGRectMake(8, 8, labelSize.width, labelSize.height);
}

@end
