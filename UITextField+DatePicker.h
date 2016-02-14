//
//  UITextField+DatePicker.h
//  UIDatePickerKeyboardDemo
//
//  Created by mr.scorpion on 16/2/14.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//  键盘输入（日期选择）

#import <UIKit/UIKit.h>

@interface UITextField (DatePicker)
// 输入日期
@property (nonatomic, assign) BOOL datePickerInput;

+ (UIDatePicker *)sharedDatePicker;
@end
