//
//  ILColorPickerExampleViewController.m
//  ILColorPickerExample
//
//  Created by Jon Gilkison on 9/1/11.
//  Copyright 2011 Interfacelab LLC. All rights reserved.
//

#import "ILColorPickerDualExampleController.h"

@implementation ILColorPickerDualExampleController

#pragma mark - View lifecycle

- (instancetype)init {
    if (self = [super init]) {
        huePicker = [[ILHuePickerView alloc] init];
        colorPicker = [[ILSaturationBrightnessPickerView alloc] init];
        colorChip = [[UIView alloc] init];
        [self.view addSubview:huePicker];
        [self.view addSubview:colorPicker];
        [self.view addSubview:colorChip];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Build a random color to show off setting the color on the pickers
    self.view.backgroundColor = [UIColor clearColor];
    UIColor *c=[UIColor colorWithRed:(arc4random()%100)/100.0f 
                               green:(arc4random()%100)/100.0f
                                blue:(arc4random()%100)/100.0f
                               alpha:1.0];
    
    colorChip.backgroundColor=c;
    colorPicker.color=c;
    huePicker.color=c;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    colorPicker.frame = CGRectMake(10, 60, self.view.frame.size.width-20, self.view.frame.size.width-20);
    huePicker.frame = CGRectMake(CGRectGetMinX(colorPicker.frame), CGRectGetMaxY(colorPicker.frame)+10, CGRectGetWidth(colorPicker.frame), 50);
    colorChip.frame = CGRectMake(CGRectGetMinX(huePicker.frame), CGRectGetMaxY(huePicker.frame)+10, CGRectGetWidth(huePicker.frame), 30);
}

#pragma mark - ILSaturationBrightnessPickerDelegate implementation

-(void)colorPicked:(UIColor *)newColor forPicker:(ILSaturationBrightnessPickerView *)picker
{
    colorChip.backgroundColor=newColor;
}

@end
