//
//  DrawView.h
//  CoreAnimation
//
//  Created by 梦醒 on 2019/8/21.
//  Copyright © 2019 Patrick. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RoundnessProgressBar : UIView

//线条宽度 默认15
@property (nonatomic , assign) NSInteger lineWidth;
//刻度数，格子数量 默认30
@property (nonatomic , assign) NSInteger dialNumber;
//每一格动画间隔 默认0.05s
@property (nonatomic , assign) CGFloat   timeInterval;
//进度条背景色，默认浅灰
@property (nonatomic , strong) UIColor *backRoundnessColor;
//进度条颜色， 默认cyanColor
@property (nonatomic , strong) UIColor *progressRoundnessColor;






/**
 开始动画

 @param percent 0~100
 */
- (void)startAnimation:(CGFloat)percent;

@end

NS_ASSUME_NONNULL_END
