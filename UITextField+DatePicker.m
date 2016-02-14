//
//  UITextField+DatePicker.m
//  UIDatePickerKeyboardDemo
//
//  Created by mr.scorpion on 16/2/14.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//  键盘输入（日期选择）

#import "UITextField+DatePicker.h"

@implementation UITextField (DatePicker)
/**
 *  初始化一个全局的DatePicker
 */
+ (UIDatePicker *)sharedDatePicker;
{
    static UIDatePicker *daterPicker = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        daterPicker = [[UIDatePicker alloc] init];
        daterPicker.datePickerMode = UIDatePickerModeDate;
    });
    return daterPicker;
}

#pragma mark - Setter and Getter
- (void)setDatePickerInput:(BOOL)datePickerInput
{
    if (datePickerInput)
    {
        self.inputView = [UITextField sharedDatePicker];
        [[UITextField sharedDatePicker] addTarget:self action:@selector(datePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
    } else {
        self.inputView = nil;
        [[UITextField sharedDatePicker] removeTarget:self action:@selector(datePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
}

- (BOOL)datePickerInput
{
    return [self.inputView isKindOfClass:[UIDatePicker class]];
}

#pragma mark - Action and Respond
/**
 *  设置text（此处须判断是否是 isFirstResponder）
 */
- (void)datePickerValueChanged:(UIDatePicker *)sender
{
    if (self.isFirstResponder)
    {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        self.text = [formatter stringFromDate:sender.date];
    }
}
@end
