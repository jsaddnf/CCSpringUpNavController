//
//  CCSpringUpNavController.m
//  CCSpringUpNavController - DEMO
//
//  Created by Halo on 2017/7/5.
//  Copyright © 2017年 Choice. All rights reserved.
//

#import "CCSpringUpNavController.h"

@interface CCSpringUpNavController ()

@end

@implementation CCSpringUpNavController

#pragma mark - Life

- (void)loadView{
    [super loadView];
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.view.clipsToBounds = YES;
    self.transitioningDelegate = self;
    self.modalPresentationStyle = UIModalPresentationCustom;
    [self defaults];
}

-(void)defaults{
    _tapDismissEnabled = YES;
    _annimationDuration = 0.35f;
    _backgroundShadeColor = [UIColor blackColor];
    _scaleTransform = CGAffineTransformMakeScale(.94, .94);
    _springDamping = 0.88;
    _springVelocity = 14;
    _backgroundShadeAlpha = 0.4;
}

#pragma mark - Actions

- (void)dismissPopUpViewController{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitioningDelegate Methods

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source {
    return [self transitionPresenting:YES];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [self transitionPresenting:NO];
}

- (CCSpringUpTransition *)transitionPresenting:(BOOL)presenting{
    CCSpringUpTransition *animator = [CCSpringUpTransition new];
    animator.presenting = presenting;
    animator.tapDismissEnabled = _tapDismissEnabled;
    animator.annimationDuration = _annimationDuration;
    animator.backgroundShadeColor = _backgroundShadeColor;
    animator.scaleTransform = _scaleTransform;
    animator.springDamping = _springDamping;
    animator.springVelocity = _springVelocity;
    animator.backgroundShadeAlpha = _backgroundShadeAlpha;
    return animator;
}

@end
