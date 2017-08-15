//
//  WaterWaveView.h
//  WaterWaveView
//
//  Created by moxiaohao on 2017/8/14.
//  Copyright © 2017年 mo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WaterWaveView : UIView

// 波动速度
@property (nonatomic,assign) CGFloat speed;
// 水波的高度
@property (nonatomic, assign) CGFloat waterWaveHeight;
// 水波颜色
@property (nonatomic, strong) UIColor *waterWaveColor;
//角速度
@property (assign, nonatomic) CGFloat angularSpeed;

// 添加视图
+ (instancetype)addToView:(UIView *)view withFrame:(CGRect)frame;

//显示
- (void)show;

@end
