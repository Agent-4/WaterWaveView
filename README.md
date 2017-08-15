#WaterWaveView

水波浪效果。

##### 效果图：

![preview.gif](https://github.com/Agent-4/blob/master/preview.gif)

##### 用法：

```
// example

WaterWaveView *waterWaveView = [WaterWaveView addToView:self.view withFrame:self.view.frame];
// 可选参数
waterWaveView.speed = 4.0;  // 速度
waterWaveView.angularSpeed = 2.0;  // 角速度
waterWaveView.waterWaveHeight = 15.0;  // 高度
waterWaveView.waterWaveColor = [UIColor greenColor];  // 颜色
    
[waterWaveView show];

```

