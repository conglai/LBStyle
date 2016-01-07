//
//  UILabel+LBStyle.m
//  withMe
//
//  Created by lorabit on 16/1/7.
//  Copyright © 2016年 从来网络. All rights reserved.
//

#import "UILabel+LBStyle.h"
#import "NSString+LBStyle.h"

@implementation UILabel (LBStyle)


-(UIColor *)lb_tintColor{
  return objc_getAssociatedObject(self, _cmd);
}

-(void)setLb_tintColor:(UIColor *)lb_tintColor{
  objc_setAssociatedObject(self, @selector(lb_tintColor), lb_tintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+(void)load{
  swizzled_Method([UILabel class], @selector(setTintColor:), @selector(setLbTintColor:));
}

-(void)setLbTintColor:(UIColor *)tintColor{
  if(self.lb_tintColor){
    [self setLbTintColor:self.lb_tintColor];
    return;
  }
  if(self.text.lb_tintColor){
    [self setLbTintColor:self.text.lb_tintColor];
    self.lb_tintColor = self.text.lb_tintColor;
    return;
  }
  [self setLbTintColor:tintColor];
}

@end
