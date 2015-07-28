//
//  customView.m
//  根据比例绘制饼图
//
//  Created by 黄少华 on 15/7/28.
//  Copyright (c) 2015年 黄少华. All rights reserved.
//

#import "customView.h"

@implementation customView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //绘制扇形图,根据value值改变弧度
    
    CGContextAddArc(context, rect.origin.x + rect.size.width * 0.5, rect.origin.y + rect.size.height * 0.5,rect.size.width * 0.5, -M_PI_2, (M_PI * 2) * self.value - M_PI_2, 0);
    CGContextAddLineToPoint(context, rect.origin.x + rect.size.width * 0.5,rect.origin.y + rect.size.height * 0.5);
    
    [[UIColor blueColor] setFill];
    
    CGContextFillPath(context);
    
}

- (void)setValue:(CGFloat)value
{
    _value = value;
    
    
    //此方法会重新调用drawrect绘图
    [self setNeedsDisplay];
}




@end
