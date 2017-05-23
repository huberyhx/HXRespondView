//
//  HXView.m
//  HXRespondBView
//
//  Created by hubery on 2017/5/19.
//  Copyright © 2017年 hubery. All rights reserved.
//

#import "HXView.h"

@interface HXView()
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;

@end

@implementation HXView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //当前点坐标系是控制器的view
    //转换成btn1的坐标系
    CGPoint btnP = [self convertPoint:point toView:self.btn1];
    if ([self.btn1 pointInside:btnP withEvent:event]) {//判断点击点是否在btn1上
        //如果点击点在btn1上 那么就让btn1来处理事件
        return self.btn1;
    }else{
        //如果不在btn1上 就按照系统默认做法  寻找合适的view来处理事件
        return [super hitTest:point withEvent:event];
    }
}

//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
//    return
//}

@end
