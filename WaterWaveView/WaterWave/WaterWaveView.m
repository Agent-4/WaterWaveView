//
//  WaterWaveView.m
//  WaterWaveView
//
//  Created by moxiaohao on 2017/8/14.
//  Copyright © 2017年 mo. All rights reserved.
//

#import "WaterWaveView.h"

@interface WaterWaveView()

// 绘制层
@property (nonatomic, strong) CAShapeLayer *shapeLayer;
// 重绘定时器
@property (nonatomic, strong) CADisplayLink *displayLink;

@property (assign, nonatomic) CGFloat offsetX;
@property (nonatomic, assign) CGFloat zoomY;
@property (nonatomic, assign) BOOL flag;

@end

@implementation WaterWaveView

+ (instancetype)addToView:(UIView *)view withFrame:(CGRect)frame {
    WaterWaveView *waveView = [[self alloc] initWithFrame:frame];
    [view addSubview:waveView];
    return waveView;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self basicSetup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if ([super initWithCoder:aDecoder]) {
        [self basicSetup];
    }
    return self;
}

- (void)basicSetup {
    _speed = 8.f;
    _waterWaveHeight = 10;
    _angularSpeed = 2.f;
    _waterWaveColor = [UIColor colorWithRed:86/255.0f green:202/255.0f blue:139/255.0f alpha:1];
    _flag = NO;
}

- (void)show {
    _zoomY = _waterWaveHeight;
    
    _shapeLayer = [CAShapeLayer layer];
    _shapeLayer.path = [self waterWavePath]; // 绘制的路径
    _shapeLayer.fillColor = _waterWaveColor.CGColor;
    _shapeLayer.lineWidth = 0.01;
    _shapeLayer.strokeColor = _waterWaveColor.CGColor;
    [self.layer addSublayer:_shapeLayer];
    
    [self startDisplayLink];
}

- (CGPathRef)waterWavePath {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, self.frame.size.height/2)];
    
    self.offsetX -= (_speed * self.superview.frame.size.width / 320);
    CGFloat y = 0.0f;
    
    for (float x = 0; x <= self.frame.size.width; x ++) {
        y= _waterWaveHeight * sin(0.01 * (self.angularSpeed * x + self.offsetX));
        [path addLineToPoint:CGPointMake(x, y)];
    }
    
    [path addLineToPoint:CGPointMake(self.frame.size.width, self.frame.size.height)];
    [path addLineToPoint:CGPointMake(0, self.frame.size.height)];
    [path closePath];
    
    return [path CGPath];
}

- (void)startDisplayLink {
    self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(handleDisplayLink:)];
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
}

- (void)handleDisplayLink:(CADisplayLink *)displayLink {
    if (!_flag) {
        _waterWaveHeight += 0.02;
        if (_waterWaveHeight >= _zoomY) {
            self.flag = YES;
        }
    }else {
        _waterWaveHeight -= 0.02;
        if (_waterWaveHeight <= _zoomY - 6) {
            _flag = NO;
        }
    }
    _shapeLayer.path = [self waterWavePath];
}

- (void)dealloc {
    [_displayLink invalidate];
    _displayLink = nil;
}


@end


