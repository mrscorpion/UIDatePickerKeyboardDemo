//
//  ViewController.m
//  UIDatePickerKeyboardDemo
//
//  Created by mr.scorpion on 16/2/14.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+DatePicker.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation ViewController
#pragma mark - Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textField.datePickerInput = YES;
}

#pragma mark - Responder
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
@end
