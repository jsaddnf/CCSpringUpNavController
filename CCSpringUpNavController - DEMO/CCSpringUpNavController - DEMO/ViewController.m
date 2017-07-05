//
//  ViewController.m
//  CCSpringUpNavController - DEMO
//
//  Created by Halo on 2017/7/5.
//  Copyright © 2017年 Choice. All rights reserved.
//

#import "ViewController.h"
#import "CCSpringUpNavController.h"
#import "ShowUpViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake((self.view.frame.size.width-280)/2, (self.view.frame.size.height-40)/2, 280, 40);
    button.clipsToBounds = YES;
    button.layer.cornerRadius = 2;
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor orangeColor].CGColor;
    [button setTitle:@"Go" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void) buttonAction{
    
    
    CCSpringUpNavController *ccnav = [[CCSpringUpNavController alloc]initWithRootViewController:[[ShowUpViewController alloc]init]];
    //should set CCSpringUpNavController.view.frame
    ccnav.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 400);
    // set optionalValues
//    ccnav.tapDismissEnabled = YES;
//    ccnav.annimationDuration = 0.35f;
//    ccnav.backgroundShadeColor = [UIColor blackColor];
//    ccnav.scaleTransform = CGAffineTransformMakeScale(.94, .94);
//    ccnav.springDamping = 0.88;
//    ccnav.springVelocity = 14;
//    ccnav.backgroundShadeAlpha = 0.4;
    
    [self presentViewController:ccnav animated:YES completion:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
