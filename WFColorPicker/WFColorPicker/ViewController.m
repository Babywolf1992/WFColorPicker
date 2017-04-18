//
//  ViewController.m
//  WFColorPicker
//
//  Created by babywolf on 17/4/18.
//  Copyright © 2017年 babywolf. All rights reserved.
//

#import "ViewController.h"
#import "ILColorPickerDualExampleController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ILColorPickerDualExampleController *vc = [[ILColorPickerDualExampleController alloc] initWithNibName:@"ILColorPickerDualExampleController" bundle:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showViewController:vc sender:nil];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
