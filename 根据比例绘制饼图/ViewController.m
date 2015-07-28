//
//  ViewController.m
//  根据比例绘制饼图
//
//  Created by 黄少华 on 15/7/28.
//  Copyright (c) 2015年 黄少华. All rights reserved.
//

#import "ViewController.h"
#import "customView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet customView *myView;
@property (weak, nonatomic) IBOutlet UISlider *customSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)valueChange:(UISlider *)sender {
    self.myView.value = sender.value;
}

@end
