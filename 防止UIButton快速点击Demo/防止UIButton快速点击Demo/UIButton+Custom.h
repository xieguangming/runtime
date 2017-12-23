//
//  UIButton+Custom.h
//  防止UIButton快速点击Demo
//
//  Created by xgm on 2017/12/19.
//  Copyright © 2017年 www.auratech.hk. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * 防止按钮重复快速点击, 设置点击时间间隔custom_acceptEventInterval.
 */

@interface UIButton (Custom)

@property (nonatomic, assign) NSTimeInterval custom_acceptEventInterval;// 可以用这个给重复点击加间隔

@end
