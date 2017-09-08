//
//  CDTwoVC.m
//  CustomTabbar
//
//  Created by Dong Chen on 2017/9/1.
//  Copyright © 2017年 Dong Chen. All rights reserved.
//

#import "CDTwoVC.h"

@interface CDTwoVC ()<CAAnimationDelegate>

@end

@implementation CDTwoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(60, 100, 40, 40);
    btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];
    

    
    CAKeyframeAnimation * animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.duration = 1.0;
    animation.delegate = self;
    animation.values = @[
                         [NSValue valueWithCGPoint:CGPointMake(0, 32)],
                         [NSValue valueWithCGPoint:CGPointMake(0, 268)],
                         [NSValue valueWithCGPoint:CGPointMake(0, 140)],
                         [NSValue valueWithCGPoint:CGPointMake(0, 268)],
                         [NSValue valueWithCGPoint:CGPointMake(0, 220)],
                         [NSValue valueWithCGPoint:CGPointMake(0, 268)],
                         [NSValue valueWithCGPoint:CGPointMake(0, 250)],
                         [NSValue valueWithCGPoint:CGPointMake(0, 268)]
                         ];
    
    animation.timingFunctions = @[
                                  [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseIn],
                                  [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseOut],
                                  [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseIn],
                                  [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseOut],
                                  [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseIn],
                                  [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseOut],
                                  [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseIn]
                                  ];
    
    animation.keyTimes = @[@0.0, @0.3, @0.5, @0.7, @0.8, @0.9, @0.95, @1.0];  //时间限制
    //apply animation
    btn.layer.position = CGPointMake(0, 268);
    [btn.layer addAnimation:animation forKey:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
