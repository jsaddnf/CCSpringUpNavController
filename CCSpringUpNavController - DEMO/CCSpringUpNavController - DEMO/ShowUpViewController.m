//
//  ShowUpViewController.m
//  CCSpringUpNavController - DEMO
//
//  Created by Halo on 2017/7/5.
//  Copyright © 2017年 Choice. All rights reserved.
//

#import "ShowUpViewController.h"

@interface ShowUpViewController ()
@property (nonatomic,strong) UIDatePicker *picker;

@end

@implementation ShowUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Picking A Date";
    self.view.backgroundColor = [UIColor whiteColor];
    self.picker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 400)];
    [self.view addSubview:self.picker];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveAction)];
    
}
- (void) saveAction{
    NSLog(@"%@",self.picker.date);
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
