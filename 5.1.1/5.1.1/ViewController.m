//
//  ViewController.m
//  5.1.1
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(copy) void (^blockProperty) (void); //无参数、无返回值
@property(copy,nonatomic) void (^blockPropertyWithInput) (int); //有参数、无返回值
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //blockProperty：给block赋值，即指定一段代码
    self.blockProperty = ^{
        NSLog(@"blockProperty被调用!");
    };
    //调用/执行block中的代码
    self.blockProperty();
    
    //blockPropertyWithInput：给block赋值，即指定一段代码
    self.blockPropertyWithInput = ^(int i){
        NSLog(@"blockPropertyWithInput被调用! 输入的参数值是 %d", i);
    };
    //调用/执行block中的代码
    self.blockPropertyWithInput(150);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
