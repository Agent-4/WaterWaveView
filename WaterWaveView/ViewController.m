//
//  ViewController.m
//  WaterWaveView
//
//  Created by moxiaohao on 2017/8/14.
//  Copyright © 2017年 mo. All rights reserved.
//

#import "ViewController.h"
#import "WaterWaveView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    WaterWaveView *waterWaveView0 = [WaterWaveView addToView:self.view withFrame:CGRectMake(0, 270, self.view.frame.size.width, 30)];
//    waterWaveView0.speed = 1.0;
//    waterWaveView0.waterWaveHeight = 10;
//    waterWaveView0.angularSpeed = 3.0;
//    waterWaveView0.waterWaveColor = [UIColor colorWithRed:86/255.0 green:202/255.0 blue:139/255.0 alpha:0.6];
//    [waterWaveView0 show];
//    
//    WaterWaveView *waterWaveView1 = [WaterWaveView addToView:self.view withFrame:CGRectMake(0, 268, self.view.frame.size.width, self.view.frame.size.height - 30)];
//    waterWaveView1.speed = 2.0;
//    waterWaveView1.waterWaveHeight = 11.0;
//    waterWaveView1.angularSpeed = 2.5;
//    waterWaveView1.waterWaveColor = [UIColor colorWithRed:86/255.0 green:202/255.0 blue:139/255.0 alpha:0.7];
//    [waterWaveView1 show];
    
    WaterWaveView *waterWaveView = [WaterWaveView addToView:self.view withFrame:CGRectMake(0, 265, self.view.frame.size.width, self.view.frame.size.height - 265)];
    // 可选参数
    waterWaveView.speed = 4.0;
    waterWaveView.angularSpeed = 2.0;
    waterWaveView.waterWaveHeight = 15.0;
    waterWaveView.waterWaveColor = [UIColor colorWithRed:86/255.0 green:202/255.0 blue:139/255.0 alpha:1];
    
    [waterWaveView show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
