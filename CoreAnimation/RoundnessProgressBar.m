//
//  DrawView.m
//  CoreAnimation
//
//  Created by 梦醒 on 2019/8/21.
//  Copyright © 2019 Patrick. All rights reserved.
//

#import "RoundnessProgressBar.h"
@interface RoundnessProgressBar ()
@property (nonatomic , strong) NSMutableArray *layerArr;
@end
@implementation RoundnessProgressBar
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{

    CGFloat angle = M_PI/30;
    CGFloat startAngle = M_PI*3/2;
    for (NSInteger index=0; index<60; index=index+2) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path addArcWithCenter:CGPointMake(100, 100) radius:90 startAngle:startAngle+index*angle endAngle:startAngle+(index+1)*angle clockwise:YES];
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.strokeColor = [UIColor lightGrayColor].CGColor;
        layer.lineWidth = 15;
        layer.path = path.CGPath;
        [self.layer addSublayer:layer];
    }
    
}
- (void)startAnimation:(CGFloat)percent
{
    for (CAShapeLayer *layer in self.layerArr) {
        [layer removeAllAnimations];
        [layer removeFromSuperlayer];
    }
    CGFloat currentPercent = (percent*3)/5;
    CGFloat angle = M_PI/30;
    CGFloat startAngle = M_PI*3/2;
    for (NSInteger index=0; index<currentPercent; index=index+2) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path addArcWithCenter:CGPointMake(100, 100) radius:90 startAngle:startAngle+index*angle endAngle:startAngle+(index+1)*angle clockwise:YES];
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.backgroundColor = [UIColor whiteColor].CGColor;
        layer.fillColor = [UIColor clearColor].CGColor;
        layer.strokeColor = [UIColor cyanColor].CGColor;
        layer.lineWidth = 15;
        layer.path = path.CGPath;
        layer.opacity = 0.0;
        [self.layerArr addObject:layer];
        [self.layer addSublayer:layer];
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
        animation.duration = 0.2;
        animation.fromValue = @(0);
        animation.toValue = @(1);
        animation.removedOnCompletion = NO;
        
        animation.fillMode = kCAFillModeForwards;
        animation.beginTime = CACurrentMediaTime() + 0.05*index;
        [layer addAnimation:animation forKey:@"opacityAnimation"];
    }
}
- (NSMutableArray *)layerArr
{
    return _layerArr = _layerArr?:[NSMutableArray new];
}
@end
