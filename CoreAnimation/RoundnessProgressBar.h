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

/**
 开始动画

 @param percent 0~100
 */
- (void)startAnimation:(CGFloat)percent;

@end

NS_ASSUME_NONNULL_END
