//
//  NSString+LBStyle.m
//  LBStyle
//
//  Created by lorabit on 16/1/7.
//  Copyright © 2016 WithMe. All rights reserved.
//

#import "NSString+LBStyle.h"

@implementation NSString (LBStyle)

-(UIColor *)lb_tintColor{
  return objc_getAssociatedObject(self, _cmd);
}

-(void)setLb_tintColor:(UIColor *)lb_tintColor{
  objc_setAssociatedObject(self, @selector(lb_tintColor), lb_tintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
