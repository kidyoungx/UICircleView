//
//  UICircleView.m
//  CinCer
//
//  Created by Kid Young on 12/18/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import "UICircleView.h"

@interface UICircleView ()

@property (nonatomic, assign) CGFloat radius;

@end

@implementation UICircleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configuration];
        [self initialization];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self configuration];
        [self initialization];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)dealloc
{
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark - Private Methods

- (void)initialization
{
    self.radius = (self.frame.size.width < self.frame.size.height ? self.frame.size.width : self.frame.size.height) / 2;
    self.layer.cornerRadius = self.radius;
    self.clipsToBounds = YES;
}

- (void)configuration
{
}

#pragma mark - hitTest
/*
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if ([super hitTest:point withEvent:event] == NO) {
        return nil;
    }
    if (self.userInteractionEnabled == NO || self.alpha <= 0.01 || self.hidden == YES) {
        return nil;
    }
    if ([self pointInside:point withEvent:event] == NO) {
        return nil;
    }
    for (UIView *subview in self.subviews) {
        CGPoint subPoint = [self convertPoint:point toView:subview];
        UIView *nextView = [subview hitTest:subPoint withEvent:event];
        if (nextView) {
            return nextView;
        }
    }
    CGFloat distance = sqrtf((point.x - self.center.x) * (point.x - self.center.x) + (point.y - self.center.y) * (point.y - self.center.y));
    if (distance < self.radius) {
        return self;
    } else {
        return nil;
    }
    return nil;
}
//*/
#pragma mark - pointInside
//*
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    BOOL superPointInside = [super pointInside:point withEvent:event];
    BOOL pointInside = [[UIBezierPath bezierPathWithArcCenter:CGPointMake(self.radius, self.radius) radius:self.radius startAngle:0 endAngle:M_PI * 2 clockwise:1] containsPoint:point];
    return superPointInside && pointInside;
}
//*/

@end
