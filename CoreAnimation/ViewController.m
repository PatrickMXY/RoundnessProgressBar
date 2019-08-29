//
//  ViewController.m
//  CoreAnimation
//
//  Created by 梦醒 on 2019/8/21.
//  Copyright © 2019 Patrick. All rights reserved.
//

#import "ViewController.h"
#import "RoundnessProgressBar.h"


@interface ViewController ()
@property (nonatomic , strong) RoundnessProgressBar *drawView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _drawView = [[RoundnessProgressBar alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:_drawView];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_drawView startAnimation:80];
}



@end
